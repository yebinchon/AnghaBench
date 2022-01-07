; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_del_np.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_del_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_np = type { i32, %struct.TYPE_2__*, i32, i32, i32*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, {}* }

@ISCSI_NP_THREAD_SHUTDOWN = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@np_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"CORE[0] - Removed Network Portal: %pISpc on %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_del_np(%struct.iscsi_np* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_np*, align 8
  store %struct.iscsi_np* %0, %struct.iscsi_np** %3, align 8
  %4 = load %struct.iscsi_np*, %struct.iscsi_np** %3, align 8
  %5 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %4, i32 0, i32 5
  %6 = call i32 @spin_lock_bh(i32* %5)
  %7 = load %struct.iscsi_np*, %struct.iscsi_np** %3, align 8
  %8 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %7, i32 0, i32 7
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %8, align 8
  %11 = load %struct.iscsi_np*, %struct.iscsi_np** %3, align 8
  %12 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %11, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.iscsi_np*, %struct.iscsi_np** %3, align 8
  %17 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.iscsi_np*, %struct.iscsi_np** %3, align 8
  %19 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %18, i32 0, i32 5
  %20 = call i32 @spin_unlock_bh(i32* %19)
  store i32 0, i32* %2, align 4
  br label %72

21:                                               ; preds = %1
  %22 = load i32, i32* @ISCSI_NP_THREAD_SHUTDOWN, align 4
  %23 = load %struct.iscsi_np*, %struct.iscsi_np** %3, align 8
  %24 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.iscsi_np*, %struct.iscsi_np** %3, align 8
  %26 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %25, i32 0, i32 5
  %27 = call i32 @spin_unlock_bh(i32* %26)
  %28 = load %struct.iscsi_np*, %struct.iscsi_np** %3, align 8
  %29 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %21
  %33 = load i32, i32* @SIGINT, align 4
  %34 = load %struct.iscsi_np*, %struct.iscsi_np** %3, align 8
  %35 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @send_sig(i32 %33, i32* %36, i32 1)
  %38 = load %struct.iscsi_np*, %struct.iscsi_np** %3, align 8
  %39 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @kthread_stop(i32* %40)
  %42 = load %struct.iscsi_np*, %struct.iscsi_np** %3, align 8
  %43 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %42, i32 0, i32 4
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %32, %21
  %45 = load %struct.iscsi_np*, %struct.iscsi_np** %3, align 8
  %46 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = bitcast {}** %48 to i32 (%struct.iscsi_np*)**
  %50 = load i32 (%struct.iscsi_np*)*, i32 (%struct.iscsi_np*)** %49, align 8
  %51 = load %struct.iscsi_np*, %struct.iscsi_np** %3, align 8
  %52 = call i32 %50(%struct.iscsi_np* %51)
  %53 = call i32 @mutex_lock(i32* @np_lock)
  %54 = load %struct.iscsi_np*, %struct.iscsi_np** %3, align 8
  %55 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %54, i32 0, i32 3
  %56 = call i32 @list_del(i32* %55)
  %57 = call i32 @mutex_unlock(i32* @np_lock)
  %58 = load %struct.iscsi_np*, %struct.iscsi_np** %3, align 8
  %59 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %58, i32 0, i32 2
  %60 = load %struct.iscsi_np*, %struct.iscsi_np** %3, align 8
  %61 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32* %59, i32 %64)
  %66 = load %struct.iscsi_np*, %struct.iscsi_np** %3, align 8
  %67 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = call i32 @iscsit_put_transport(%struct.TYPE_2__* %68)
  %70 = load %struct.iscsi_np*, %struct.iscsi_np** %3, align 8
  %71 = call i32 @kfree(%struct.iscsi_np* %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %44, %15
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @send_sig(i32, i32*, i32) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32*, i32) #1

declare dso_local i32 @iscsit_put_transport(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.iscsi_np*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
