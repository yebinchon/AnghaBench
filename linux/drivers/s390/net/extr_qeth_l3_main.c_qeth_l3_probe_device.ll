; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_probe_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_probe_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.qeth_card = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s_cmd\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@qeth_generic_devtype = common dso_local global i32 0, align 4
@qeth_l3_rx_mode_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @qeth_l3_probe_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_probe_device(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %3, align 8
  %6 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %7 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %6, i32 0, i32 0
  %8 = call %struct.qeth_card* @dev_get_drvdata(%struct.TYPE_4__* %7)
  store %struct.qeth_card* %8, %struct.qeth_card** %4, align 8
  %9 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %10 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @hash_init(i32 %11)
  %13 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %14 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %13, i32 0, i32 3
  %15 = call i32 @mutex_init(i32* %14)
  %16 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %17 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %16, i32 0, i32 0
  %18 = call i32 @dev_name(%struct.TYPE_4__* %17)
  %19 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32 %18)
  %20 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %21 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %23 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %57

29:                                               ; preds = %1
  %30 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %31 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, @qeth_generic_devtype
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %37 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %36, i32 0, i32 0
  %38 = call i32 @qeth_l3_create_device_attributes(%struct.TYPE_4__* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %43 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @destroy_workqueue(i32 %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %57

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %29
  %49 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %50 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @hash_init(i32 %51)
  %53 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %54 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %53, i32 0, i32 0
  %55 = load i32, i32* @qeth_l3_rx_mode_work, align 4
  %56 = call i32 @INIT_WORK(i32* %54, i32 %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %48, %41, %26
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.TYPE_4__*) #1

declare dso_local i32 @hash_init(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_4__*) #1

declare dso_local i32 @qeth_l3_create_device_attributes(%struct.TYPE_4__*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
