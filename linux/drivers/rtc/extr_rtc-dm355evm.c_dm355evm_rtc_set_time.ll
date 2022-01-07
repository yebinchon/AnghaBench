; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-dm355evm.c_dm355evm_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-dm355evm.c_dm355evm_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%union.evm_time = type { i32* }

@.str = private unnamed_addr constant [22 x i8] c"write timestamp %08x\0A\00", align 1
@DM355EVM_MSP_RTC_0 = common dso_local global i32 0, align 4
@DM355EVM_MSP_RTC_1 = common dso_local global i32 0, align 4
@DM355EVM_MSP_RTC_2 = common dso_local global i32 0, align 4
@DM355EVM_MSP_RTC_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @dm355evm_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm355evm_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %union.evm_time, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %9 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %10 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @cpu_to_le32(i64 %11)
  %13 = bitcast %union.evm_time* %6 to i32*
  store i32 %12, i32* %13, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = bitcast %union.evm_time* %6 to i32*
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dev_dbg(%struct.device* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = bitcast %union.evm_time* %6 to i32**
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DM355EVM_MSP_RTC_0, align 4
  %23 = call i32 @dm355evm_msp_write(i32 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %62

28:                                               ; preds = %2
  %29 = bitcast %union.evm_time* %6 to i32**
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DM355EVM_MSP_RTC_1, align 4
  %34 = call i32 @dm355evm_msp_write(i32 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %62

39:                                               ; preds = %28
  %40 = bitcast %union.evm_time* %6 to i32**
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DM355EVM_MSP_RTC_2, align 4
  %45 = call i32 @dm355evm_msp_write(i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %62

50:                                               ; preds = %39
  %51 = bitcast %union.evm_time* %6 to i32**
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DM355EVM_MSP_RTC_3, align 4
  %56 = call i32 @dm355evm_msp_write(i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %62

61:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %59, %48, %37, %26
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @rtc_tm_to_time64(%struct.rtc_time*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @dm355evm_msp_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
