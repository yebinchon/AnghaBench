; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_83xx_check_dma_engine_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_83xx_check_dma_engine_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.scsi_qla_host*, i64, i32*)* }
%struct.qla4_8xxx_minidump_template_hdr = type { i32* }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA83XX_PEX_DMA_ENGINE_INDEX = common dso_local global i64 0, align 8
@QLA83XX_PEX_DMA_BASE_ADDRESS = common dso_local global i64 0, align 8
@QLA83XX_PEX_DMA_NUM_OFFSET = common dso_local global i32 0, align 4
@QLA83XX_PEX_DMA_CMD_STS_AND_CNTRL = common dso_local global i64 0, align 8
@QLA_ERROR = common dso_local global i32 0, align 4
@BIT_31 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*)* @qla4_83xx_check_dma_engine_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4_83xx_check_dma_engine_state(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.qla4_8xxx_minidump_template_hdr*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  %9 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store %struct.qla4_8xxx_minidump_template_hdr* null, %struct.qla4_8xxx_minidump_template_hdr** %8, align 8
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.qla4_8xxx_minidump_template_hdr*
  store %struct.qla4_8xxx_minidump_template_hdr* %13, %struct.qla4_8xxx_minidump_template_hdr** %8, align 8
  %14 = load %struct.qla4_8xxx_minidump_template_hdr*, %struct.qla4_8xxx_minidump_template_hdr** %8, align 8
  %15 = getelementptr inbounds %struct.qla4_8xxx_minidump_template_hdr, %struct.qla4_8xxx_minidump_template_hdr* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @QLA83XX_PEX_DMA_ENGINE_INDEX, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i64, i64* @QLA83XX_PEX_DMA_BASE_ADDRESS, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @QLA83XX_PEX_DMA_NUM_OFFSET, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %20, %24
  store i64 %25, i64* %7, align 8
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.scsi_qla_host*, i64, i32*)*, i32 (%struct.scsi_qla_host*, i64, i32*)** %29, align 8
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @QLA83XX_PEX_DMA_CMD_STS_AND_CNTRL, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 %30(%struct.scsi_qla_host* %31, i64 %34, i32* %6)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i32, i32* @QLA_ERROR, align 4
  store i32 %39, i32* %2, align 4
  br label %49

40:                                               ; preds = %1
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @BIT_31, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %46, i32* %2, align 4
  br label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @QLA_ERROR, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %45, %38
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
