; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mc13xxx.c_mc13xxx_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mc13xxx.c_mc13xxx_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.mc13xxx_rtc = type { i32, i32 }

@ENODATA = common dso_local global i32 0, align 4
@MC13XXX_RTCDAY = common dso_local global i32 0, align 4
@MC13XXX_RTCTOD = common dso_local global i32 0, align 4
@SEC_PER_DAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @mc13xxx_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc13xxx_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.mc13xxx_rtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.mc13xxx_rtc* @dev_get_drvdata(%struct.device* %11)
  store %struct.mc13xxx_rtc* %12, %struct.mc13xxx_rtc** %6, align 8
  %13 = load %struct.mc13xxx_rtc*, %struct.mc13xxx_rtc** %6, align 8
  %14 = getelementptr inbounds %struct.mc13xxx_rtc, %struct.mc13xxx_rtc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODATA, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %64

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %52, %20
  %22 = load %struct.mc13xxx_rtc*, %struct.mc13xxx_rtc** %6, align 8
  %23 = getelementptr inbounds %struct.mc13xxx_rtc, %struct.mc13xxx_rtc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MC13XXX_RTCDAY, align 4
  %26 = call i32 @mc13xxx_reg_read(i32 %24, i32 %25, i32* %8)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %3, align 4
  br label %64

31:                                               ; preds = %21
  %32 = load %struct.mc13xxx_rtc*, %struct.mc13xxx_rtc** %6, align 8
  %33 = getelementptr inbounds %struct.mc13xxx_rtc, %struct.mc13xxx_rtc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MC13XXX_RTCTOD, align 4
  %36 = call i32 @mc13xxx_reg_read(i32 %34, i32 %35, i32* %7)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %3, align 4
  br label %64

41:                                               ; preds = %31
  %42 = load %struct.mc13xxx_rtc*, %struct.mc13xxx_rtc** %6, align 8
  %43 = getelementptr inbounds %struct.mc13xxx_rtc, %struct.mc13xxx_rtc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MC13XXX_RTCDAY, align 4
  %46 = call i32 @mc13xxx_reg_read(i32 %44, i32 %45, i32* %9)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %3, align 4
  br label %64

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %21, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @SEC_PER_DAY, align 4
  %59 = mul i32 %57, %58
  %60 = load i32, i32* %7, align 4
  %61 = add i32 %59, %60
  %62 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %63 = call i32 @rtc_time64_to_tm(i32 %61, %struct.rtc_time* %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %56, %49, %39, %29, %17
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.mc13xxx_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mc13xxx_reg_read(i32, i32, i32*) #1

declare dso_local i32 @rtc_time64_to_tm(i32, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
