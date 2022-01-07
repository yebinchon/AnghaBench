; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-asm9260.c_asm9260_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-asm9260.c_asm9260_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.asm9260_rtc_priv = type { i64 }

@HW_SEC = common dso_local global i64 0, align 8
@HW_YEAR = common dso_local global i64 0, align 8
@HW_MONTH = common dso_local global i64 0, align 8
@HW_DOM = common dso_local global i64 0, align 8
@HW_DOW = common dso_local global i64 0, align 8
@HW_DOY = common dso_local global i64 0, align 8
@HW_HOUR = common dso_local global i64 0, align 8
@HW_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @asm9260_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asm9260_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.asm9260_rtc_priv*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.asm9260_rtc_priv* @dev_get_drvdata(%struct.device* %6)
  store %struct.asm9260_rtc_priv* %7, %struct.asm9260_rtc_priv** %5, align 8
  %8 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %9 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HW_SEC, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @iowrite32(i32 0, i64 %12)
  %14 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %15 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %18 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HW_YEAR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @iowrite32(i32 %16, i64 %21)
  %23 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %27 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HW_MONTH, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @iowrite32(i32 %25, i64 %30)
  %32 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %36 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @HW_DOM, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @iowrite32(i32 %34, i64 %39)
  %41 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %45 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @HW_DOW, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @iowrite32(i32 %43, i64 %48)
  %50 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %54 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @HW_DOY, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @iowrite32(i32 %52, i64 %57)
  %59 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %60 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %63 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @HW_HOUR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @iowrite32(i32 %61, i64 %66)
  %68 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %69 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %72 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @HW_MIN, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @iowrite32(i32 %70, i64 %75)
  %77 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %78 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %81 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @HW_SEC, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @iowrite32(i32 %79, i64 %84)
  ret i32 0
}

declare dso_local %struct.asm9260_rtc_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
