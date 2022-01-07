; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx2.c_qla8044_start_pex_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx2.c_qla8044_start_pex_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.qla8044_minidump_template_hdr* }
%struct.qla8044_minidump_template_hdr = type { i32* }
%struct.qla8044_minidump_entry_rdmem_pex_dma = type { i32, i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@ISP8044_PEX_DMA_ENGINE_INDEX = common dso_local global i64 0, align 8
@ISP8044_PEX_DMA_BASE_ADDRESS = common dso_local global i64 0, align 8
@ISP8044_PEX_DMA_NUM_OFFSET = common dso_local global i32 0, align 4
@ISP8044_PEX_DMA_CMD_ADDR_LOW = common dso_local global i64 0, align 8
@ISP8044_PEX_DMA_CMD_ADDR_HIGH = common dso_local global i64 0, align 8
@ISP8044_PEX_DMA_CMD_STS_AND_CNTRL = common dso_local global i64 0, align 8
@ISP8044_PEX_DMA_MAX_WAIT = common dso_local global i32 0, align 4
@BIT_1 = common dso_local global i32 0, align 4
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.qla8044_minidump_entry_rdmem_pex_dma*)* @qla8044_start_pex_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla8044_start_pex_dma(%struct.scsi_qla_host* %0, %struct.qla8044_minidump_entry_rdmem_pex_dma* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.qla8044_minidump_entry_rdmem_pex_dma*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.qla8044_minidump_template_hdr*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.qla8044_minidump_entry_rdmem_pex_dma* %1, %struct.qla8044_minidump_entry_rdmem_pex_dma** %4, align 8
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %12, i32 0, i32 0
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  store %struct.qla_hw_data* %14, %struct.qla_hw_data** %5, align 8
  %15 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store %struct.qla8044_minidump_template_hdr* null, %struct.qla8044_minidump_template_hdr** %11, align 8
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %17 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %16, i32 0, i32 0
  %18 = load %struct.qla8044_minidump_template_hdr*, %struct.qla8044_minidump_template_hdr** %17, align 8
  store %struct.qla8044_minidump_template_hdr* %18, %struct.qla8044_minidump_template_hdr** %11, align 8
  %19 = load %struct.qla8044_minidump_template_hdr*, %struct.qla8044_minidump_template_hdr** %11, align 8
  %20 = getelementptr inbounds %struct.qla8044_minidump_template_hdr, %struct.qla8044_minidump_template_hdr* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @ISP8044_PEX_DMA_ENGINE_INDEX, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i64, i64* @ISP8044_PEX_DMA_BASE_ADDRESS, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @ISP8044_PEX_DMA_NUM_OFFSET, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %25, %29
  store i64 %30, i64* %10, align 8
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @ISP8044_PEX_DMA_CMD_ADDR_LOW, align 8
  %34 = add nsw i64 %32, %33
  %35 = load %struct.qla8044_minidump_entry_rdmem_pex_dma*, %struct.qla8044_minidump_entry_rdmem_pex_dma** %4, align 8
  %36 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmem_pex_dma, %struct.qla8044_minidump_entry_rdmem_pex_dma* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @qla8044_wr_reg_indirect(%struct.scsi_qla_host* %31, i64 %34, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  br label %95

42:                                               ; preds = %2
  %43 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @ISP8044_PEX_DMA_CMD_ADDR_HIGH, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @qla8044_wr_reg_indirect(%struct.scsi_qla_host* %43, i64 %46, i32 0)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %95

51:                                               ; preds = %42
  %52 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @ISP8044_PEX_DMA_CMD_STS_AND_CNTRL, align 8
  %55 = add nsw i64 %53, %54
  %56 = load %struct.qla8044_minidump_entry_rdmem_pex_dma*, %struct.qla8044_minidump_entry_rdmem_pex_dma** %4, align 8
  %57 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmem_pex_dma, %struct.qla8044_minidump_entry_rdmem_pex_dma* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @qla8044_wr_reg_indirect(%struct.scsi_qla_host* %52, i64 %55, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %95

63:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %85, %63
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @ISP8044_PEX_DMA_MAX_WAIT, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %64
  %69 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @ISP8044_PEX_DMA_CMD_STS_AND_CNTRL, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @qla8044_rd_reg_indirect(%struct.scsi_qla_host* %69, i64 %72, i32* %9)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %95

77:                                               ; preds = %68
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @BIT_1, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %88

83:                                               ; preds = %77
  %84 = call i32 @udelay(i32 10)
  br label %85

85:                                               ; preds = %83
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %64

88:                                               ; preds = %82, %64
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @ISP8044_PEX_DMA_MAX_WAIT, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %93, i32* %6, align 4
  br label %95

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %92, %76, %62, %50, %41
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @qla8044_wr_reg_indirect(%struct.scsi_qla_host*, i64, i32) #1

declare dso_local i32 @qla8044_rd_reg_indirect(%struct.scsi_qla_host*, i64, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
