; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/functions/extr_pci-epf-test.c_pci_epf_test_linkup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/functions/extr_pci-epf-test.c_pci_epf_test_linkup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epf = type { i32 }
%struct.pci_epf_test = type { i32 }

@kpcitest_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_epf*)* @pci_epf_test_linkup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_epf_test_linkup(%struct.pci_epf* %0) #0 {
  %2 = alloca %struct.pci_epf*, align 8
  %3 = alloca %struct.pci_epf_test*, align 8
  store %struct.pci_epf* %0, %struct.pci_epf** %2, align 8
  %4 = load %struct.pci_epf*, %struct.pci_epf** %2, align 8
  %5 = call %struct.pci_epf_test* @epf_get_drvdata(%struct.pci_epf* %4)
  store %struct.pci_epf_test* %5, %struct.pci_epf_test** %3, align 8
  %6 = load i32, i32* @kpcitest_workqueue, align 4
  %7 = load %struct.pci_epf_test*, %struct.pci_epf_test** %3, align 8
  %8 = getelementptr inbounds %struct.pci_epf_test, %struct.pci_epf_test* %7, i32 0, i32 0
  %9 = call i32 @msecs_to_jiffies(i32 1)
  %10 = call i32 @queue_delayed_work(i32 %6, i32* %8, i32 %9)
  ret void
}

declare dso_local %struct.pci_epf_test* @epf_get_drvdata(%struct.pci_epf*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
