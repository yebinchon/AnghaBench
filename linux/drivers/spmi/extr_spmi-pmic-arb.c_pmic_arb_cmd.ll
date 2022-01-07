; ModuleID = '/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_pmic_arb_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_pmic_arb_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_controller = type { i32 }
%struct.spmi_pmic_arb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.spmi_controller*, i32, i32)* }

@.str = private unnamed_addr constant [20 x i8] c"cmd op:0x%x sid:%d\0A\00", align 1
@SPMI_CMD_RESET = common dso_local global i32 0, align 4
@SPMI_CMD_WAKEUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spmi_controller*, i32, i32)* @pmic_arb_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_arb_cmd(%struct.spmi_controller* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spmi_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.spmi_pmic_arb*, align 8
  store %struct.spmi_controller* %0, %struct.spmi_controller** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.spmi_controller*, %struct.spmi_controller** %5, align 8
  %10 = call %struct.spmi_pmic_arb* @spmi_controller_get_drvdata(%struct.spmi_controller* %9)
  store %struct.spmi_pmic_arb* %10, %struct.spmi_pmic_arb** %8, align 8
  %11 = load %struct.spmi_controller*, %struct.spmi_controller** %5, align 8
  %12 = getelementptr inbounds %struct.spmi_controller, %struct.spmi_controller* %11, i32 0, i32 0
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @SPMI_CMD_RESET, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SPMI_CMD_WAKEUP, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %36

26:                                               ; preds = %19
  %27 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %8, align 8
  %28 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.spmi_controller*, i32, i32)*, i32 (%struct.spmi_controller*, i32, i32)** %30, align 8
  %32 = load %struct.spmi_controller*, %struct.spmi_controller** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 %31(%struct.spmi_controller* %32, i32 %33, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %26, %23
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.spmi_pmic_arb* @spmi_controller_get_drvdata(%struct.spmi_controller*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
