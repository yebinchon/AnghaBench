; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-asm9260.c_asm9260_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-asm9260.c_asm9260_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.asm9260_rtc_priv = type { i64 }

@HW_ALYEAR = common dso_local global i64 0, align 8
@HW_ALMON = common dso_local global i64 0, align 8
@HW_ALDOM = common dso_local global i64 0, align 8
@HW_ALDOW = common dso_local global i64 0, align 8
@HW_ALDOY = common dso_local global i64 0, align 8
@HW_ALHOUR = common dso_local global i64 0, align 8
@HW_ALMIN = common dso_local global i64 0, align 8
@HW_ALSEC = common dso_local global i64 0, align 8
@HW_AMR = common dso_local global i64 0, align 8
@HW_CIIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @asm9260_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asm9260_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.asm9260_rtc_priv*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.asm9260_rtc_priv* @dev_get_drvdata(%struct.device* %6)
  store %struct.asm9260_rtc_priv* %7, %struct.asm9260_rtc_priv** %5, align 8
  %8 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %9 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HW_ALYEAR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i8* @ioread32(i64 %12)
  %14 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %15 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 7
  store i8* %13, i8** %16, align 8
  %17 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %18 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HW_ALMON, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i8* @ioread32(i64 %21)
  %23 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %24 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 6
  store i8* %22, i8** %25, align 8
  %26 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %27 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HW_ALDOM, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i8* @ioread32(i64 %30)
  %32 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %33 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 5
  store i8* %31, i8** %34, align 8
  %35 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %36 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @HW_ALDOW, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i8* @ioread32(i64 %39)
  %41 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %42 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  store i8* %40, i8** %43, align 8
  %44 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %45 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @HW_ALDOY, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i8* @ioread32(i64 %48)
  %50 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %51 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  store i8* %49, i8** %52, align 8
  %53 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %54 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @HW_ALHOUR, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i8* @ioread32(i64 %57)
  %59 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %60 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i8* %58, i8** %61, align 8
  %62 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %63 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @HW_ALMIN, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i8* @ioread32(i64 %66)
  %68 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %69 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i8* %67, i8** %70, align 8
  %71 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %72 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @HW_ALSEC, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i8* @ioread32(i64 %75)
  %77 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %78 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i8* %76, i8** %79, align 8
  %80 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %81 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @HW_AMR, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i8* @ioread32(i64 %84)
  %86 = icmp ne i8* %85, null
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 1, i32 0
  %89 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %90 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %5, align 8
  %92 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @HW_CIIR, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i8* @ioread32(i64 %95)
  %97 = icmp ne i8* %96, null
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 1, i32 0
  %100 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %101 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %103 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %102, i32 0, i32 2
  %104 = call i32 @rtc_valid_tm(%struct.TYPE_2__* %103)
  ret i32 %104
}

declare dso_local %struct.asm9260_rtc_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i8* @ioread32(i64) #1

declare dso_local i32 @rtc_valid_tm(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
