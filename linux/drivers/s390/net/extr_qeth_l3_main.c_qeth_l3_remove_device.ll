; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.qeth_card = type { i32, i32, i32, i32 }

@qeth_generic_devtype = common dso_local global i32 0, align 4
@CCWGROUP_ONLINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccwgroup_device*)* @qeth_l3_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l3_remove_device(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca %struct.ccwgroup_device*, align 8
  %3 = alloca %struct.qeth_card*, align 8
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %2, align 8
  %4 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %4, i32 0, i32 1
  %6 = call %struct.qeth_card* @dev_get_drvdata(%struct.TYPE_3__* %5)
  store %struct.qeth_card* %6, %struct.qeth_card** %3, align 8
  %7 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %8 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, @qeth_generic_devtype
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %14 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %13, i32 0, i32 1
  %15 = call i32 @qeth_l3_remove_device_attributes(%struct.TYPE_3__* %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %18 = call i32 @qeth_set_allowed_threads(%struct.qeth_card* %17, i32 0, i32 1)
  %19 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %20 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %23 = call i64 @qeth_threads_running(%struct.qeth_card* %22, i32 -1)
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @wait_event(i32 %21, i32 %25)
  %27 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %28 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CCWGROUP_ONLINE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %16
  %33 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %34 = call i32 @qeth_l3_set_offline(%struct.ccwgroup_device* %33)
  br label %35

35:                                               ; preds = %32, %16
  %36 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %37 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %36, i32 0, i32 2
  %38 = call i32 @cancel_work_sync(i32* %37)
  %39 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %40 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @qeth_netdev_is_registered(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %46 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @unregister_netdev(i32 %47)
  br label %49

49:                                               ; preds = %44, %35
  %50 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %51 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @flush_workqueue(i32 %52)
  %54 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %55 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @destroy_workqueue(i32 %56)
  %58 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %59 = call i32 @qeth_l3_clear_ip_htable(%struct.qeth_card* %58, i32 0)
  %60 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %61 = call i32 @qeth_l3_clear_ipato_list(%struct.qeth_card* %60)
  ret void
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.TYPE_3__*) #1

declare dso_local i32 @qeth_l3_remove_device_attributes(%struct.TYPE_3__*) #1

declare dso_local i32 @qeth_set_allowed_threads(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @qeth_threads_running(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_l3_set_offline(%struct.ccwgroup_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i64 @qeth_netdev_is_registered(i32) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @qeth_l3_clear_ip_htable(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_l3_clear_ipato_list(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
