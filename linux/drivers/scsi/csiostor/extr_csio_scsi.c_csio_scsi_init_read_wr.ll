; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsi_init_read_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsi_init_read_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_ioreq = type { %struct.csio_dma_buf, i64, i32, %struct.csio_rnode*, %struct.TYPE_5__* }
%struct.csio_dma_buf = type { i32, i32 }
%struct.csio_rnode = type { i32 }
%struct.TYPE_5__ = type { %struct.csio_hw* }
%struct.csio_hw = type { i32 }
%struct.fw_scsi_read_wr = type { i64, i32, %struct.TYPE_7__, i64, i32, i8*, i8*, i8*, i64, i32, i8*, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64*, i64, i64 }
%struct.ulptx_sgl = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.TYPE_8__ = type { i64 }

@FW_SCSI_READ_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_ioreq*, i8*, i32)* @csio_scsi_init_read_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_scsi_init_read_wr(%struct.csio_ioreq* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.csio_ioreq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.csio_hw*, align 8
  %8 = alloca %struct.csio_rnode*, align 8
  %9 = alloca %struct.fw_scsi_read_wr*, align 8
  %10 = alloca %struct.ulptx_sgl*, align 8
  %11 = alloca %struct.csio_dma_buf*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.scsi_cmnd*, align 8
  store %struct.csio_ioreq* %0, %struct.csio_ioreq** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %15 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %14, i32 0, i32 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.csio_hw*, %struct.csio_hw** %17, align 8
  store %struct.csio_hw* %18, %struct.csio_hw** %7, align 8
  %19 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %20 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %19, i32 0, i32 3
  %21 = load %struct.csio_rnode*, %struct.csio_rnode** %20, align 8
  store %struct.csio_rnode* %21, %struct.csio_rnode** %8, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.fw_scsi_read_wr*
  store %struct.fw_scsi_read_wr* %23, %struct.fw_scsi_read_wr** %9, align 8
  %24 = load %struct.csio_hw*, %struct.csio_hw** %7, align 8
  %25 = call %struct.TYPE_8__* @csio_hw_to_scsim(%struct.csio_hw* %24)
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  %28 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %29 = call %struct.scsi_cmnd* @csio_scsi_cmnd(%struct.csio_ioreq* %28)
  store %struct.scsi_cmnd* %29, %struct.scsi_cmnd** %13, align 8
  %30 = load i32, i32* @FW_SCSI_READ_WR, align 4
  %31 = call i32 @FW_WR_OP_V(i32 %30)
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @FW_SCSI_READ_WR_IMMDLEN(i64 %32)
  %34 = or i32 %31, %33
  %35 = call i8* @cpu_to_be32(i32 %34)
  %36 = load %struct.fw_scsi_read_wr*, %struct.fw_scsi_read_wr** %9, align 8
  %37 = getelementptr inbounds %struct.fw_scsi_read_wr, %struct.fw_scsi_read_wr* %36, i32 0, i32 11
  store i8* %35, i8** %37, align 8
  %38 = load %struct.csio_rnode*, %struct.csio_rnode** %8, align 8
  %39 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @FW_WR_FLOWID_V(i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @DIV_ROUND_UP(i32 %42, i32 16)
  %44 = call i32 @FW_WR_LEN16_V(i32 %43)
  %45 = or i32 %41, %44
  %46 = call i8* @cpu_to_be32(i32 %45)
  %47 = load %struct.fw_scsi_read_wr*, %struct.fw_scsi_read_wr** %9, align 8
  %48 = getelementptr inbounds %struct.fw_scsi_read_wr, %struct.fw_scsi_read_wr* %47, i32 0, i32 10
  store i8* %46, i8** %48, align 8
  %49 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %50 = ptrtoint %struct.csio_ioreq* %49 to i64
  %51 = load %struct.fw_scsi_read_wr*, %struct.fw_scsi_read_wr** %9, align 8
  %52 = getelementptr inbounds %struct.fw_scsi_read_wr, %struct.fw_scsi_read_wr* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.csio_hw*, %struct.csio_hw** %7, align 8
  %54 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %55 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @csio_q_physiqid(%struct.csio_hw* %53, i32 %56)
  %58 = call i32 @cpu_to_be16(i32 %57)
  %59 = load %struct.fw_scsi_read_wr*, %struct.fw_scsi_read_wr** %9, align 8
  %60 = getelementptr inbounds %struct.fw_scsi_read_wr, %struct.fw_scsi_read_wr* %59, i32 0, i32 9
  store i32 %58, i32* %60, align 8
  %61 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %62 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.fw_scsi_read_wr*, %struct.fw_scsi_read_wr** %9, align 8
  %65 = getelementptr inbounds %struct.fw_scsi_read_wr, %struct.fw_scsi_read_wr* %64, i32 0, i32 8
  store i64 %63, i64* %65, align 8
  %66 = load %struct.fw_scsi_read_wr*, %struct.fw_scsi_read_wr** %9, align 8
  %67 = getelementptr inbounds %struct.fw_scsi_read_wr, %struct.fw_scsi_read_wr* %66, i32 0, i32 1
  store i32 1, i32* %67, align 8
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %69 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %68)
  %70 = call i8* @cpu_to_be32(i32 %69)
  %71 = load %struct.fw_scsi_read_wr*, %struct.fw_scsi_read_wr** %9, align 8
  %72 = getelementptr inbounds %struct.fw_scsi_read_wr, %struct.fw_scsi_read_wr* %71, i32 0, i32 7
  store i8* %70, i8** %72, align 8
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %74 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %73)
  %75 = call i8* @cpu_to_be32(i32 %74)
  %76 = load %struct.fw_scsi_read_wr*, %struct.fw_scsi_read_wr** %9, align 8
  %77 = getelementptr inbounds %struct.fw_scsi_read_wr, %struct.fw_scsi_read_wr* %76, i32 0, i32 6
  store i8* %75, i8** %77, align 8
  %78 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %79 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %78, i32 0, i32 0
  store %struct.csio_dma_buf* %79, %struct.csio_dma_buf** %11, align 8
  %80 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %11, align 8
  %81 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @cpu_to_be32(i32 %82)
  %84 = load %struct.fw_scsi_read_wr*, %struct.fw_scsi_read_wr** %9, align 8
  %85 = getelementptr inbounds %struct.fw_scsi_read_wr, %struct.fw_scsi_read_wr* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  %86 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %11, align 8
  %87 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @cpu_to_be64(i32 %88)
  %90 = load %struct.fw_scsi_read_wr*, %struct.fw_scsi_read_wr** %9, align 8
  %91 = getelementptr inbounds %struct.fw_scsi_read_wr, %struct.fw_scsi_read_wr* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load %struct.fw_scsi_read_wr*, %struct.fw_scsi_read_wr** %9, align 8
  %93 = getelementptr inbounds %struct.fw_scsi_read_wr, %struct.fw_scsi_read_wr* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = load %struct.fw_scsi_read_wr*, %struct.fw_scsi_read_wr** %9, align 8
  %95 = getelementptr inbounds %struct.fw_scsi_read_wr, %struct.fw_scsi_read_wr* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load %struct.fw_scsi_read_wr*, %struct.fw_scsi_read_wr** %9, align 8
  %99 = getelementptr inbounds %struct.fw_scsi_read_wr, %struct.fw_scsi_read_wr* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store i64 0, i64* %101, align 8
  %102 = load %struct.fw_scsi_read_wr*, %struct.fw_scsi_read_wr** %9, align 8
  %103 = getelementptr inbounds %struct.fw_scsi_read_wr, %struct.fw_scsi_read_wr* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  store i64 0, i64* %107, align 8
  %108 = load %struct.fw_scsi_read_wr*, %struct.fw_scsi_read_wr** %9, align 8
  %109 = getelementptr inbounds %struct.fw_scsi_read_wr, %struct.fw_scsi_read_wr* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 1
  store i64 0, i64* %113, align 8
  %114 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = ptrtoint i8* %115 to i64
  %117 = add i64 %116, 112
  %118 = inttoptr i64 %117 to i8*
  %119 = call i32 @csio_scsi_fcp_cmnd(%struct.csio_ioreq* %114, i8* %118)
  %120 = load i8*, i8** %5, align 8
  %121 = ptrtoint i8* %120 to i64
  %122 = add i64 %121, 112
  %123 = load i64, i64* %12, align 8
  %124 = call i64 @ALIGN(i64 %123, i32 16)
  %125 = add i64 %122, %124
  %126 = inttoptr i64 %125 to %struct.ulptx_sgl*
  store %struct.ulptx_sgl* %126, %struct.ulptx_sgl** %10, align 8
  %127 = load %struct.csio_hw*, %struct.csio_hw** %7, align 8
  %128 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %129 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %10, align 8
  %130 = call i32 @csio_scsi_init_ultptx_dsgl(%struct.csio_hw* %127, %struct.csio_ioreq* %128, %struct.ulptx_sgl* %129)
  ret void
}

declare dso_local %struct.TYPE_8__* @csio_hw_to_scsim(%struct.csio_hw*) #1

declare dso_local %struct.scsi_cmnd* @csio_scsi_cmnd(%struct.csio_ioreq*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_WR_OP_V(i32) #1

declare dso_local i32 @FW_SCSI_READ_WR_IMMDLEN(i64) #1

declare dso_local i32 @FW_WR_FLOWID_V(i32) #1

declare dso_local i32 @FW_WR_LEN16_V(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @csio_q_physiqid(%struct.csio_hw*, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @csio_scsi_fcp_cmnd(%struct.csio_ioreq*, i8*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @csio_scsi_init_ultptx_dsgl(%struct.csio_hw*, %struct.csio_ioreq*, %struct.ulptx_sgl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
