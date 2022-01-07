; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_pci.c_ssb_pci_get_invariants.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_pci.c_ssb_pci_get_invariants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32 }
%struct.ssb_init_invariants = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_pci_get_invariants(%struct.ssb_bus* %0, %struct.ssb_init_invariants* %1) #0 {
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca %struct.ssb_init_invariants*, align 8
  %5 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %3, align 8
  store %struct.ssb_init_invariants* %1, %struct.ssb_init_invariants** %4, align 8
  %6 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %7 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %4, align 8
  %8 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %7, i32 0, i32 1
  %9 = call i32 @ssb_pci_sprom_get(%struct.ssb_bus* %6, i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %18

13:                                               ; preds = %2
  %14 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %15 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %4, align 8
  %16 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %15, i32 0, i32 0
  %17 = call i32 @ssb_pci_get_boardinfo(%struct.ssb_bus* %14, i32* %16)
  br label %18

18:                                               ; preds = %13, %12
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @ssb_pci_sprom_get(%struct.ssb_bus*, i32*) #1

declare dso_local i32 @ssb_pci_get_boardinfo(%struct.ssb_bus*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
