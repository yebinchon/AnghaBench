; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_powerclamp.c_adjust_compensation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_powerclamp.c_adjust_compensation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerclamp_calibration_data = type { i64, i32 }

@cal_data = common dso_local global %struct.powerclamp_calibration_data* null, align 8
@CONFIDENCE_OK = common dso_local global i64 0, align 8
@idle_wakeup_counter = common dso_local global i32 0, align 4
@set_target_ratio = common dso_local global i32 0, align 4
@current_ratio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @adjust_compensation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_compensation(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.powerclamp_calibration_data*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load %struct.powerclamp_calibration_data*, %struct.powerclamp_calibration_data** @cal_data, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.powerclamp_calibration_data, %struct.powerclamp_calibration_data* %7, i64 %9
  store %struct.powerclamp_calibration_data* %10, %struct.powerclamp_calibration_data** %6, align 8
  %11 = load %struct.powerclamp_calibration_data*, %struct.powerclamp_calibration_data** %6, align 8
  %12 = getelementptr inbounds %struct.powerclamp_calibration_data, %struct.powerclamp_calibration_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CONFIDENCE_OK, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = call i32 @atomic_read(i32* @idle_wakeup_counter)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (...) @num_online_cpus()
  %20 = mul i32 %18, %19
  %21 = icmp ugt i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %2
  br label %59

23:                                               ; preds = %16
  %24 = load i32, i32* @set_target_ratio, align 4
  %25 = load i32, i32* @current_ratio, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %3, align 4
  %32 = sdiv i32 %31, 10
  %33 = add nsw i32 1, %32
  %34 = icmp sle i32 %30, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %29
  %36 = load %struct.powerclamp_calibration_data*, %struct.powerclamp_calibration_data** %6, align 8
  %37 = getelementptr inbounds %struct.powerclamp_calibration_data, %struct.powerclamp_calibration_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.powerclamp_calibration_data*, %struct.powerclamp_calibration_data** %6, align 8
  %43 = getelementptr inbounds %struct.powerclamp_calibration_data, %struct.powerclamp_calibration_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %41, %44
  %46 = call i32 @roundup(i32 %45, i32 2)
  %47 = sdiv i32 %46, 2
  %48 = load %struct.powerclamp_calibration_data*, %struct.powerclamp_calibration_data** %6, align 8
  %49 = getelementptr inbounds %struct.powerclamp_calibration_data, %struct.powerclamp_calibration_data* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %54

50:                                               ; preds = %35
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.powerclamp_calibration_data*, %struct.powerclamp_calibration_data** %6, align 8
  %53 = getelementptr inbounds %struct.powerclamp_calibration_data, %struct.powerclamp_calibration_data* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %40
  %55 = load %struct.powerclamp_calibration_data*, %struct.powerclamp_calibration_data** %6, align 8
  %56 = getelementptr inbounds %struct.powerclamp_calibration_data, %struct.powerclamp_calibration_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  br label %59

59:                                               ; preds = %22, %54, %29, %23
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @roundup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
