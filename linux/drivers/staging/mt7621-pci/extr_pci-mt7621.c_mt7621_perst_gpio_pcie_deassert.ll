; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci/extr_pci-mt7621.c_mt7621_perst_gpio_pcie_deassert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci/extr_pci-mt7621.c_mt7621_perst_gpio_pcie_deassert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7621_pcie = type { i32 }

@PERST_DELAY_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7621_pcie*)* @mt7621_perst_gpio_pcie_deassert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7621_perst_gpio_pcie_deassert(%struct.mt7621_pcie* %0) #0 {
  %2 = alloca %struct.mt7621_pcie*, align 8
  store %struct.mt7621_pcie* %0, %struct.mt7621_pcie** %2, align 8
  %3 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %2, align 8
  %4 = getelementptr inbounds %struct.mt7621_pcie, %struct.mt7621_pcie* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @gpiod_set_value(i32 %5, i32 1)
  %7 = load i32, i32* @PERST_DELAY_US, align 4
  %8 = call i32 @mdelay(i32 %7)
  ret void
}

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
