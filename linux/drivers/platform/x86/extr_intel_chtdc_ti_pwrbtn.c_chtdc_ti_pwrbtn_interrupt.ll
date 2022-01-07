; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_chtdc_ti_pwrbtn.c_chtdc_ti_pwrbtn_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_chtdc_ti_pwrbtn.c_chtdc_ti_pwrbtn_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.regmap = type { i32 }

@CHTDC_TI_SIRQ_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"SIRQ_REG=0x%x\0A\00", align 1
@KEY_POWER = common dso_local global i32 0, align 4
@SIRQ_PWRBTN_REL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @chtdc_ti_pwrbtn_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chtdc_ti_pwrbtn_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.input_dev*
  store %struct.input_dev* %10, %struct.input_dev** %5, align 8
  %11 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %12 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.regmap* @dev_get_drvdata(%struct.device* %15)
  store %struct.regmap* %16, %struct.regmap** %7, align 8
  %17 = load %struct.regmap*, %struct.regmap** %7, align 8
  %18 = load i32, i32* @CHTDC_TI_SIRQ_REG, align 4
  %19 = call i32 @regmap_read(%struct.regmap* %17, i32 %18, i32* %8)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @dev_dbg(%struct.device* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %26 = load i32, i32* @KEY_POWER, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @SIRQ_PWRBTN_REL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @input_report_key(%struct.input_dev* %25, i32 %26, i32 %32)
  %34 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %35 = call i32 @input_sync(%struct.input_dev* %34)
  br label %36

36:                                               ; preds = %21, %2
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %37
}

declare dso_local %struct.regmap* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
