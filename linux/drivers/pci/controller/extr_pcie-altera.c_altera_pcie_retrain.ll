; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c_altera_pcie_retrain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c_altera_pcie_retrain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_pcie = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.altera_pcie*)* }

@RP_DEVFN = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_SLS = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_SLS_2_5GB = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA_CLS = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA_CLS_2_5GB = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL_RL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.altera_pcie*)* @altera_pcie_retrain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altera_pcie_retrain(%struct.altera_pcie* %0) #0 {
  %2 = alloca %struct.altera_pcie*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.altera_pcie* %0, %struct.altera_pcie** %2, align 8
  %6 = load %struct.altera_pcie*, %struct.altera_pcie** %2, align 8
  %7 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (%struct.altera_pcie*)*, i32 (%struct.altera_pcie*)** %11, align 8
  %13 = load %struct.altera_pcie*, %struct.altera_pcie** %2, align 8
  %14 = call i32 %12(%struct.altera_pcie* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %65

17:                                               ; preds = %1
  %18 = load %struct.altera_pcie*, %struct.altera_pcie** %2, align 8
  %19 = load %struct.altera_pcie*, %struct.altera_pcie** %2, align 8
  %20 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @RP_DEVFN, align 4
  %23 = load i32, i32* @PCI_EXP_LNKCAP, align 4
  %24 = call i32 @altera_read_cap_word(%struct.altera_pcie* %18, i32 %21, i32 %22, i32 %23, i32* %3)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @PCI_EXP_LNKCAP_SLS, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @PCI_EXP_LNKCAP_SLS_2_5GB, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br label %65

31:                                               ; preds = %17
  %32 = load %struct.altera_pcie*, %struct.altera_pcie** %2, align 8
  %33 = load %struct.altera_pcie*, %struct.altera_pcie** %2, align 8
  %34 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @RP_DEVFN, align 4
  %37 = load i32, i32* @PCI_EXP_LNKSTA, align 4
  %38 = call i32 @altera_read_cap_word(%struct.altera_pcie* %32, i32 %35, i32 %36, i32 %37, i32* %4)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @PCI_EXP_LNKSTA_CLS, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @PCI_EXP_LNKSTA_CLS_2_5GB, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %31
  %45 = load %struct.altera_pcie*, %struct.altera_pcie** %2, align 8
  %46 = load %struct.altera_pcie*, %struct.altera_pcie** %2, align 8
  %47 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @RP_DEVFN, align 4
  %50 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %51 = call i32 @altera_read_cap_word(%struct.altera_pcie* %45, i32 %48, i32 %49, i32 %50, i32* %5)
  %52 = load i32, i32* @PCI_EXP_LNKCTL_RL, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load %struct.altera_pcie*, %struct.altera_pcie** %2, align 8
  %56 = load %struct.altera_pcie*, %struct.altera_pcie** %2, align 8
  %57 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @RP_DEVFN, align 4
  %60 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @altera_write_cap_word(%struct.altera_pcie* %55, i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.altera_pcie*, %struct.altera_pcie** %2, align 8
  %64 = call i32 @altera_wait_link_retrain(%struct.altera_pcie* %63)
  br label %65

65:                                               ; preds = %16, %30, %44, %31
  ret void
}

declare dso_local i32 @altera_read_cap_word(%struct.altera_pcie*, i32, i32, i32, i32*) #1

declare dso_local i32 @altera_write_cap_word(%struct.altera_pcie*, i32, i32, i32, i32) #1

declare dso_local i32 @altera_wait_link_retrain(%struct.altera_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
