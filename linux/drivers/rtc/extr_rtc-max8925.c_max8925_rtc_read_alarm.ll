; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8925.c_max8925_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8925.c_max8925_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, i32 }
%struct.max8925_rtc_info = type { i32 }

@TIME_NUM = common dso_local global i32 0, align 4
@MAX8925_ALARM0_SEC = common dso_local global i32 0, align 4
@MAX8925_RTC_IRQ_MASK = common dso_local global i32 0, align 4
@ALARM0_IRQ = common dso_local global i32 0, align 4
@MAX8925_ALARM0_CNTL = common dso_local global i32 0, align 4
@MAX8925_RTC_STATUS = common dso_local global i32 0, align 4
@ALARM0_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @max8925_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8925_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.max8925_rtc_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.max8925_rtc_info* @dev_get_drvdata(%struct.device* %11)
  store %struct.max8925_rtc_info* %12, %struct.max8925_rtc_info** %6, align 8
  %13 = load i32, i32* @TIME_NUM, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.max8925_rtc_info*, %struct.max8925_rtc_info** %6, align 8
  %18 = getelementptr inbounds %struct.max8925_rtc_info, %struct.max8925_rtc_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MAX8925_ALARM0_SEC, align 4
  %21 = load i32, i32* @TIME_NUM, align 4
  %22 = call i32 @max8925_bulk_read(i32 %19, i32 %20, i32 %21, i8* %16)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %91

26:                                               ; preds = %2
  %27 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %28 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %27, i32 0, i32 2
  %29 = load i32, i32* @TIME_NUM, align 4
  %30 = call i32 @tm_calc(i32* %28, i8* %16, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %91

34:                                               ; preds = %26
  %35 = load %struct.max8925_rtc_info*, %struct.max8925_rtc_info** %6, align 8
  %36 = getelementptr inbounds %struct.max8925_rtc_info, %struct.max8925_rtc_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MAX8925_RTC_IRQ_MASK, align 4
  %39 = call i32 @max8925_reg_read(i32 %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %91

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @ALARM0_IRQ, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %50 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  br label %70

51:                                               ; preds = %43
  %52 = load %struct.max8925_rtc_info*, %struct.max8925_rtc_info** %6, align 8
  %53 = getelementptr inbounds %struct.max8925_rtc_info, %struct.max8925_rtc_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MAX8925_ALARM0_CNTL, align 4
  %56 = call i32 @max8925_reg_read(i32 %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %91

60:                                               ; preds = %51
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %65 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  br label %69

66:                                               ; preds = %60
  %67 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %68 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %67, i32 0, i32 0
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %48
  %71 = load %struct.max8925_rtc_info*, %struct.max8925_rtc_info** %6, align 8
  %72 = getelementptr inbounds %struct.max8925_rtc_info, %struct.max8925_rtc_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MAX8925_RTC_STATUS, align 4
  %75 = call i32 @max8925_reg_read(i32 %73, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %91

79:                                               ; preds = %70
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @ALARM0_STATUS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %86 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  br label %90

87:                                               ; preds = %79
  %88 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %89 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %88, i32 0, i32 1
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %84
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %93

91:                                               ; preds = %78, %59, %42, %33, %25
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %93

93:                                               ; preds = %91, %90
  %94 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.max8925_rtc_info* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @max8925_bulk_read(i32, i32, i32, i8*) #1

declare dso_local i32 @tm_calc(i32*, i8*, i32) #1

declare dso_local i32 @max8925_reg_read(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
