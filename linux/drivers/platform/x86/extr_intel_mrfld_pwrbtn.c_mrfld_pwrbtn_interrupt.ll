; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_mrfld_pwrbtn.c_mrfld_pwrbtn_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_mrfld_pwrbtn.c_mrfld_pwrbtn_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.regmap = type { i32 }

@BCOVE_PBSTATUS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"PBSTATUS=0x%x\0A\00", align 1
@KEY_POWER = common dso_local global i32 0, align 4
@BCOVE_PBSTATUS_PBLVL = common dso_local global i32 0, align 4
@BCOVE_MIRQLVL1 = common dso_local global i32 0, align 4
@BCOVE_LVL1_PWRBTN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mrfld_pwrbtn_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrfld_pwrbtn_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.input_dev*
  store %struct.input_dev* %12, %struct.input_dev** %6, align 8
  %13 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %14 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %7, align 8
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = call %struct.regmap* @dev_get_drvdata(%struct.device* %17)
  store %struct.regmap* %18, %struct.regmap** %8, align 8
  %19 = load %struct.regmap*, %struct.regmap** %8, align 8
  %20 = load i32, i32* @BCOVE_PBSTATUS, align 4
  %21 = call i32 @regmap_read(%struct.regmap* %19, i32 %20, i32* %9)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %46

26:                                               ; preds = %2
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @dev_dbg(%struct.device* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %31 = load i32, i32* @KEY_POWER, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @BCOVE_PBSTATUS_PBLVL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @input_report_key(%struct.input_dev* %30, i32 %31, i32 %37)
  %39 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %40 = call i32 @input_sync(%struct.input_dev* %39)
  %41 = load %struct.regmap*, %struct.regmap** %8, align 8
  %42 = load i32, i32* @BCOVE_MIRQLVL1, align 4
  %43 = load i32, i32* @BCOVE_LVL1_PWRBTN, align 4
  %44 = call i32 @regmap_update_bits(%struct.regmap* %41, i32 %42, i32 %43, i32 0)
  %45 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %26, %24
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.regmap* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
