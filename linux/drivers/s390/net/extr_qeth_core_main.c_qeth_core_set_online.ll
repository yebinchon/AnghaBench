; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_core_set_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_core_set_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i32 }
%struct.qeth_card = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (%struct.ccwgroup_device*)* }

@QETH_DISCIPLINE_LAYER3 = common dso_local global i32 0, align 4
@QETH_DISCIPLINE_LAYER2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @qeth_core_set_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_core_set_online(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca %struct.ccwgroup_device*, align 8
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %2, align 8
  %6 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %7 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %6, i32 0, i32 0
  %8 = call %struct.qeth_card* @dev_get_drvdata(i32* %7)
  store %struct.qeth_card* %8, %struct.qeth_card** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %10 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %45, label %13

13:                                               ; preds = %1
  %14 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %15 = call i64 @IS_IQD(%struct.qeth_card* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @QETH_DISCIPLINE_LAYER3, align 4
  br label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @QETH_DISCIPLINE_LAYER2, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %5, align 4
  %23 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @qeth_core_load_discipline(%struct.qeth_card* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %53

29:                                               ; preds = %21
  %30 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %31 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (i32)*, i32 (i32)** %33, align 8
  %35 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %36 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %34(i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %43 = call i32 @qeth_core_free_discipline(%struct.qeth_card* %42)
  br label %53

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %47 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32 (%struct.ccwgroup_device*)*, i32 (%struct.ccwgroup_device*)** %49, align 8
  %51 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %52 = call i32 %50(%struct.ccwgroup_device* %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %45, %41, %28
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(i32*) #1

declare dso_local i64 @IS_IQD(%struct.qeth_card*) #1

declare dso_local i32 @qeth_core_load_discipline(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_core_free_discipline(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
