; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_get_pci_dr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_get_pci_dr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devres = type { i32 }
%struct.pci_dev = type { i32 }

@pcim_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_devres* (%struct.pci_dev*)* @get_pci_dr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_devres* @get_pci_dr(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_devres*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_devres*, align 8
  %5 = alloca %struct.pci_devres*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = load i32, i32* @pcim_release, align 4
  %9 = call %struct.pci_devres* @devres_find(i32* %7, i32 %8, i32* null, i32* null)
  store %struct.pci_devres* %9, %struct.pci_devres** %4, align 8
  %10 = load %struct.pci_devres*, %struct.pci_devres** %4, align 8
  %11 = icmp ne %struct.pci_devres* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load %struct.pci_devres*, %struct.pci_devres** %4, align 8
  store %struct.pci_devres* %13, %struct.pci_devres** %2, align 8
  br label %26

14:                                               ; preds = %1
  %15 = load i32, i32* @pcim_release, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.pci_devres* @devres_alloc(i32 %15, i32 4, i32 %16)
  store %struct.pci_devres* %17, %struct.pci_devres** %5, align 8
  %18 = load %struct.pci_devres*, %struct.pci_devres** %5, align 8
  %19 = icmp ne %struct.pci_devres* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store %struct.pci_devres* null, %struct.pci_devres** %2, align 8
  br label %26

21:                                               ; preds = %14
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load %struct.pci_devres*, %struct.pci_devres** %5, align 8
  %25 = call %struct.pci_devres* @devres_get(i32* %23, %struct.pci_devres* %24, i32* null, i32* null)
  store %struct.pci_devres* %25, %struct.pci_devres** %2, align 8
  br label %26

26:                                               ; preds = %21, %20, %12
  %27 = load %struct.pci_devres*, %struct.pci_devres** %2, align 8
  ret %struct.pci_devres* %27
}

declare dso_local %struct.pci_devres* @devres_find(i32*, i32, i32*, i32*) #1

declare dso_local %struct.pci_devres* @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.pci_devres* @devres_get(i32*, %struct.pci_devres*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
