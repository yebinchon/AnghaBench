; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_apex_driver.c_apex_quit_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_apex_driver.c_apex_quit_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { i32 }

@bypass_top_level = common dso_local global i64 0, align 8
@APEX_BAR_INDEX = common dso_local global i32 0, align 4
@APEX_BAR2_REG_SCU_3 = common dso_local global i32 0, align 4
@APEX_BAR2_REG_SCU_2 = common dso_local global i32 0, align 4
@APEX_RESET_DELAY = common dso_local global i32 0, align 4
@APEX_RESET_RETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"RAM did not enable within timeout (%d ms)\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@SCU3_CUR_RST_GCB_BIT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"GCB did not leave reset within timeout (%d ms)\0A\00", align 1
@allow_hw_clock_gating = common dso_local global i32 0, align 4
@SCU3_RG_PWR_STATE_OVR_MASK_WIDTH = common dso_local global i32 0, align 4
@SCU3_RG_PWR_STATE_OVR_BIT_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Disallow HW clock gating 0x%x -> 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Allow HW clock gating 0x%x -> 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gasket_dev*)* @apex_quit_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apex_quit_reset(%struct.gasket_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gasket_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gasket_dev* %0, %struct.gasket_dev** %3, align 8
  %6 = load i64, i64* @bypass_top_level, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %105

9:                                                ; preds = %1
  %10 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %11 = load i32, i32* @APEX_BAR_INDEX, align 4
  %12 = load i32, i32* @APEX_BAR2_REG_SCU_3, align 4
  %13 = call i32 @gasket_read_modify_write_32(%struct.gasket_dev* %10, i32 %11, i32 %12, i32 0, i32 2, i32 14)
  %14 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %15 = load i32, i32* @APEX_BAR_INDEX, align 4
  %16 = load i32, i32* @APEX_BAR2_REG_SCU_2, align 4
  %17 = call i32 @gasket_read_modify_write_32(%struct.gasket_dev* %14, i32 %15, i32 %16, i32 0, i32 2, i32 18)
  %18 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %19 = load i32, i32* @APEX_BAR_INDEX, align 4
  %20 = load i32, i32* @APEX_BAR2_REG_SCU_2, align 4
  %21 = call i32 @gasket_read_modify_write_32(%struct.gasket_dev* %18, i32 %19, i32 %20, i32 2, i32 2, i32 2)
  %22 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %23 = load i32, i32* @APEX_BAR_INDEX, align 4
  %24 = load i32, i32* @APEX_BAR2_REG_SCU_3, align 4
  %25 = call i32 @BIT(i32 6)
  %26 = load i32, i32* @APEX_RESET_DELAY, align 4
  %27 = load i32, i32* @APEX_RESET_RETRY, align 4
  %28 = call i64 @gasket_wait_with_reschedule(%struct.gasket_dev* %22, i32 %23, i32 %24, i32 %25, i32 0, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %9
  %31 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %32 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @APEX_RESET_RETRY, align 4
  %35 = load i32, i32* @APEX_RESET_DELAY, align 4
  %36 = mul nsw i32 %34, %35
  %37 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @ETIMEDOUT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %105

40:                                               ; preds = %9
  %41 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %42 = load i32, i32* @APEX_BAR_INDEX, align 4
  %43 = load i32, i32* @APEX_BAR2_REG_SCU_3, align 4
  %44 = load i32, i32* @SCU3_CUR_RST_GCB_BIT_MASK, align 4
  %45 = load i32, i32* @APEX_RESET_DELAY, align 4
  %46 = load i32, i32* @APEX_RESET_RETRY, align 4
  %47 = call i64 @gasket_wait_with_reschedule(%struct.gasket_dev* %41, i32 %42, i32 %43, i32 %44, i32 0, i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %40
  %50 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %51 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @APEX_RESET_RETRY, align 4
  %54 = load i32, i32* @APEX_RESET_DELAY, align 4
  %55 = mul nsw i32 %53, %54
  %56 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @ETIMEDOUT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %105

59:                                               ; preds = %40
  %60 = load i32, i32* @allow_hw_clock_gating, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %83, label %62

62:                                               ; preds = %59
  %63 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %64 = load i32, i32* @APEX_BAR_INDEX, align 4
  %65 = load i32, i32* @APEX_BAR2_REG_SCU_3, align 4
  %66 = call i32 @gasket_dev_read_32(%struct.gasket_dev* %63, i32 %64, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %68 = load i32, i32* @APEX_BAR_INDEX, align 4
  %69 = load i32, i32* @APEX_BAR2_REG_SCU_3, align 4
  %70 = load i32, i32* @SCU3_RG_PWR_STATE_OVR_MASK_WIDTH, align 4
  %71 = load i32, i32* @SCU3_RG_PWR_STATE_OVR_BIT_OFFSET, align 4
  %72 = call i32 @gasket_read_modify_write_32(%struct.gasket_dev* %67, i32 %68, i32 %69, i32 3, i32 %70, i32 %71)
  %73 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %74 = load i32, i32* @APEX_BAR_INDEX, align 4
  %75 = load i32, i32* @APEX_BAR2_REG_SCU_3, align 4
  %76 = call i32 @gasket_dev_read_32(%struct.gasket_dev* %73, i32 %74, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %78 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @dev_dbg(i32 %79, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %81)
  br label %104

83:                                               ; preds = %59
  %84 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %85 = load i32, i32* @APEX_BAR_INDEX, align 4
  %86 = load i32, i32* @APEX_BAR2_REG_SCU_3, align 4
  %87 = call i32 @gasket_dev_read_32(%struct.gasket_dev* %84, i32 %85, i32 %86)
  store i32 %87, i32* %4, align 4
  %88 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %89 = load i32, i32* @APEX_BAR_INDEX, align 4
  %90 = load i32, i32* @APEX_BAR2_REG_SCU_3, align 4
  %91 = load i32, i32* @SCU3_RG_PWR_STATE_OVR_MASK_WIDTH, align 4
  %92 = load i32, i32* @SCU3_RG_PWR_STATE_OVR_BIT_OFFSET, align 4
  %93 = call i32 @gasket_read_modify_write_32(%struct.gasket_dev* %88, i32 %89, i32 %90, i32 2, i32 %91, i32 %92)
  %94 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %95 = load i32, i32* @APEX_BAR_INDEX, align 4
  %96 = load i32, i32* @APEX_BAR2_REG_SCU_3, align 4
  %97 = call i32 @gasket_dev_read_32(%struct.gasket_dev* %94, i32 %95, i32 %96)
  store i32 %97, i32* %5, align 4
  %98 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %99 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @dev_dbg(i32 %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %83, %62
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %49, %30, %8
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @gasket_read_modify_write_32(%struct.gasket_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @gasket_wait_with_reschedule(%struct.gasket_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @gasket_dev_read_32(%struct.gasket_dev*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
