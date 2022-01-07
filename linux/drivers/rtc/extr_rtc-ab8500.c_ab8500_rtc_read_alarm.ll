; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab8500.c_ab8500_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab8500.c_ab8500_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, i64 }

@ab8500_rtc_alarm_regs = common dso_local global i32* null, align 8
@AB8500_RTC = common dso_local global i32 0, align 4
@AB8500_RTC_STAT_REG = common dso_local global i32 0, align 4
@RTC_ALARM_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ab8500_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %15 = load i32*, i32** @ab8500_rtc_alarm_regs, align 8
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load i32, i32* @AB8500_RTC, align 4
  %22 = load i32, i32* @AB8500_RTC_STAT_REG, align 4
  %23 = call i32 @abx500_get_register_interruptible(%struct.device* %20, i32 %21, i32 %22, i32* %8)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %90

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @RTC_ALARM_ENA, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %35 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %39

36:                                               ; preds = %28
  %37 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %38 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %66, %39
  %43 = load i32, i32* %7, align 4
  %44 = load i32*, i32** @ab8500_rtc_alarm_regs, align 8
  %45 = call i32 @ARRAY_SIZE(i32* %44)
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %42
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = load i32, i32* @AB8500_RTC, align 4
  %50 = load i32*, i32** @ab8500_rtc_alarm_regs, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @abx500_get_register_interruptible(%struct.device* %48, i32 %49, i32 %54, i32* %9)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %90

60:                                               ; preds = %47
  %61 = load i32, i32* %9, align 4
  %62 = trunc i32 %61 to i8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %19, i64 %64
  store i8 %62, i8* %65, align 1
  br label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %42

69:                                               ; preds = %42
  %70 = getelementptr inbounds i8, i8* %19, i64 0
  %71 = load i8, i8* %70, align 16
  %72 = zext i8 %71 to i32
  %73 = shl i32 %72, 16
  %74 = getelementptr inbounds i8, i8* %19, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = shl i32 %76, 8
  %78 = or i32 %73, %77
  %79 = getelementptr inbounds i8, i8* %19, i64 2
  %80 = load i8, i8* %79, align 2
  %81 = zext i8 %80 to i32
  %82 = or i32 %78, %81
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %13, align 8
  %84 = load i64, i64* %13, align 8
  %85 = mul i64 %84, 60
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %88 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %87, i32 0, i32 1
  %89 = call i32 @rtc_time_to_tm(i64 %86, i32* %88)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %90

90:                                               ; preds = %69, %58, %26
  %91 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @abx500_get_register_interruptible(%struct.device*, i32, i32, i32*) #1

declare dso_local i32 @rtc_time_to_tm(i64, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
