; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-asm9260.c_asm9260_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-asm9260.c_asm9260_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.asm9260_rtc_priv = type { i64 }

@HW_ALYEAR = common dso_local global i64 0, align 8
@HW_ALMON = common dso_local global i64 0, align 8
@HW_ALDOM = common dso_local global i64 0, align 8
@HW_ALDOW = common dso_local global i64 0, align 8
@HW_ALDOY = common dso_local global i64 0, align 8
@HW_ALHOUR = common dso_local global i64 0, align 8
@HW_ALMIN = common dso_local global i64 0, align 8
@HW_ALSEC = common dso_local global i64 0, align 8
@BM_AMR_OFF = common dso_local global i32 0, align 4
@HW_AMR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @asm9260_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asm9260_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.asm9260_rtc_priv*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.asm9260_rtc_priv* @dev_get_drvdata(%struct.device* %6)
  store %struct.asm9260_rtc_priv* %7, %struct.asm9260_rtc_priv** %5, align 8
  %8 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %9 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %13 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HW_ALYEAR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @iowrite32(i32 %11, i64 %16)
  %18 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %19 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %23 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HW_ALMON, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @iowrite32(i32 %21, i64 %26)
  %28 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %29 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %33 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @HW_ALDOM, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @iowrite32(i32 %31, i64 %36)
  %38 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %39 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %43 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @HW_ALDOW, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @iowrite32(i32 %41, i64 %46)
  %48 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %49 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %53 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @HW_ALDOY, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @iowrite32(i32 %51, i64 %56)
  %58 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %59 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %63 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @HW_ALHOUR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @iowrite32(i32 %61, i64 %66)
  %68 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %69 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %73 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @HW_ALMIN, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @iowrite32(i32 %71, i64 %76)
  %78 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %79 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %83 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @HW_ALSEC, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @iowrite32(i32 %81, i64 %86)
  %88 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %89 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %2
  br label %95

93:                                               ; preds = %2
  %94 = load i32, i32* @BM_AMR_OFF, align 4
  br label %95

95:                                               ; preds = %93, %92
  %96 = phi i32 [ 0, %92 ], [ %94, %93 ]
  %97 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %98 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @HW_AMR, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @iowrite32(i32 %96, i64 %101)
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
