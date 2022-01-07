; ModuleID = '/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_qpnpint_irq_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_qpnpint_irq_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.spmi_pmic_arb* }
%struct.spmi_pmic_arb = type { i32 }
%struct.irq_fwspec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @qpnpint_irq_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qpnpint_irq_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.spmi_pmic_arb*, align 8
  %11 = alloca %struct.irq_fwspec*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %17 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %16, i32 0, i32 0
  %18 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %17, align 8
  store %struct.spmi_pmic_arb* %18, %struct.spmi_pmic_arb** %10, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.irq_fwspec*
  store %struct.irq_fwspec* %20, %struct.irq_fwspec** %11, align 8
  %21 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %22 = load %struct.irq_fwspec*, %struct.irq_fwspec** %11, align 8
  %23 = call i32 @qpnpint_irq_domain_translate(%struct.irq_domain* %21, %struct.irq_fwspec* %22, i64* %12, i32* %13)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %5, align 4
  br label %49

28:                                               ; preds = %4
  store i32 0, i32* %15, align 4
  br label %29

29:                                               ; preds = %45, %28
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %10, align 8
  %35 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %15, align 4
  %38 = add i32 %36, %37
  %39 = load i64, i64* %12, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @qpnpint_irq_domain_map(%struct.spmi_pmic_arb* %34, %struct.irq_domain* %35, i32 %38, i64 %42, i32 %43)
  br label %45

45:                                               ; preds = %33
  %46 = load i32, i32* %15, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %15, align 4
  br label %29

48:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %26
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @qpnpint_irq_domain_translate(%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*) #1

declare dso_local i32 @qpnpint_irq_domain_map(%struct.spmi_pmic_arb*, %struct.irq_domain*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
