; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-snvs.c_rtc_read_lpsrt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-snvs.c_rtc_read_lpsrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snvs_rtc_data = type { i64, i32 }

@SNVS_LPSRTCMR = common dso_local global i64 0, align 8
@SNVS_LPSRTCLR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snvs_rtc_data*)* @rtc_read_lpsrt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_read_lpsrt(%struct.snvs_rtc_data* %0) #0 {
  %2 = alloca %struct.snvs_rtc_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.snvs_rtc_data* %0, %struct.snvs_rtc_data** %2, align 8
  %5 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %2, align 8
  %6 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %2, align 8
  %9 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SNVS_LPSRTCMR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @regmap_read(i32 %7, i64 %12, i32* %3)
  %14 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %2, align 8
  %15 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %2, align 8
  %18 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SNVS_LPSRTCLR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @regmap_read(i32 %16, i64 %21, i32* %4)
  %23 = load i32, i32* %3, align 4
  %24 = shl i32 %23, 32
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %24, %25
  ret i32 %26
}

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
