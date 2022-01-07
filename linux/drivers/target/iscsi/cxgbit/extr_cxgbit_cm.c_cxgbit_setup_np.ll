; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_cm.c_cxgbit_setup_np.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_cm.c_cxgbit_setup_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_np = type { %struct.cxgbit_np*, %struct.sockaddr_storage }
%struct.cxgbit_np = type { %struct.TYPE_4__, %struct.iscsi_np*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32*, %struct.sockaddr_storage, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_storage = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CSK_STATE_LISTEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgbit_setup_np(%struct.iscsi_np* %0, %struct.sockaddr_storage* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_np*, align 8
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca %struct.cxgbit_np*, align 8
  %7 = alloca i32, align 4
  store %struct.iscsi_np* %0, %struct.iscsi_np** %4, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %5, align 8
  %8 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %9 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AF_INET, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %15 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AF_INET6, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %92

22:                                               ; preds = %13, %2
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.cxgbit_np* @kzalloc(i32 64, i32 %23)
  store %struct.cxgbit_np* %24, %struct.cxgbit_np** %6, align 8
  %25 = load %struct.cxgbit_np*, %struct.cxgbit_np** %6, align 8
  %26 = icmp ne %struct.cxgbit_np* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %92

30:                                               ; preds = %22
  %31 = load %struct.cxgbit_np*, %struct.cxgbit_np** %6, align 8
  %32 = getelementptr inbounds %struct.cxgbit_np, %struct.cxgbit_np* %31, i32 0, i32 6
  %33 = call i32 @init_waitqueue_head(i32* %32)
  %34 = load %struct.cxgbit_np*, %struct.cxgbit_np** %6, align 8
  %35 = getelementptr inbounds %struct.cxgbit_np, %struct.cxgbit_np* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @init_completion(i32* %37)
  %39 = load %struct.cxgbit_np*, %struct.cxgbit_np** %6, align 8
  %40 = getelementptr inbounds %struct.cxgbit_np, %struct.cxgbit_np* %39, i32 0, i32 5
  %41 = call i32 @init_completion(i32* %40)
  %42 = load %struct.cxgbit_np*, %struct.cxgbit_np** %6, align 8
  %43 = getelementptr inbounds %struct.cxgbit_np, %struct.cxgbit_np* %42, i32 0, i32 4
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.cxgbit_np*, %struct.cxgbit_np** %6, align 8
  %46 = getelementptr inbounds %struct.cxgbit_np, %struct.cxgbit_np* %45, i32 0, i32 3
  %47 = call i32 @spin_lock_init(i32* %46)
  %48 = load %struct.cxgbit_np*, %struct.cxgbit_np** %6, align 8
  %49 = getelementptr inbounds %struct.cxgbit_np, %struct.cxgbit_np* %48, i32 0, i32 2
  %50 = call i32 @kref_init(i32* %49)
  %51 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %52 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %51, i32 0, i32 1
  %53 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %54 = call i32 @memcpy(%struct.sockaddr_storage* %52, %struct.sockaddr_storage* %53, i32 8)
  %55 = load %struct.cxgbit_np*, %struct.cxgbit_np** %6, align 8
  %56 = getelementptr inbounds %struct.cxgbit_np, %struct.cxgbit_np* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %59 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %58, i32 0, i32 1
  %60 = call i32 @memcpy(%struct.sockaddr_storage* %57, %struct.sockaddr_storage* %59, i32 8)
  %61 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %62 = load %struct.cxgbit_np*, %struct.cxgbit_np** %6, align 8
  %63 = getelementptr inbounds %struct.cxgbit_np, %struct.cxgbit_np* %62, i32 0, i32 1
  store %struct.iscsi_np* %61, %struct.iscsi_np** %63, align 8
  %64 = load %struct.cxgbit_np*, %struct.cxgbit_np** %6, align 8
  %65 = getelementptr inbounds %struct.cxgbit_np, %struct.cxgbit_np* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  %67 = load %struct.cxgbit_np*, %struct.cxgbit_np** %6, align 8
  %68 = call i64 @cxgbit_inaddr_any(%struct.cxgbit_np* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %30
  %71 = load %struct.cxgbit_np*, %struct.cxgbit_np** %6, align 8
  %72 = call i32 @cxgbit_setup_all_np(%struct.cxgbit_np* %71)
  store i32 %72, i32* %7, align 4
  br label %76

73:                                               ; preds = %30
  %74 = load %struct.cxgbit_np*, %struct.cxgbit_np** %6, align 8
  %75 = call i32 @cxgbit_setup_cdev_np(%struct.cxgbit_np* %74)
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.cxgbit_np*, %struct.cxgbit_np** %6, align 8
  %81 = call i32 @cxgbit_put_cnp(%struct.cxgbit_np* %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %92

84:                                               ; preds = %76
  %85 = load %struct.cxgbit_np*, %struct.cxgbit_np** %6, align 8
  %86 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %87 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %86, i32 0, i32 0
  store %struct.cxgbit_np* %85, %struct.cxgbit_np** %87, align 8
  %88 = load i32, i32* @CSK_STATE_LISTEN, align 4
  %89 = load %struct.cxgbit_np*, %struct.cxgbit_np** %6, align 8
  %90 = getelementptr inbounds %struct.cxgbit_np, %struct.cxgbit_np* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %84, %79, %27, %19
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.cxgbit_np* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @memcpy(%struct.sockaddr_storage*, %struct.sockaddr_storage*, i32) #1

declare dso_local i64 @cxgbit_inaddr_any(%struct.cxgbit_np*) #1

declare dso_local i32 @cxgbit_setup_all_np(%struct.cxgbit_np*) #1

declare dso_local i32 @cxgbit_setup_cdev_np(%struct.cxgbit_np*) #1

declare dso_local i32 @cxgbit_put_cnp(%struct.cxgbit_np*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
