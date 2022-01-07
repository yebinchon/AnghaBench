; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85363.c__pcf85363_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85363.c__pcf85363_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf85363 = type { i32 }

@ALRM_SEC_A1E = common dso_local global i32 0, align 4
@ALRM_MIN_A1E = common dso_local global i32 0, align 4
@ALRM_HR_A1E = common dso_local global i32 0, align 4
@ALRM_DAY_A1E = common dso_local global i32 0, align 4
@ALRM_MON_A1E = common dso_local global i32 0, align 4
@DT_ALARM_EN = common dso_local global i32 0, align 4
@CTRL_INTA_EN = common dso_local global i32 0, align 4
@INT_A1IE = common dso_local global i32 0, align 4
@CTRL_FLAGS = common dso_local global i32 0, align 4
@FLAGS_A1F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcf85363*, i32)* @_pcf85363_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_pcf85363_rtc_alarm_irq_enable(%struct.pcf85363* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcf85363*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pcf85363* %0, %struct.pcf85363** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @ALRM_SEC_A1E, align 4
  %9 = load i32, i32* @ALRM_MIN_A1E, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @ALRM_HR_A1E, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @ALRM_DAY_A1E, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @ALRM_MON_A1E, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.pcf85363*, %struct.pcf85363** %4, align 8
  %18 = getelementptr inbounds %struct.pcf85363, %struct.pcf85363* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DT_ALARM_EN, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %26 ]
  %29 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %21, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %62

34:                                               ; preds = %27
  %35 = load %struct.pcf85363*, %struct.pcf85363** %4, align 8
  %36 = getelementptr inbounds %struct.pcf85363, %struct.pcf85363* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CTRL_INTA_EN, align 4
  %39 = load i32, i32* @INT_A1IE, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @INT_A1IE, align 4
  br label %45

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 %39, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %62

55:                                               ; preds = %50
  %56 = load %struct.pcf85363*, %struct.pcf85363** %4, align 8
  %57 = getelementptr inbounds %struct.pcf85363, %struct.pcf85363* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CTRL_FLAGS, align 4
  %60 = load i32, i32* @FLAGS_A1F, align 4
  %61 = call i32 @regmap_update_bits(i32 %58, i32 %59, i32 %60, i32 0)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %55, %53, %32
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
