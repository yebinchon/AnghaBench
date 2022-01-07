; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_add_np.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_add_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_np = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_storage = type { i32 }

@np_lock = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NPF_IP_NETWORK = common dso_local global i32 0, align 4
@iscsi_handle_login_thread_timeout = common dso_local global i32 0, align 4
@iscsi_target_login_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"iscsi_np\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Unable to create kthread: iscsi_np\0A\00", align 1
@ISCSI_NP_THREAD_ACTIVE = common dso_local global i32 0, align 4
@g_np_list = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"CORE[0] - Added Network Portal: %pISpc on %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_np* @iscsit_add_np(%struct.sockaddr_storage* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_np*, align 8
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_np*, align 8
  %7 = alloca i32, align 4
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 @mutex_lock(i32* @np_lock)
  %9 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.iscsi_np* @iscsit_get_np(%struct.sockaddr_storage* %9, i32 %10)
  store %struct.iscsi_np* %11, %struct.iscsi_np** %6, align 8
  %12 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %13 = icmp ne %struct.iscsi_np* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = call i32 @mutex_unlock(i32* @np_lock)
  %16 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  store %struct.iscsi_np* %16, %struct.iscsi_np** %3, align 8
  br label %101

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.iscsi_np* @kzalloc(i32 48, i32 %18)
  store %struct.iscsi_np* %19, %struct.iscsi_np** %6, align 8
  %20 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %21 = icmp ne %struct.iscsi_np* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = call i32 @mutex_unlock(i32* @np_lock)
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.iscsi_np* @ERR_PTR(i32 %25)
  store %struct.iscsi_np* %26, %struct.iscsi_np** %3, align 8
  br label %101

27:                                               ; preds = %17
  %28 = load i32, i32* @NPF_IP_NETWORK, align 4
  %29 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %30 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %35 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %37 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %36, i32 0, i32 9
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %40 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %39, i32 0, i32 8
  %41 = call i32 @init_completion(i32* %40)
  %42 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %43 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %42, i32 0, i32 4
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %46 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %45, i32 0, i32 7
  %47 = load i32, i32* @iscsi_handle_login_thread_timeout, align 4
  %48 = call i32 @timer_setup(i32* %46, i32 %47, i32 0)
  %49 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %50 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %51 = call i32 @iscsi_target_setup_login_socket(%struct.iscsi_np* %49, %struct.sockaddr_storage* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %27
  %55 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %56 = call i32 @kfree(%struct.iscsi_np* %55)
  %57 = call i32 @mutex_unlock(i32* @np_lock)
  %58 = load i32, i32* %7, align 4
  %59 = call %struct.iscsi_np* @ERR_PTR(i32 %58)
  store %struct.iscsi_np* %59, %struct.iscsi_np** %3, align 8
  br label %101

60:                                               ; preds = %27
  %61 = load i32, i32* @iscsi_target_login_thread, align 4
  %62 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %63 = call i32 @kthread_run(i32 %61, %struct.iscsi_np* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %65 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 4
  %66 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %67 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @IS_ERR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %60
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %74 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @PTR_ERR(i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %78 = call i32 @kfree(%struct.iscsi_np* %77)
  %79 = call i32 @mutex_unlock(i32* @np_lock)
  %80 = load i32, i32* %7, align 4
  %81 = call %struct.iscsi_np* @ERR_PTR(i32 %80)
  store %struct.iscsi_np* %81, %struct.iscsi_np** %3, align 8
  br label %101

82:                                               ; preds = %60
  %83 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %84 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = load i32, i32* @ISCSI_NP_THREAD_ACTIVE, align 4
  %86 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %87 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 8
  %88 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %89 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %88, i32 0, i32 4
  %90 = call i32 @list_add_tail(i32* %89, i32* @g_np_list)
  %91 = call i32 @mutex_unlock(i32* @np_lock)
  %92 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %93 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %92, i32 0, i32 3
  %94 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %95 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32* %93, i32 %98)
  %100 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  store %struct.iscsi_np* %100, %struct.iscsi_np** %3, align 8
  br label %101

101:                                              ; preds = %82, %71, %54, %22, %14
  %102 = load %struct.iscsi_np*, %struct.iscsi_np** %3, align 8
  ret %struct.iscsi_np* %102
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.iscsi_np* @iscsit_get_np(%struct.sockaddr_storage*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.iscsi_np* @kzalloc(i32, i32) #1

declare dso_local %struct.iscsi_np* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @iscsi_target_setup_login_socket(%struct.iscsi_np*, %struct.sockaddr_storage*) #1

declare dso_local i32 @kfree(%struct.iscsi_np*) #1

declare dso_local i32 @kthread_run(i32, %struct.iscsi_np*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
