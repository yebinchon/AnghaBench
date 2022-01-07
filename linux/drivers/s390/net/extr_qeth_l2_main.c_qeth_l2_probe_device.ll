; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_probe_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_probe_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.qeth_card = type { i32, i32 }

@qeth_generic_devtype = common dso_local global i32 0, align 4
@qeth_l2_rx_mode_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @qeth_l2_probe_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_probe_device(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %3, align 8
  %6 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %7 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %6, i32 0, i32 0
  %8 = call %struct.qeth_card* @dev_get_drvdata(%struct.TYPE_3__* %7)
  store %struct.qeth_card* %8, %struct.qeth_card** %4, align 8
  %9 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %10 = call i32 @qeth_l2_vnicc_set_defaults(%struct.qeth_card* %9)
  %11 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %12 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, @qeth_generic_devtype
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %18 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %17, i32 0, i32 0
  %19 = call i32 @qeth_l2_create_device_attributes(%struct.TYPE_3__* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %34

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %27 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @hash_init(i32 %28)
  %30 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %31 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %30, i32 0, i32 0
  %32 = load i32, i32* @qeth_l2_rx_mode_work, align 4
  %33 = call i32 @INIT_WORK(i32* %31, i32 %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %25, %22
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.TYPE_3__*) #1

declare dso_local i32 @qeth_l2_vnicc_set_defaults(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l2_create_device_attributes(%struct.TYPE_3__*) #1

declare dso_local i32 @hash_init(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
