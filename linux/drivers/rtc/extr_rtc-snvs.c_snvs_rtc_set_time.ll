; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-snvs.c_snvs_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-snvs.c_snvs_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.snvs_rtc_data = type { i64, i32 }

@SNVS_LPSRTCLR = common dso_local global i64 0, align 8
@CNTR_TO_SECS_SH = common dso_local global i64 0, align 8
@SNVS_LPSRTCMR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @snvs_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snvs_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.snvs_rtc_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.snvs_rtc_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.snvs_rtc_data* %10, %struct.snvs_rtc_data** %6, align 8
  %11 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %12 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %11)
  store i64 %12, i64* %7, align 8
  %13 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %6, align 8
  %14 = call i32 @snvs_rtc_enable(%struct.snvs_rtc_data* %13, i32 0)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %48

19:                                               ; preds = %2
  %20 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %6, align 8
  %21 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %6, align 8
  %24 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SNVS_LPSRTCLR, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @CNTR_TO_SECS_SH, align 8
  %30 = shl i64 %28, %29
  %31 = call i32 @regmap_write(i32 %22, i64 %27, i64 %30)
  %32 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %6, align 8
  %33 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %6, align 8
  %36 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SNVS_LPSRTCMR, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @CNTR_TO_SECS_SH, align 8
  %42 = sub i64 32, %41
  %43 = lshr i64 %40, %42
  %44 = call i32 @regmap_write(i32 %34, i64 %39, i64 %43)
  %45 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %6, align 8
  %46 = call i32 @snvs_rtc_enable(%struct.snvs_rtc_data* %45, i32 1)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %19, %17
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.snvs_rtc_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @rtc_tm_to_time64(%struct.rtc_time*) #1

declare dso_local i32 @snvs_rtc_enable(%struct.snvs_rtc_data*, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
