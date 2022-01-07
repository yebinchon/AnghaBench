; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sh.c___sh_rtc_periodic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sh.c___sh_rtc_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_rtc = type { i32, i32, i64 }

@RCR2 = common dso_local global i64 0, align 8
@RCR2_PEF = common dso_local global i32 0, align 4
@PF_HP = common dso_local global i32 0, align 4
@PF_COUNT = common dso_local global i32 0, align 4
@RTC_PF = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_rtc*)* @__sh_rtc_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sh_rtc_periodic(%struct.sh_rtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_rtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sh_rtc* %0, %struct.sh_rtc** %3, align 8
  %6 = load %struct.sh_rtc*, %struct.sh_rtc** %3, align 8
  %7 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @RCR2, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readb(i64 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @RCR2_PEF, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @RCR2_PEF, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.sh_rtc*, %struct.sh_rtc** %3, align 8
  %21 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RCR2, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writeb(i32 %19, i64 %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

29:                                               ; preds = %1
  %30 = load %struct.sh_rtc*, %struct.sh_rtc** %3, align 8
  %31 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PF_HP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %29
  %37 = load %struct.sh_rtc*, %struct.sh_rtc** %3, align 8
  %38 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @PF_COUNT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load i32, i32* @PF_COUNT, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.sh_rtc*, %struct.sh_rtc** %3, align 8
  %47 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %71

50:                                               ; preds = %36, %29
  %51 = load %struct.sh_rtc*, %struct.sh_rtc** %3, align 8
  %52 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PF_HP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load i32, i32* @PF_COUNT, align 4
  %59 = load %struct.sh_rtc*, %struct.sh_rtc** %3, align 8
  %60 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %57, %50
  %64 = load %struct.sh_rtc*, %struct.sh_rtc** %3, align 8
  %65 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @RTC_PF, align 4
  %68 = load i32, i32* @RTC_IRQF, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @rtc_update_irq(i32 %66, i32 1, i32 %69)
  br label %71

71:                                               ; preds = %63, %43
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %28
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
