; ModuleID = '/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_qpnpint_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_qpnpint_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.spmi_pmic_arb = type { %struct.pmic_arb_ver_ops* }
%struct.pmic_arb_ver_ops = type { i32 (%struct.spmi_pmic_arb*, i32)* }

@SPMI_PIC_ACC_ENABLE_BIT = common dso_local global i32 0, align 4
@QPNPINT_REG_EN_SET = common dso_local global i32 0, align 4
@QPNPINT_REG_LATCHED_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @qpnpint_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qpnpint_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.spmi_pmic_arb*, align 8
  %4 = alloca %struct.pmic_arb_ver_ops*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = call %struct.spmi_pmic_arb* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.spmi_pmic_arb* %9, %struct.spmi_pmic_arb** %3, align 8
  %10 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %3, align 8
  %11 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %10, i32 0, i32 0
  %12 = load %struct.pmic_arb_ver_ops*, %struct.pmic_arb_ver_ops** %11, align 8
  store %struct.pmic_arb_ver_ops* %12, %struct.pmic_arb_ver_ops** %4, align 8
  %13 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %14 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @hwirq_to_irq(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %18 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @hwirq_to_apid(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @SPMI_PIC_ACC_ENABLE_BIT, align 4
  %22 = load %struct.pmic_arb_ver_ops*, %struct.pmic_arb_ver_ops** %4, align 8
  %23 = getelementptr inbounds %struct.pmic_arb_ver_ops, %struct.pmic_arb_ver_ops* %22, i32 0, i32 0
  %24 = load i32 (%struct.spmi_pmic_arb*, i32)*, i32 (%struct.spmi_pmic_arb*, i32)** %23, align 8
  %25 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 %24(%struct.spmi_pmic_arb* %25, i32 %26)
  %28 = call i32 @writel_relaxed(i32 %21, i32 %27)
  %29 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %30 = load i32, i32* @QPNPINT_REG_EN_SET, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %32 = call i32 @qpnpint_spmi_read(%struct.irq_data* %29, i32 %30, i32* %31, i32 1)
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %1
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %47 = load i32, i32* @QPNPINT_REG_LATCHED_CLR, align 4
  %48 = bitcast [2 x i32]* %7 to i32**
  %49 = call i32 @qpnpint_spmi_write(%struct.irq_data* %46, i32 %47, i32** %48, i32 2)
  br label %50

50:                                               ; preds = %39, %1
  ret void
}

declare dso_local %struct.spmi_pmic_arb* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @hwirq_to_irq(i32) #1

declare dso_local i32 @hwirq_to_apid(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @qpnpint_spmi_read(%struct.irq_data*, i32, i32*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @qpnpint_spmi_write(%struct.irq_data*, i32, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
