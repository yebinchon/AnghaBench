; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_apex_driver.c_apex_enter_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_apex_driver.c_apex_enter_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { i32 }

@bypass_top_level = common dso_local global i64 0, align 8
@APEX_BAR_INDEX = common dso_local global i32 0, align 4
@APEX_BAR2_REG_IDLEGENERATOR_IDLEGEN_IDLEREGISTER = common dso_local global i32 0, align 4
@APEX_BAR2_REG_USER_HIB_DMA_PAUSE = common dso_local global i32 0, align 4
@APEX_BAR2_REG_USER_HIB_DMA_PAUSED = common dso_local global i32 0, align 4
@APEX_RESET_DELAY = common dso_local global i32 0, align 4
@APEX_RESET_RETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"DMAs did not quiesce within timeout (%d ms)\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@APEX_BAR2_REG_SCU_2 = common dso_local global i32 0, align 4
@APEX_BAR2_REG_SCU_3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"RAM did not shut down within timeout (%d ms)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gasket_dev*)* @apex_enter_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apex_enter_reset(%struct.gasket_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gasket_dev*, align 8
  store %struct.gasket_dev* %0, %struct.gasket_dev** %3, align 8
  %4 = load i64, i64* @bypass_top_level, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

7:                                                ; preds = %1
  %8 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %9 = load i32, i32* @APEX_BAR_INDEX, align 4
  %10 = load i32, i32* @APEX_BAR2_REG_IDLEGENERATOR_IDLEGEN_IDLEREGISTER, align 4
  %11 = call i32 @gasket_read_modify_write_64(%struct.gasket_dev* %8, i32 %9, i32 %10, i32 0, i32 1, i32 32)
  %12 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %13 = load i32, i32* @APEX_BAR_INDEX, align 4
  %14 = load i32, i32* @APEX_BAR2_REG_USER_HIB_DMA_PAUSE, align 4
  %15 = call i32 @gasket_dev_write_64(%struct.gasket_dev* %12, i32 1, i32 %13, i32 %14)
  %16 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %17 = load i32, i32* @APEX_BAR_INDEX, align 4
  %18 = load i32, i32* @APEX_BAR2_REG_USER_HIB_DMA_PAUSED, align 4
  %19 = load i32, i32* @APEX_RESET_DELAY, align 4
  %20 = load i32, i32* @APEX_RESET_RETRY, align 4
  %21 = call i64 @gasket_wait_with_reschedule(%struct.gasket_dev* %16, i32 %17, i32 %18, i32 1, i32 1, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %7
  %24 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %25 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @APEX_RESET_RETRY, align 4
  %28 = load i32, i32* @APEX_RESET_DELAY, align 4
  %29 = mul nsw i32 %27, %28
  %30 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @ETIMEDOUT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %66

33:                                               ; preds = %7
  %34 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %35 = load i32, i32* @APEX_BAR_INDEX, align 4
  %36 = load i32, i32* @APEX_BAR2_REG_SCU_2, align 4
  %37 = call i32 @gasket_read_modify_write_32(%struct.gasket_dev* %34, i32 %35, i32 %36, i32 1, i32 2, i32 2)
  %38 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %39 = load i32, i32* @APEX_BAR_INDEX, align 4
  %40 = load i32, i32* @APEX_BAR2_REG_SCU_2, align 4
  %41 = call i32 @gasket_read_modify_write_32(%struct.gasket_dev* %38, i32 %39, i32 %40, i32 1, i32 2, i32 18)
  %42 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %43 = load i32, i32* @APEX_BAR_INDEX, align 4
  %44 = load i32, i32* @APEX_BAR2_REG_SCU_3, align 4
  %45 = call i32 @gasket_read_modify_write_32(%struct.gasket_dev* %42, i32 %43, i32 %44, i32 3, i32 2, i32 14)
  %46 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %47 = load i32, i32* @APEX_BAR_INDEX, align 4
  %48 = load i32, i32* @APEX_BAR2_REG_SCU_3, align 4
  %49 = call i32 @BIT(i32 6)
  %50 = call i32 @BIT(i32 6)
  %51 = load i32, i32* @APEX_RESET_DELAY, align 4
  %52 = load i32, i32* @APEX_RESET_RETRY, align 4
  %53 = call i64 @gasket_wait_with_reschedule(%struct.gasket_dev* %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %33
  %56 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %57 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @APEX_RESET_RETRY, align 4
  %60 = load i32, i32* @APEX_RESET_DELAY, align 4
  %61 = mul nsw i32 %59, %60
  %62 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @ETIMEDOUT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %55, %23, %6
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @gasket_read_modify_write_64(%struct.gasket_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gasket_dev_write_64(%struct.gasket_dev*, i32, i32, i32) #1

declare dso_local i64 @gasket_wait_with_reschedule(%struct.gasket_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @gasket_read_modify_write_32(%struct.gasket_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
