; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_pcie = type { i32 }

@IPROC_PCIE_INTX_EN = common dso_local global i32 0, align 4
@SYS_RC_INTX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iproc_pcie*)* @iproc_pcie_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iproc_pcie_enable(%struct.iproc_pcie* %0) #0 {
  %2 = alloca %struct.iproc_pcie*, align 8
  store %struct.iproc_pcie* %0, %struct.iproc_pcie** %2, align 8
  %3 = load %struct.iproc_pcie*, %struct.iproc_pcie** %2, align 8
  %4 = load i32, i32* @IPROC_PCIE_INTX_EN, align 4
  %5 = load i32, i32* @SYS_RC_INTX_MASK, align 4
  %6 = call i32 @iproc_pcie_write_reg(%struct.iproc_pcie* %3, i32 %4, i32 %5)
  ret void
}

declare dso_local i32 @iproc_pcie_write_reg(%struct.iproc_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
