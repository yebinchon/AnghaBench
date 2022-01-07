; ModuleID = '/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_qpnpint_irq_domain_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_qpnpint_irq_domain_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_data = type { i32 }
%struct.spmi_pmic_arb = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [71 x i8] c"failed to xlate sid = %#x, periph = %#x, irq = %u: ee=%u but owner=%u\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.irq_data*, i32)* @qpnpint_irq_domain_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qpnpint_irq_domain_activate(%struct.irq_domain* %0, %struct.irq_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca %struct.irq_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.spmi_pmic_arb*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store %struct.irq_data* %1, %struct.irq_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %14 = call %struct.spmi_pmic_arb* @irq_data_get_irq_chip_data(%struct.irq_data* %13)
  store %struct.spmi_pmic_arb* %14, %struct.spmi_pmic_arb** %8, align 8
  %15 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %16 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @hwirq_to_per(i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %20 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @hwirq_to_apid(i32 %21)
  store i64 %22, i64* %10, align 8
  %23 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %24 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @hwirq_to_sid(i32 %25)
  store i64 %26, i64* %11, align 8
  %27 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %28 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @hwirq_to_irq(i32 %29)
  store i64 %30, i64* %12, align 8
  %31 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %8, align 8
  %32 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %8, align 8
  %39 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %3
  %43 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %8, align 8
  %44 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %8, align 8
  %51 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %8, align 8
  %54 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i64 %47, i64 %48, i64 %49, i64 %52, i64 %59)
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %64

63:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %42
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.spmi_pmic_arb* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i64 @hwirq_to_per(i32) #1

declare dso_local i64 @hwirq_to_apid(i32) #1

declare dso_local i64 @hwirq_to_sid(i32) #1

declare dso_local i64 @hwirq_to_irq(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
