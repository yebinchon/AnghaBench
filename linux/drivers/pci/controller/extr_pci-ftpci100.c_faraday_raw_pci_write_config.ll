; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-ftpci100.c_faraday_raw_pci_write_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-ftpci100.c_faraday_raw_pci_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.faraday_pci = type { i64 }

@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@PCI_CONF_ENABLE = common dso_local global i32 0, align 4
@PCI_CONFIG = common dso_local global i64 0, align 8
@PCI_DATA = common dso_local global i64 0, align 8
@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.faraday_pci*, i32, i32, i32, i32, i32)* @faraday_raw_pci_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @faraday_raw_pci_write_config(%struct.faraday_pci* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.faraday_pci*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.faraday_pci* %0, %struct.faraday_pci** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @PCI_CONF_BUS(i32 %15)
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @PCI_SLOT(i32 %17)
  %19 = call i32 @PCI_CONF_DEVICE(i32 %18)
  %20 = or i32 %16, %19
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @PCI_FUNC(i32 %21)
  %23 = call i32 @PCI_CONF_FUNCTION(i32 %22)
  %24 = or i32 %20, %23
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @PCI_CONF_WHERE(i32 %25)
  %27 = or i32 %24, %26
  %28 = load i32, i32* @PCI_CONF_ENABLE, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.faraday_pci*, %struct.faraday_pci** %7, align 8
  %31 = getelementptr inbounds %struct.faraday_pci, %struct.faraday_pci* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PCI_CONFIG, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load i32, i32* %11, align 4
  switch i32 %36, label %71 [
    i32 4, label %37
    i32 2, label %45
    i32 1, label %58
  ]

37:                                               ; preds = %6
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.faraday_pci*, %struct.faraday_pci** %7, align 8
  %40 = getelementptr inbounds %struct.faraday_pci, %struct.faraday_pci* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PCI_DATA, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  br label %73

45:                                               ; preds = %6
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.faraday_pci*, %struct.faraday_pci** %7, align 8
  %48 = getelementptr inbounds %struct.faraday_pci, %struct.faraday_pci* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PCI_DATA, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, 3
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %51, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @writew(i32 %46, i32 %56)
  br label %73

58:                                               ; preds = %6
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.faraday_pci*, %struct.faraday_pci** %7, align 8
  %61 = getelementptr inbounds %struct.faraday_pci, %struct.faraday_pci* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PCI_DATA, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, 3
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %64, %67
  %69 = trunc i64 %68 to i32
  %70 = call i32 @writeb(i32 %59, i32 %69)
  br label %73

71:                                               ; preds = %6
  %72 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %71, %58, %45, %37
  %74 = load i32, i32* %13, align 4
  ret i32 %74
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @PCI_CONF_BUS(i32) #1

declare dso_local i32 @PCI_CONF_DEVICE(i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_CONF_FUNCTION(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @PCI_CONF_WHERE(i32) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
