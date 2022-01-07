; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_hal8188e_rate_adaptive.c_odm_ResetRaCounter_8188E.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_hal8188e_rate_adaptive.c_odm_ResetRaCounter_8188E.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_ra_info = type { i64, i32, i32 }

@N_THRESHOLD_HIGH = common dso_local global i32* null, align 8
@N_THRESHOLD_LOW = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.odm_ra_info*)* @odm_ResetRaCounter_8188E to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @odm_ResetRaCounter_8188E(%struct.odm_ra_info* %0) #0 {
  %2 = alloca %struct.odm_ra_info*, align 8
  %3 = alloca i64, align 8
  store %struct.odm_ra_info* %0, %struct.odm_ra_info** %2, align 8
  %4 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %5 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %3, align 8
  %7 = load i32*, i32** @N_THRESHOLD_HIGH, align 8
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** @N_THRESHOLD_LOW, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %10, %14
  %16 = ashr i32 %15, 1
  %17 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %18 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load i32*, i32** @N_THRESHOLD_HIGH, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** @N_THRESHOLD_LOW, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %22, %26
  %28 = ashr i32 %27, 1
  %29 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %30 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
