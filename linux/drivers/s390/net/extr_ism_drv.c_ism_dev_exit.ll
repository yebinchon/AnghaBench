; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_dev_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_dev_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ism_dev = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ism_dev*)* @ism_dev_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ism_dev_exit(%struct.ism_dev* %0) #0 {
  %2 = alloca %struct.ism_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.ism_dev* %0, %struct.ism_dev** %2, align 8
  %4 = load %struct.ism_dev*, %struct.ism_dev** %2, align 8
  %5 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %4, i32 0, i32 1
  %6 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.ism_dev*, %struct.ism_dev** %2, align 8
  %8 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @smcd_unregister_dev(i32 %9)
  %11 = load %struct.ism_dev*, %struct.ism_dev** %2, align 8
  %12 = call i32 @unregister_ieq(%struct.ism_dev* %11)
  %13 = load %struct.ism_dev*, %struct.ism_dev** %2, align 8
  %14 = call i32 @unregister_sba(%struct.ism_dev* %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = call i32 @pci_irq_vector(%struct.pci_dev* %15, i32 0)
  %17 = load %struct.ism_dev*, %struct.ism_dev** %2, align 8
  %18 = call i32 @free_irq(i32 %16, %struct.ism_dev* %17)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %19)
  ret void
}

declare dso_local i32 @smcd_unregister_dev(i32) #1

declare dso_local i32 @unregister_ieq(%struct.ism_dev*) #1

declare dso_local i32 @unregister_sba(%struct.ism_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.ism_dev*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
