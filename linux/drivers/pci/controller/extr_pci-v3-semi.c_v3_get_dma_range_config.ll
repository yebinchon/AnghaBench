; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-v3-semi.c_v3_get_dma_range_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-v3-semi.c_v3_get_dma_range_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3_pci = type { %struct.device* }
%struct.device = type { i32 }
%struct.of_pci_range = type { i32, i32, i32 }

@V3_PCI_BASE_M_ADR_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"illegal range, only PCI bits 31..20 allowed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V3_PCI_MAP_M_MAP_ADR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"illegal range, only CPU bits 31..20 allowed\0A\00", align 1
@V3_LB_BASE_ADR_SIZE_1MB = common dso_local global i32 0, align 4
@V3_LB_BASE_ADR_SIZE_2MB = common dso_local global i32 0, align 4
@V3_LB_BASE_ADR_SIZE_4MB = common dso_local global i32 0, align 4
@V3_LB_BASE_ADR_SIZE_8MB = common dso_local global i32 0, align 4
@V3_LB_BASE_ADR_SIZE_16MB = common dso_local global i32 0, align 4
@V3_LB_BASE_ADR_SIZE_32MB = common dso_local global i32 0, align 4
@V3_LB_BASE_ADR_SIZE_64MB = common dso_local global i32 0, align 4
@V3_LB_BASE_ADR_SIZE_128MB = common dso_local global i32 0, align 4
@V3_LB_BASE_ADR_SIZE_256MB = common dso_local global i32 0, align 4
@V3_LB_BASE_ADR_SIZE_512MB = common dso_local global i32 0, align 4
@V3_LB_BASE_ADR_SIZE_1GB = common dso_local global i32 0, align 4
@V3_LB_BASE_ADR_SIZE_2GB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"illegal dma memory chunk size\0A\00", align 1
@V3_PCI_MAP_M_REG_EN = common dso_local global i32 0, align 4
@V3_PCI_MAP_M_ENABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [87 x i8] c"DMA MEM CPU: 0x%016llx -> 0x%016llx => PCI: 0x%016llx -> 0x%016llx base %08x map %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v3_pci*, %struct.of_pci_range*, i32*, i32*)* @v3_get_dma_range_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v3_get_dma_range_config(%struct.v3_pci* %0, %struct.of_pci_range* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v3_pci*, align 8
  %7 = alloca %struct.of_pci_range*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.v3_pci* %0, %struct.v3_pci** %6, align 8
  store %struct.of_pci_range* %1, %struct.of_pci_range** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %15 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %10, align 8
  %17 = load %struct.of_pci_range*, %struct.of_pci_range** %7, align 8
  %18 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.of_pci_range*, %struct.of_pci_range** %7, align 8
  %21 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %19, %22
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %11, align 8
  %26 = load %struct.of_pci_range*, %struct.of_pci_range** %7, align 8
  %27 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.of_pci_range*, %struct.of_pci_range** %7, align 8
  %30 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %12, align 8
  %35 = load %struct.of_pci_range*, %struct.of_pci_range** %7, align 8
  %36 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @V3_PCI_BASE_M_ADR_BASE, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %4
  %43 = load %struct.device*, %struct.device** %10, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %153

47:                                               ; preds = %4
  %48 = load %struct.of_pci_range*, %struct.of_pci_range** %7, align 8
  %49 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @V3_PCI_BASE_M_ADR_BASE, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32*, i32** %8, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.of_pci_range*, %struct.of_pci_range** %7, align 8
  %56 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @V3_PCI_MAP_M_MAP_ADR, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %47
  %63 = load %struct.device*, %struct.device** %10, align 8
  %64 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %153

67:                                               ; preds = %47
  %68 = load %struct.of_pci_range*, %struct.of_pci_range** %7, align 8
  %69 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @V3_PCI_MAP_M_MAP_ADR, align 4
  %72 = and i32 %70, %71
  store i32 %72, i32* %13, align 4
  %73 = load %struct.of_pci_range*, %struct.of_pci_range** %7, align 8
  %74 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  switch i32 %75, label %124 [
    i32 136, label %76
    i32 133, label %80
    i32 131, label %84
    i32 128, label %88
    i32 138, label %92
    i32 132, label %96
    i32 129, label %100
    i32 139, label %104
    i32 135, label %108
    i32 130, label %112
    i32 137, label %116
    i32 134, label %120
  ]

76:                                               ; preds = %67
  %77 = load i32, i32* @V3_LB_BASE_ADR_SIZE_1MB, align 4
  %78 = load i32, i32* %13, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %13, align 4
  br label %131

80:                                               ; preds = %67
  %81 = load i32, i32* @V3_LB_BASE_ADR_SIZE_2MB, align 4
  %82 = load i32, i32* %13, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %13, align 4
  br label %131

84:                                               ; preds = %67
  %85 = load i32, i32* @V3_LB_BASE_ADR_SIZE_4MB, align 4
  %86 = load i32, i32* %13, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %13, align 4
  br label %131

88:                                               ; preds = %67
  %89 = load i32, i32* @V3_LB_BASE_ADR_SIZE_8MB, align 4
  %90 = load i32, i32* %13, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %13, align 4
  br label %131

92:                                               ; preds = %67
  %93 = load i32, i32* @V3_LB_BASE_ADR_SIZE_16MB, align 4
  %94 = load i32, i32* %13, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %13, align 4
  br label %131

96:                                               ; preds = %67
  %97 = load i32, i32* @V3_LB_BASE_ADR_SIZE_32MB, align 4
  %98 = load i32, i32* %13, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %13, align 4
  br label %131

100:                                              ; preds = %67
  %101 = load i32, i32* @V3_LB_BASE_ADR_SIZE_64MB, align 4
  %102 = load i32, i32* %13, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %13, align 4
  br label %131

104:                                              ; preds = %67
  %105 = load i32, i32* @V3_LB_BASE_ADR_SIZE_128MB, align 4
  %106 = load i32, i32* %13, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %13, align 4
  br label %131

108:                                              ; preds = %67
  %109 = load i32, i32* @V3_LB_BASE_ADR_SIZE_256MB, align 4
  %110 = load i32, i32* %13, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %13, align 4
  br label %131

112:                                              ; preds = %67
  %113 = load i32, i32* @V3_LB_BASE_ADR_SIZE_512MB, align 4
  %114 = load i32, i32* %13, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %13, align 4
  br label %131

116:                                              ; preds = %67
  %117 = load i32, i32* @V3_LB_BASE_ADR_SIZE_1GB, align 4
  %118 = load i32, i32* %13, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %13, align 4
  br label %131

120:                                              ; preds = %67
  %121 = load i32, i32* @V3_LB_BASE_ADR_SIZE_2GB, align 4
  %122 = load i32, i32* %13, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %13, align 4
  br label %131

124:                                              ; preds = %67
  %125 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %126 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %125, i32 0, i32 0
  %127 = load %struct.device*, %struct.device** %126, align 8
  %128 = call i32 @dev_err(%struct.device* %127, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %5, align 4
  br label %153

131:                                              ; preds = %120, %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %76
  %132 = load i32, i32* @V3_PCI_MAP_M_REG_EN, align 4
  %133 = load i32, i32* @V3_PCI_MAP_M_ENABLE, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* %13, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load i32*, i32** %9, align 8
  store i32 %137, i32* %138, align 4
  %139 = load %struct.device*, %struct.device** %10, align 8
  %140 = load %struct.of_pci_range*, %struct.of_pci_range** %7, align 8
  %141 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i64, i64* %11, align 8
  %144 = load %struct.of_pci_range*, %struct.of_pci_range** %7, align 8
  %145 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i64, i64* %12, align 8
  %148 = load i32*, i32** %8, align 8
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %9, align 8
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @dev_dbg(%struct.device* %139, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i64 0, i64 0), i32 %142, i64 %143, i32 %146, i64 %147, i32 %149, i32 %151)
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %131, %124, %62, %42
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i64, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
