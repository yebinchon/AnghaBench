; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_remap_bar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_remap_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i64, i64, i64, i32 }
%struct.pci_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NVME_REG_DBS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*, i64)* @nvme_remap_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_remap_bar(%struct.nvme_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.nvme_dev* %0, %struct.nvme_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.nvme_dev*, %struct.nvme_dev** %4, align 8
  %8 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.pci_dev* @to_pci_dev(i32 %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.nvme_dev*, %struct.nvme_dev** %4, align 8
  %13 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ule i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %20 = call i64 @pci_resource_len(%struct.pci_dev* %19, i32 0)
  %21 = icmp ugt i64 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %62

25:                                               ; preds = %17
  %26 = load %struct.nvme_dev*, %struct.nvme_dev** %4, align 8
  %27 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.nvme_dev*, %struct.nvme_dev** %4, align 8
  %32 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @iounmap(i64 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %37 = call i32 @pci_resource_start(%struct.pci_dev* %36, i32 0)
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @ioremap(i32 %37, i64 %38)
  %40 = load %struct.nvme_dev*, %struct.nvme_dev** %4, align 8
  %41 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.nvme_dev*, %struct.nvme_dev** %4, align 8
  %43 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %35
  %47 = load %struct.nvme_dev*, %struct.nvme_dev** %4, align 8
  %48 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %62

51:                                               ; preds = %35
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.nvme_dev*, %struct.nvme_dev** %4, align 8
  %54 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.nvme_dev*, %struct.nvme_dev** %4, align 8
  %56 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NVME_REG_DBS, align 8
  %59 = add nsw i64 %57, %58
  %60 = load %struct.nvme_dev*, %struct.nvme_dev** %4, align 8
  %61 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %51, %46, %22, %16
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i64 @ioremap(i32, i64) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
