; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_crcsr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_crcsr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_bridge = type { i32, %struct.tsi148_driver* }
%struct.tsi148_driver = type { i32, i64, i32, i32 }
%struct.pci_dev = type { i32 }

@VME_CRCSR_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to allocate memory for CR/CSR image\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TSI148_LCSR_CROU = common dso_local global i64 0, align 8
@TSI148_LCSR_CROL = common dso_local global i64 0, align 8
@TSI148_CBAR = common dso_local global i64 0, align 8
@TSI148_CRCSR_CBAR_M = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Setting CR/CSR offset\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"CR/CSR Offset: %d\0A\00", align 1
@TSI148_LCSR_CRAT = common dso_local global i64 0, align 8
@TSI148_LCSR_CRAT_EN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"CR/CSR already enabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Enabling CR/CSR space\0A\00", align 1
@err_chk = common dso_local global i64 0, align 8
@VME_CRCSR = common dso_local global i32 0, align 4
@VME_SCT = common dso_local global i32 0, align 4
@VME_D16 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Configuring flush image failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_bridge*, %struct.pci_dev*)* @tsi148_crcsr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi148_crcsr_init(%struct.vme_bridge* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vme_bridge*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tsi148_driver*, align 8
  store %struct.vme_bridge* %0, %struct.vme_bridge** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %13 = load %struct.vme_bridge*, %struct.vme_bridge** %4, align 8
  %14 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %13, i32 0, i32 1
  %15 = load %struct.tsi148_driver*, %struct.tsi148_driver** %14, align 8
  store %struct.tsi148_driver* %15, %struct.tsi148_driver** %12, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = load i32, i32* @VME_CRCSR_BUF_SIZE, align 4
  %18 = load %struct.tsi148_driver*, %struct.tsi148_driver** %12, align 8
  %19 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %18, i32 0, i32 2
  %20 = call i32 @pci_zalloc_consistent(%struct.pci_dev* %16, i32 %17, i32* %19)
  %21 = load %struct.tsi148_driver*, %struct.tsi148_driver** %12, align 8
  %22 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.tsi148_driver*, %struct.tsi148_driver** %12, align 8
  %24 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %2
  %28 = load %struct.vme_bridge*, %struct.vme_bridge** %4, align 8
  %29 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %139

34:                                               ; preds = %2
  %35 = load %struct.tsi148_driver*, %struct.tsi148_driver** %12, align 8
  %36 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @reg_split(i32 %37, i32* %9, i32* %10)
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.tsi148_driver*, %struct.tsi148_driver** %12, align 8
  %41 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TSI148_LCSR_CROU, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @iowrite32be(i32 %39, i64 %44)
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.tsi148_driver*, %struct.tsi148_driver** %12, align 8
  %48 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TSI148_LCSR_CROL, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @iowrite32be(i32 %46, i64 %51)
  %53 = load %struct.tsi148_driver*, %struct.tsi148_driver** %12, align 8
  %54 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TSI148_CBAR, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @ioread32be(i64 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @TSI148_CRCSR_CBAR_M, align 4
  %61 = and i32 %59, %60
  %62 = ashr i32 %61, 3
  store i32 %62, i32* %6, align 4
  %63 = load %struct.vme_bridge*, %struct.vme_bridge** %4, align 8
  %64 = call i32 @tsi148_slot_get(%struct.vme_bridge* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %34
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %6, align 4
  %70 = load %struct.vme_bridge*, %struct.vme_bridge** %4, align 8
  %71 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, i8*, ...) @dev_info(i32 %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* %6, align 4
  %75 = shl i32 %74, 3
  %76 = load %struct.tsi148_driver*, %struct.tsi148_driver** %12, align 8
  %77 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @TSI148_CBAR, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @iowrite32be(i32 %75, i64 %80)
  br label %82

82:                                               ; preds = %68, %34
  %83 = load %struct.vme_bridge*, %struct.vme_bridge** %4, align 8
  %84 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 (i32, i8*, ...) @dev_info(i32 %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load %struct.tsi148_driver*, %struct.tsi148_driver** %12, align 8
  %89 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @TSI148_LCSR_CRAT, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @ioread32be(i64 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @TSI148_LCSR_CRAT_EN, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %82
  %99 = load %struct.vme_bridge*, %struct.vme_bridge** %4, align 8
  %100 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i32, i8*, ...) @dev_info(i32 %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %117

103:                                              ; preds = %82
  %104 = load %struct.vme_bridge*, %struct.vme_bridge** %4, align 8
  %105 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i32, i8*, ...) @dev_info(i32 %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @TSI148_LCSR_CRAT_EN, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.tsi148_driver*, %struct.tsi148_driver** %12, align 8
  %112 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @TSI148_LCSR_CRAT, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @iowrite32be(i32 %110, i64 %115)
  br label %117

117:                                              ; preds = %103, %98
  %118 = load i64, i64* @err_chk, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %117
  %121 = load %struct.tsi148_driver*, %struct.tsi148_driver** %12, align 8
  %122 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = mul nsw i32 %124, 524288
  %126 = load i32, i32* @VME_CRCSR, align 4
  %127 = load i32, i32* @VME_SCT, align 4
  %128 = load i32, i32* @VME_D16, align 4
  %129 = call i32 @tsi148_master_set(i32 %123, i32 1, i32 %125, i32 524288, i32 %126, i32 %127, i32 %128)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %120
  %133 = load %struct.vme_bridge*, %struct.vme_bridge** %4, align 8
  %134 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @dev_err(i32 %135, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %137

137:                                              ; preds = %132, %120
  br label %138

138:                                              ; preds = %137, %117
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %27
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @pci_zalloc_consistent(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @reg_split(i32, i32*, i32*) #1

declare dso_local i32 @iowrite32be(i32, i64) #1

declare dso_local i32 @ioread32be(i64) #1

declare dso_local i32 @tsi148_slot_get(%struct.vme_bridge*) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @tsi148_master_set(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
