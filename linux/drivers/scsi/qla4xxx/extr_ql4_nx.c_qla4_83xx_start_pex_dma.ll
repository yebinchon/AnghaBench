; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_83xx_start_pex_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_83xx_start_pex_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.scsi_qla_host*, i64, i32)*, i32 (%struct.scsi_qla_host*, i64, i32*)* }
%struct.qla4_83xx_minidump_entry_rdmem_pex_dma = type { i32, i32 }
%struct.qla4_8xxx_minidump_template_hdr = type { i32* }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA83XX_PEX_DMA_ENGINE_INDEX = common dso_local global i64 0, align 8
@QLA83XX_PEX_DMA_BASE_ADDRESS = common dso_local global i64 0, align 8
@QLA83XX_PEX_DMA_NUM_OFFSET = common dso_local global i32 0, align 4
@QLA83XX_PEX_DMA_CMD_ADDR_LOW = common dso_local global i64 0, align 8
@QLA83XX_PEX_DMA_CMD_ADDR_HIGH = common dso_local global i64 0, align 8
@QLA83XX_PEX_DMA_CMD_STS_AND_CNTRL = common dso_local global i64 0, align 8
@QLA83XX_PEX_DMA_MAX_WAIT = common dso_local global i32 0, align 4
@BIT_1 = common dso_local global i32 0, align 4
@QLA_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.qla4_83xx_minidump_entry_rdmem_pex_dma*)* @qla4_83xx_start_pex_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4_83xx_start_pex_dma(%struct.scsi_qla_host* %0, %struct.qla4_83xx_minidump_entry_rdmem_pex_dma* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.qla4_83xx_minidump_entry_rdmem_pex_dma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.qla4_8xxx_minidump_template_hdr*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.qla4_83xx_minidump_entry_rdmem_pex_dma* %1, %struct.qla4_83xx_minidump_entry_rdmem_pex_dma** %4, align 8
  %11 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store %struct.qla4_8xxx_minidump_template_hdr* null, %struct.qla4_8xxx_minidump_template_hdr** %10, align 8
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.qla4_8xxx_minidump_template_hdr*
  store %struct.qla4_8xxx_minidump_template_hdr* %15, %struct.qla4_8xxx_minidump_template_hdr** %10, align 8
  %16 = load %struct.qla4_8xxx_minidump_template_hdr*, %struct.qla4_8xxx_minidump_template_hdr** %10, align 8
  %17 = getelementptr inbounds %struct.qla4_8xxx_minidump_template_hdr, %struct.qla4_8xxx_minidump_template_hdr* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @QLA83XX_PEX_DMA_ENGINE_INDEX, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i64, i64* @QLA83XX_PEX_DMA_BASE_ADDRESS, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @QLA83XX_PEX_DMA_NUM_OFFSET, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %22, %26
  store i64 %27, i64* %9, align 8
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %29 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.scsi_qla_host*, i64, i32)*, i32 (%struct.scsi_qla_host*, i64, i32)** %31, align 8
  %33 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @QLA83XX_PEX_DMA_CMD_ADDR_LOW, align 8
  %36 = add nsw i64 %34, %35
  %37 = load %struct.qla4_83xx_minidump_entry_rdmem_pex_dma*, %struct.qla4_83xx_minidump_entry_rdmem_pex_dma** %4, align 8
  %38 = getelementptr inbounds %struct.qla4_83xx_minidump_entry_rdmem_pex_dma, %struct.qla4_83xx_minidump_entry_rdmem_pex_dma* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 %32(%struct.scsi_qla_host* %33, i64 %36, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %2
  br label %113

44:                                               ; preds = %2
  %45 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %46 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (%struct.scsi_qla_host*, i64, i32)*, i32 (%struct.scsi_qla_host*, i64, i32)** %48, align 8
  %50 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @QLA83XX_PEX_DMA_CMD_ADDR_HIGH, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 %49(%struct.scsi_qla_host* %50, i64 %53, i32 0)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  br label %113

58:                                               ; preds = %44
  %59 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %60 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (%struct.scsi_qla_host*, i64, i32)*, i32 (%struct.scsi_qla_host*, i64, i32)** %62, align 8
  %64 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @QLA83XX_PEX_DMA_CMD_STS_AND_CNTRL, align 8
  %67 = add nsw i64 %65, %66
  %68 = load %struct.qla4_83xx_minidump_entry_rdmem_pex_dma*, %struct.qla4_83xx_minidump_entry_rdmem_pex_dma** %4, align 8
  %69 = getelementptr inbounds %struct.qla4_83xx_minidump_entry_rdmem_pex_dma, %struct.qla4_83xx_minidump_entry_rdmem_pex_dma* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 %63(%struct.scsi_qla_host* %64, i64 %67, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %58
  br label %113

75:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %103, %75
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @QLA83XX_PEX_DMA_MAX_WAIT, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %106

80:                                               ; preds = %76
  %81 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %82 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32 (%struct.scsi_qla_host*, i64, i32*)*, i32 (%struct.scsi_qla_host*, i64, i32*)** %84, align 8
  %86 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* @QLA83XX_PEX_DMA_CMD_STS_AND_CNTRL, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 %85(%struct.scsi_qla_host* %86, i64 %89, i32* %8)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %80
  br label %113

94:                                               ; preds = %80
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @BIT_1, align 4
  %97 = and i32 %95, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %106

100:                                              ; preds = %94
  %101 = call i32 @udelay(i32 10)
  br label %102

102:                                              ; preds = %100
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %76

106:                                              ; preds = %99, %76
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @QLA83XX_PEX_DMA_MAX_WAIT, align 4
  %109 = icmp sge i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* @QLA_ERROR, align 4
  store i32 %111, i32* %5, align 4
  br label %113

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112, %110, %93, %74, %57, %43
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
