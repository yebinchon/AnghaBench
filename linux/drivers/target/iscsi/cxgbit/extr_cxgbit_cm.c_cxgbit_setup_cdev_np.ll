; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_cm.c_cxgbit_setup_cdev_np.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_cm.c_cxgbit_setup_cdev_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_np = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cxgbit_device* }
%struct.cxgbit_device = type { i32 }

@cdev_list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbit_np*)* @cxgbit_setup_cdev_np to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_setup_cdev_np(%struct.cxgbit_np* %0) #0 {
  %2 = alloca %struct.cxgbit_np*, align 8
  %3 = alloca %struct.cxgbit_device*, align 8
  %4 = alloca i32, align 4
  store %struct.cxgbit_np* %0, %struct.cxgbit_np** %2, align 8
  store i32 -1, i32* %4, align 4
  %5 = call i32 @mutex_lock(i32* @cdev_list_lock)
  %6 = load %struct.cxgbit_np*, %struct.cxgbit_np** %2, align 8
  %7 = call %struct.cxgbit_device* @cxgbit_find_np_cdev(%struct.cxgbit_np* %6)
  store %struct.cxgbit_device* %7, %struct.cxgbit_device** %3, align 8
  %8 = load %struct.cxgbit_device*, %struct.cxgbit_device** %3, align 8
  %9 = icmp ne %struct.cxgbit_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.cxgbit_device*, %struct.cxgbit_device** %3, align 8
  %13 = load %struct.cxgbit_np*, %struct.cxgbit_np** %2, align 8
  %14 = call i64 @cxgbit_np_hash_find(%struct.cxgbit_device* %12, %struct.cxgbit_np* %13)
  %15 = icmp sge i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %28

17:                                               ; preds = %11
  %18 = load %struct.cxgbit_device*, %struct.cxgbit_device** %3, align 8
  %19 = load %struct.cxgbit_np*, %struct.cxgbit_np** %2, align 8
  %20 = call i64 @__cxgbit_setup_cdev_np(%struct.cxgbit_device* %18, %struct.cxgbit_np* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %28

23:                                               ; preds = %17
  %24 = load %struct.cxgbit_device*, %struct.cxgbit_device** %3, align 8
  %25 = load %struct.cxgbit_np*, %struct.cxgbit_np** %2, align 8
  %26 = getelementptr inbounds %struct.cxgbit_np, %struct.cxgbit_np* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.cxgbit_device* %24, %struct.cxgbit_device** %27, align 8
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %23, %22, %16, %10
  %29 = call i32 @mutex_unlock(i32* @cdev_list_lock)
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.cxgbit_device* @cxgbit_find_np_cdev(%struct.cxgbit_np*) #1

declare dso_local i64 @cxgbit_np_hash_find(%struct.cxgbit_device*, %struct.cxgbit_np*) #1

declare dso_local i64 @__cxgbit_setup_cdev_np(%struct.cxgbit_device*, %struct.cxgbit_np*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
