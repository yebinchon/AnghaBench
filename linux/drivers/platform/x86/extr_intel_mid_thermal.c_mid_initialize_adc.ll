; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_mid_thermal.c_mid_initialize_adc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_mid_thermal.c_mid_initialize_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@INTEL_MSIC_ADC1CNTL3 = common dso_local global i32 0, align 4
@MSIC_ADCTHERM_MASK = common dso_local global i32 0, align 4
@channel_index = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"No free ADC channels\00", align 1
@ADC_CHNL_START_ADDR = common dso_local global i64 0, align 8
@ADC_LOOP_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"unable to enable ADC\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"ADC initialization successful\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mid_initialize_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mid_initialize_adc(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load i32, i32* @INTEL_MSIC_ADC1CNTL3, align 4
  %8 = call i32 @intel_msic_reg_read(i32 %7, i32* %4)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %69

13:                                               ; preds = %1
  %14 = load i32, i32* @MSIC_ADCTHERM_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @INTEL_MSIC_ADC1CNTL3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @intel_msic_reg_write(i32 %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %69

25:                                               ; preds = %13
  %26 = call i64 (...) @find_free_channel()
  store i64 %26, i64* @channel_index, align 8
  %27 = load i64, i64* @channel_index, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %32 = load i64, i64* @channel_index, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %69

34:                                               ; preds = %25
  %35 = load i64, i64* @ADC_CHNL_START_ADDR, align 8
  %36 = load i64, i64* @channel_index, align 8
  %37 = add nsw i64 %35, %36
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* @channel_index, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %34
  %41 = load i64, i64* @channel_index, align 8
  %42 = load i64, i64* @ADC_LOOP_MAX, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @reset_stopbit(i64 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %69

51:                                               ; preds = %44
  %52 = load i64, i64* %5, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* @channel_index, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* @channel_index, align 8
  br label %56

56:                                               ; preds = %51, %40, %34
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @set_up_therm_channel(i64 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.device*, %struct.device** %3, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %69

65:                                               ; preds = %56
  %66 = load %struct.device*, %struct.device** %3, align 8
  %67 = call i32 @dev_dbg(%struct.device* %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %61, %49, %29, %23, %11
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @intel_msic_reg_read(i32, i32*) #1

declare dso_local i32 @intel_msic_reg_write(i32, i32) #1

declare dso_local i64 @find_free_channel(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @reset_stopbit(i64) #1

declare dso_local i32 @set_up_therm_channel(i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
