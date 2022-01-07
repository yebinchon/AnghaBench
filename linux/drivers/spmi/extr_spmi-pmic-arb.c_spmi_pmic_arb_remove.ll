; ModuleID = '/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_spmi_pmic_arb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_spmi_pmic_arb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.spmi_controller = type { i32 }
%struct.spmi_pmic_arb = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spmi_pmic_arb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spmi_pmic_arb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.spmi_controller*, align 8
  %4 = alloca %struct.spmi_pmic_arb*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.spmi_controller* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.spmi_controller* %6, %struct.spmi_controller** %3, align 8
  %7 = load %struct.spmi_controller*, %struct.spmi_controller** %3, align 8
  %8 = call %struct.spmi_pmic_arb* @spmi_controller_get_drvdata(%struct.spmi_controller* %7)
  store %struct.spmi_pmic_arb* %8, %struct.spmi_pmic_arb** %4, align 8
  %9 = load %struct.spmi_controller*, %struct.spmi_controller** %3, align 8
  %10 = call i32 @spmi_controller_remove(%struct.spmi_controller* %9)
  %11 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %4, align 8
  %12 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @irq_set_chained_handler_and_data(i32 %13, i32* null, i32* null)
  %15 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %4, align 8
  %16 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @irq_domain_remove(i32 %17)
  %19 = load %struct.spmi_controller*, %struct.spmi_controller** %3, align 8
  %20 = call i32 @spmi_controller_put(%struct.spmi_controller* %19)
  ret i32 0
}

declare dso_local %struct.spmi_controller* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.spmi_pmic_arb* @spmi_controller_get_drvdata(%struct.spmi_controller*) #1

declare dso_local i32 @spmi_controller_remove(%struct.spmi_controller*) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32*, i32*) #1

declare dso_local i32 @irq_domain_remove(i32) #1

declare dso_local i32 @spmi_controller_put(%struct.spmi_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
