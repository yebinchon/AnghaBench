; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_msi.c_pci_write_msi_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_msi.c_pci_write_msi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_msg = type { i32 }
%struct.msi_desc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_write_msi_msg(i32 %0, %struct.msi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msi_msg*, align 8
  %5 = alloca %struct.msi_desc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.msi_msg* %1, %struct.msi_msg** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.msi_desc* @irq_get_msi_desc(i32 %6)
  store %struct.msi_desc* %7, %struct.msi_desc** %5, align 8
  %8 = load %struct.msi_desc*, %struct.msi_desc** %5, align 8
  %9 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %10 = call i32 @__pci_write_msi_msg(%struct.msi_desc* %8, %struct.msi_msg* %9)
  ret void
}

declare dso_local %struct.msi_desc* @irq_get_msi_desc(i32) #1

declare dso_local i32 @__pci_write_msi_msg(%struct.msi_desc*, %struct.msi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
