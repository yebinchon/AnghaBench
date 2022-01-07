; ModuleID = '/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_qpnpint_irq_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_qpnpint_irq_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.spmi_pmic_arb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.spmi_pmic_arb*, i32)* }

@QPNPINT_REG_LATCHED_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @qpnpint_irq_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qpnpint_irq_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.spmi_pmic_arb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.spmi_pmic_arb* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.spmi_pmic_arb* %8, %struct.spmi_pmic_arb** %3, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @hwirq_to_irq(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %14 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @hwirq_to_apid(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %3, align 8
  %20 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.spmi_pmic_arb*, i32)*, i32 (%struct.spmi_pmic_arb*, i32)** %22, align 8
  %24 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 %23(%struct.spmi_pmic_arb* %24, i32 %25)
  %27 = call i32 @writel_relaxed(i32 %18, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @BIT(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %31 = load i32, i32* @QPNPINT_REG_LATCHED_CLR, align 4
  %32 = call i32 @qpnpint_spmi_write(%struct.irq_data* %30, i32 %31, i32* %6, i32 1)
  ret void
}

declare dso_local %struct.spmi_pmic_arb* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @hwirq_to_irq(i32) #1

declare dso_local i32 @hwirq_to_apid(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @qpnpint_spmi_write(%struct.irq_data*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
