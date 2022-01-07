; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sh.c_sh_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sh.c_sh_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sh_rtc = type { i32, i32, i64 }

@RCR2 = common dso_local global i64 0, align 8
@RCR2_RESET = common dso_local global i32 0, align 4
@RCR2_START = common dso_local global i32 0, align 4
@RSECCNT = common dso_local global i64 0, align 8
@RMINCNT = common dso_local global i64 0, align 8
@RHRCNT = common dso_local global i64 0, align 8
@RWKCNT = common dso_local global i64 0, align 8
@RDAYCNT = common dso_local global i64 0, align 8
@RMONCNT = common dso_local global i64 0, align 8
@RTC_CAP_4_DIGIT_YEAR = common dso_local global i32 0, align 4
@RYRCNT = common dso_local global i64 0, align 8
@RCR2_RTCEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @sh_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.sh_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.sh_rtc* @dev_get_drvdata(%struct.device* %8)
  store %struct.sh_rtc* %9, %struct.sh_rtc** %5, align 8
  %10 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %11 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %14 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RCR2, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readb(i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @RCR2_RESET, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @RCR2_START, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %28 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RCR2, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writeb(i32 %26, i64 %31)
  %33 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bin2bcd(i32 %35)
  %37 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %38 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RSECCNT, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writeb(i32 %36, i64 %41)
  %43 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %44 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @bin2bcd(i32 %45)
  %47 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %48 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @RMINCNT, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writeb(i32 %46, i64 %51)
  %53 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @bin2bcd(i32 %55)
  %57 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %58 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @RHRCNT, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writeb(i32 %56, i64 %61)
  %63 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %64 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @bin2bcd(i32 %65)
  %67 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %68 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @RWKCNT, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writeb(i32 %66, i64 %71)
  %73 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %74 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @bin2bcd(i32 %75)
  %77 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %78 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @RDAYCNT, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writeb(i32 %76, i64 %81)
  %83 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %84 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i32 @bin2bcd(i32 %86)
  %88 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %89 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @RMONCNT, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writeb(i32 %87, i64 %92)
  %94 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %95 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @RTC_CAP_4_DIGIT_YEAR, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %2
  %101 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %102 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1900
  %105 = sdiv i32 %104, 100
  %106 = call i32 @bin2bcd(i32 %105)
  %107 = shl i32 %106, 8
  %108 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %109 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = srem i32 %110, 100
  %112 = call i32 @bin2bcd(i32 %111)
  %113 = or i32 %107, %112
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %116 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @RYRCNT, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @writew(i32 %114, i64 %119)
  br label %134

121:                                              ; preds = %2
  %122 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %123 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = srem i32 %124, 100
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @bin2bcd(i32 %126)
  %128 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %129 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @RYRCNT, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @writeb(i32 %127, i64 %132)
  br label %134

134:                                              ; preds = %121, %100
  %135 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %136 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @RCR2, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @readb(i64 %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* @RCR2_RESET, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %6, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* @RCR2_RTCEN, align 4
  %146 = load i32, i32* @RCR2_START, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* %6, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %152 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @RCR2, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @writeb(i32 %150, i64 %155)
  %157 = load %struct.sh_rtc*, %struct.sh_rtc** %5, align 8
  %158 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %157, i32 0, i32 1
  %159 = call i32 @spin_unlock_irq(i32* %158)
  ret i32 0
}

declare dso_local %struct.sh_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
