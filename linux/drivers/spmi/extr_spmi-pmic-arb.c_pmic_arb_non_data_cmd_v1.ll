; ModuleID = '/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_pmic_arb_non_data_cmd_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_pmic_arb_non_data_cmd_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_controller = type { i32 }
%struct.spmi_pmic_arb = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.spmi_pmic_arb*, i32, i32, i32)* }

@PMIC_ARB_CHANNEL_RW = common dso_local global i32 0, align 4
@PMIC_ARB_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spmi_controller*, i32, i32)* @pmic_arb_non_data_cmd_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_arb_non_data_cmd_v1(%struct.spmi_controller* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spmi_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.spmi_pmic_arb*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.spmi_controller* %0, %struct.spmi_controller** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.spmi_controller*, %struct.spmi_controller** %5, align 8
  %14 = call %struct.spmi_pmic_arb* @spmi_controller_get_drvdata(%struct.spmi_controller* %13)
  store %struct.spmi_pmic_arb* %14, %struct.spmi_pmic_arb** %8, align 8
  %15 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %8, align 8
  %16 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.spmi_pmic_arb*, i32, i32, i32)*, i32 (%struct.spmi_pmic_arb*, i32, i32, i32)** %18, align 8
  %20 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @PMIC_ARB_CHANNEL_RW, align 4
  %23 = call i32 %19(%struct.spmi_pmic_arb* %20, i32 %21, i32 0, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %4, align 4
  br label %60

28:                                               ; preds = %3
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, 64
  %32 = shl i32 %31, 27
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 15
  %35 = shl i32 %34, 20
  %36 = or i32 %32, %35
  store i32 %36, i32* %10, align 4
  %37 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %8, align 8
  %38 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %37, i32 0, i32 0
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @raw_spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %8, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* @PMIC_ARB_CMD, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @pmic_arb_base_write(%struct.spmi_pmic_arb* %41, i64 %45, i32 %46)
  %48 = load %struct.spmi_controller*, %struct.spmi_controller** %5, align 8
  %49 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %8, align 8
  %50 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @PMIC_ARB_CHANNEL_RW, align 4
  %54 = call i32 @pmic_arb_wait_for_done(%struct.spmi_controller* %48, i32 %51, i32 %52, i32 0, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %8, align 8
  %56 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %55, i32 0, i32 0
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @raw_spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %28, %26
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.spmi_pmic_arb* @spmi_controller_get_drvdata(%struct.spmi_controller*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pmic_arb_base_write(%struct.spmi_pmic_arb*, i64, i32) #1

declare dso_local i32 @pmic_arb_wait_for_done(%struct.spmi_controller*, i32, i32, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
