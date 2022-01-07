; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_release_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_release_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_devres = type { i32 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_release_region(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_devres*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @pci_resource_len(%struct.pci_dev* %6, i32 %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %55

11:                                               ; preds = %2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @pci_resource_flags(%struct.pci_dev* %12, i32 %13)
  %15 = load i32, i32* @IORESOURCE_IO, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @pci_resource_start(%struct.pci_dev* %19, i32 %20)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @pci_resource_len(%struct.pci_dev* %22, i32 %23)
  %25 = call i32 @release_region(i32 %21, i64 %24)
  br label %42

26:                                               ; preds = %11
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @pci_resource_flags(%struct.pci_dev* %27, i32 %28)
  %30 = load i32, i32* @IORESOURCE_MEM, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @pci_resource_start(%struct.pci_dev* %34, i32 %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @pci_resource_len(%struct.pci_dev* %37, i32 %38)
  %40 = call i32 @release_mem_region(i32 %36, i64 %39)
  br label %41

41:                                               ; preds = %33, %26
  br label %42

42:                                               ; preds = %41, %18
  %43 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %44 = call %struct.pci_devres* @find_pci_dr(%struct.pci_dev* %43)
  store %struct.pci_devres* %44, %struct.pci_devres** %5, align 8
  %45 = load %struct.pci_devres*, %struct.pci_devres** %5, align 8
  %46 = icmp ne %struct.pci_devres* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = shl i32 1, %48
  %50 = xor i32 %49, -1
  %51 = load %struct.pci_devres*, %struct.pci_devres** %5, align 8
  %52 = getelementptr inbounds %struct.pci_devres, %struct.pci_devres* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %10, %47, %42
  ret void
}

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @release_region(i32, i64) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @release_mem_region(i32, i64) #1

declare dso_local %struct.pci_devres* @find_pci_dr(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
