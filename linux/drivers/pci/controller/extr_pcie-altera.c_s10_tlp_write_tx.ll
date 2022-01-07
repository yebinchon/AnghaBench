; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c_s10_tlp_write_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c_s10_tlp_write_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_pcie = type { i32 }

@RP_TX_REG0 = common dso_local global i32 0, align 4
@S10_RP_TX_CNTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.altera_pcie*, i32, i32)* @s10_tlp_write_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s10_tlp_write_tx(%struct.altera_pcie* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.altera_pcie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.altera_pcie* %0, %struct.altera_pcie** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.altera_pcie*, %struct.altera_pcie** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @RP_TX_REG0, align 4
  %10 = call i32 @cra_writel(%struct.altera_pcie* %7, i32 %8, i32 %9)
  %11 = load %struct.altera_pcie*, %struct.altera_pcie** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @S10_RP_TX_CNTRL, align 4
  %14 = call i32 @cra_writel(%struct.altera_pcie* %11, i32 %12, i32 %13)
  ret void
}

declare dso_local i32 @cra_writel(%struct.altera_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
