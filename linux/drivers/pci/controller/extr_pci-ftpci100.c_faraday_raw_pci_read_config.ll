; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-ftpci100.c_faraday_raw_pci_read_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-ftpci100.c_faraday_raw_pci_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.faraday_pci = type { i64 }

@PCI_CONF_ENABLE = common dso_local global i32 0, align 4
@PCI_CONFIG = common dso_local global i64 0, align 8
@PCI_DATA = common dso_local global i64 0, align 8
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.faraday_pci*, i32, i32, i32, i32, i32*)* @faraday_raw_pci_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @faraday_raw_pci_read_config(%struct.faraday_pci* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.faraday_pci*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.faraday_pci* %0, %struct.faraday_pci** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @PCI_CONF_BUS(i32 %13)
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @PCI_SLOT(i32 %15)
  %17 = call i32 @PCI_CONF_DEVICE(i32 %16)
  %18 = or i32 %14, %17
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @PCI_FUNC(i32 %19)
  %21 = call i32 @PCI_CONF_FUNCTION(i32 %20)
  %22 = or i32 %18, %21
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @PCI_CONF_WHERE(i32 %23)
  %25 = or i32 %22, %24
  %26 = load i32, i32* @PCI_CONF_ENABLE, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.faraday_pci*, %struct.faraday_pci** %7, align 8
  %29 = getelementptr inbounds %struct.faraday_pci, %struct.faraday_pci* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PCI_CONFIG, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  %34 = load %struct.faraday_pci*, %struct.faraday_pci** %7, align 8
  %35 = getelementptr inbounds %struct.faraday_pci, %struct.faraday_pci* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PCI_DATA, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl(i64 %38)
  %40 = load i32*, i32** %12, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %52

43:                                               ; preds = %6
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %46, 3
  %48 = mul nsw i32 8, %47
  %49 = ashr i32 %45, %48
  %50 = and i32 %49, 255
  %51 = load i32*, i32** %12, align 8
  store i32 %50, i32* %51, align 4
  br label %65

52:                                               ; preds = %6
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %10, align 4
  %59 = and i32 %58, 3
  %60 = mul nsw i32 8, %59
  %61 = ashr i32 %57, %60
  %62 = and i32 %61, 65535
  %63 = load i32*, i32** %12, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %55, %52
  br label %65

65:                                               ; preds = %64, %43
  %66 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  ret i32 %66
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @PCI_CONF_BUS(i32) #1

declare dso_local i32 @PCI_CONF_DEVICE(i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_CONF_FUNCTION(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @PCI_CONF_WHERE(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
