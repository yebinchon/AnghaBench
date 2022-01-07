; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_algorithm_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_algorithm_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_fg = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Calibration ongoing...\0A\00", align 1
@AB8500_GAS_GAUGE = common dso_local global i32 0, align 4
@AB8500_GASG_CC_CTRL_REG = common dso_local global i32 0, align 4
@CC_INT_CAL_N_AVG_MASK = common dso_local global i32 0, align 4
@CC_INT_CAL_SAMPLES_8 = common dso_local global i32 0, align 4
@CC_INTAVGOFFSET_ENA = common dso_local global i32 0, align 4
@CC_MUXOFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Calibration done...\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Calibration WFI\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to calibrate the CC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ab8500_fg*)* @ab8500_fg_algorithm_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ab8500_fg_algorithm_calibrate(%struct.ab8500_fg* %0) #0 {
  %2 = alloca %struct.ab8500_fg*, align 8
  %3 = alloca i32, align 4
  store %struct.ab8500_fg* %0, %struct.ab8500_fg** %2, align 8
  %4 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %5 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %69 [
    i32 129, label %7
    i32 130, label %38
    i32 128, label %64
  ]

7:                                                ; preds = %1
  %8 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %9 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %13 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AB8500_GAS_GAUGE, align 4
  %16 = load i32, i32* @AB8500_GASG_CC_CTRL_REG, align 4
  %17 = load i32, i32* @CC_INT_CAL_N_AVG_MASK, align 4
  %18 = load i32, i32* @CC_INT_CAL_SAMPLES_8, align 4
  %19 = call i32 @abx500_mask_and_set_register_interruptible(i32 %14, i32 %15, i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  br label %71

23:                                               ; preds = %7
  %24 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %25 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AB8500_GAS_GAUGE, align 4
  %28 = load i32, i32* @AB8500_GASG_CC_CTRL_REG, align 4
  %29 = load i32, i32* @CC_INTAVGOFFSET_ENA, align 4
  %30 = load i32, i32* @CC_INTAVGOFFSET_ENA, align 4
  %31 = call i32 @abx500_mask_and_set_register_interruptible(i32 %26, i32 %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %71

35:                                               ; preds = %23
  %36 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %37 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %36, i32 0, i32 0
  store i32 128, i32* %37, align 4
  br label %70

38:                                               ; preds = %1
  %39 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %40 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @AB8500_GAS_GAUGE, align 4
  %43 = load i32, i32* @AB8500_GASG_CC_CTRL_REG, align 4
  %44 = load i32, i32* @CC_MUXOFFSET, align 4
  %45 = load i32, i32* @CC_MUXOFFSET, align 4
  %46 = call i32 @abx500_mask_and_set_register_interruptible(i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %71

50:                                               ; preds = %38
  %51 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %52 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  %54 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %55 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %59 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %62 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %61, i32 0, i32 1
  %63 = call i32 @queue_delayed_work(i32 %60, i32* %62, i32 0)
  br label %70

64:                                               ; preds = %1
  %65 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %66 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_dbg(i32 %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %1, %64
  br label %70

70:                                               ; preds = %69, %50, %35
  br label %87

71:                                               ; preds = %49, %34, %22
  %72 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %73 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %76 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %77 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  %79 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %80 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %79, i32 0, i32 0
  store i32 129, i32* %80, align 4
  %81 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %82 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %85 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %84, i32 0, i32 1
  %86 = call i32 @queue_delayed_work(i32 %83, i32* %85, i32 0)
  br label %87

87:                                               ; preds = %71, %70
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @abx500_mask_and_set_register_interruptible(i32, i32, i32, i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
