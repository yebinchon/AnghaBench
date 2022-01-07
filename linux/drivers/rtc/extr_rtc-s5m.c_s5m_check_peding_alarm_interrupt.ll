; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s5m.c_s5m_check_peding_alarm_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s5m.c_s5m_check_peding_alarm_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5m_rtc_info = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.rtc_wkalrm = type { i32 }

@S5M_RTC_STATUS = common dso_local global i32 0, align 4
@S5M_ALARM0_STATUS = common dso_local global i32 0, align 4
@S2MPS14_REG_ST2 = common dso_local global i32 0, align 4
@S2MPS_ALARM0_STATUS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5m_rtc_info*, %struct.rtc_wkalrm*)* @s5m_check_peding_alarm_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5m_check_peding_alarm_interrupt(%struct.s5m_rtc_info* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5m_rtc_info*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.s5m_rtc_info* %0, %struct.s5m_rtc_info** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %8 = load %struct.s5m_rtc_info*, %struct.s5m_rtc_info** %4, align 8
  %9 = getelementptr inbounds %struct.s5m_rtc_info, %struct.s5m_rtc_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %31 [
    i32 128, label %11
    i32 129, label %11
    i32 130, label %20
    i32 131, label %20
    i32 132, label %20
  ]

11:                                               ; preds = %2, %2
  %12 = load %struct.s5m_rtc_info*, %struct.s5m_rtc_info** %4, align 8
  %13 = getelementptr inbounds %struct.s5m_rtc_info, %struct.s5m_rtc_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @S5M_RTC_STATUS, align 4
  %16 = call i32 @regmap_read(i32 %14, i32 %15, i32* %7)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @S5M_ALARM0_STATUS, align 4
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %7, align 4
  br label %34

20:                                               ; preds = %2, %2, %2
  %21 = load %struct.s5m_rtc_info*, %struct.s5m_rtc_info** %4, align 8
  %22 = getelementptr inbounds %struct.s5m_rtc_info, %struct.s5m_rtc_info* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @S2MPS14_REG_ST2, align 4
  %27 = call i32 @regmap_read(i32 %25, i32 %26, i32* %7)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @S2MPS_ALARM0_STATUS, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %49

34:                                               ; preds = %20, %11
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %49

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %44 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  br label %48

45:                                               ; preds = %39
  %46 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %47 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %42
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %37, %31
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
