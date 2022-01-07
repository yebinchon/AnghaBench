; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsi_init_cmd_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsi_init_cmd_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_ioreq = type { %struct.csio_dma_buf, i64, i32, %struct.csio_rnode*, %struct.TYPE_5__* }
%struct.csio_dma_buf = type { i32, i32 }
%struct.csio_rnode = type { i32 }
%struct.TYPE_5__ = type { %struct.csio_hw* }
%struct.csio_hw = type { i32 }
%struct.fw_scsi_cmd_wr = type { i64, %struct.TYPE_7__, i64, i32, i8*, i32, i64, i64, i32, i8*, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64*, i64, i64 }
%struct.TYPE_8__ = type { i64 }

@FW_SCSI_CMD_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_ioreq*, i8*, i32)* @csio_scsi_init_cmd_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_scsi_init_cmd_wr(%struct.csio_ioreq* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.csio_ioreq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.csio_hw*, align 8
  %8 = alloca %struct.csio_rnode*, align 8
  %9 = alloca %struct.fw_scsi_cmd_wr*, align 8
  %10 = alloca %struct.csio_dma_buf*, align 8
  %11 = alloca i64, align 8
  store %struct.csio_ioreq* %0, %struct.csio_ioreq** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %13 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %12, i32 0, i32 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.csio_hw*, %struct.csio_hw** %15, align 8
  store %struct.csio_hw* %16, %struct.csio_hw** %7, align 8
  %17 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %18 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %17, i32 0, i32 3
  %19 = load %struct.csio_rnode*, %struct.csio_rnode** %18, align 8
  store %struct.csio_rnode* %19, %struct.csio_rnode** %8, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.fw_scsi_cmd_wr*
  store %struct.fw_scsi_cmd_wr* %21, %struct.fw_scsi_cmd_wr** %9, align 8
  %22 = load %struct.csio_hw*, %struct.csio_hw** %7, align 8
  %23 = call %struct.TYPE_8__* @csio_hw_to_scsim(%struct.csio_hw* %22)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %11, align 8
  %26 = load i32, i32* @FW_SCSI_CMD_WR, align 4
  %27 = call i32 @FW_WR_OP_V(i32 %26)
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @FW_SCSI_CMD_WR_IMMDLEN(i64 %28)
  %30 = or i32 %27, %29
  %31 = call i8* @cpu_to_be32(i32 %30)
  %32 = load %struct.fw_scsi_cmd_wr*, %struct.fw_scsi_cmd_wr** %9, align 8
  %33 = getelementptr inbounds %struct.fw_scsi_cmd_wr, %struct.fw_scsi_cmd_wr* %32, i32 0, i32 10
  store i8* %31, i8** %33, align 8
  %34 = load %struct.csio_rnode*, %struct.csio_rnode** %8, align 8
  %35 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @FW_WR_FLOWID_V(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @DIV_ROUND_UP(i32 %38, i32 16)
  %40 = call i32 @FW_WR_LEN16_V(i32 %39)
  %41 = or i32 %37, %40
  %42 = call i8* @cpu_to_be32(i32 %41)
  %43 = load %struct.fw_scsi_cmd_wr*, %struct.fw_scsi_cmd_wr** %9, align 8
  %44 = getelementptr inbounds %struct.fw_scsi_cmd_wr, %struct.fw_scsi_cmd_wr* %43, i32 0, i32 9
  store i8* %42, i8** %44, align 8
  %45 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %46 = ptrtoint %struct.csio_ioreq* %45 to i64
  %47 = load %struct.fw_scsi_cmd_wr*, %struct.fw_scsi_cmd_wr** %9, align 8
  %48 = getelementptr inbounds %struct.fw_scsi_cmd_wr, %struct.fw_scsi_cmd_wr* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.csio_hw*, %struct.csio_hw** %7, align 8
  %50 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %51 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @csio_q_physiqid(%struct.csio_hw* %49, i32 %52)
  %54 = call i32 @cpu_to_be16(i32 %53)
  %55 = load %struct.fw_scsi_cmd_wr*, %struct.fw_scsi_cmd_wr** %9, align 8
  %56 = getelementptr inbounds %struct.fw_scsi_cmd_wr, %struct.fw_scsi_cmd_wr* %55, i32 0, i32 8
  store i32 %54, i32* %56, align 8
  %57 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %58 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.fw_scsi_cmd_wr*, %struct.fw_scsi_cmd_wr** %9, align 8
  %61 = getelementptr inbounds %struct.fw_scsi_cmd_wr, %struct.fw_scsi_cmd_wr* %60, i32 0, i32 7
  store i64 %59, i64* %61, align 8
  %62 = load %struct.fw_scsi_cmd_wr*, %struct.fw_scsi_cmd_wr** %9, align 8
  %63 = getelementptr inbounds %struct.fw_scsi_cmd_wr, %struct.fw_scsi_cmd_wr* %62, i32 0, i32 6
  store i64 0, i64* %63, align 8
  %64 = load %struct.fw_scsi_cmd_wr*, %struct.fw_scsi_cmd_wr** %9, align 8
  %65 = getelementptr inbounds %struct.fw_scsi_cmd_wr, %struct.fw_scsi_cmd_wr* %64, i32 0, i32 5
  %66 = call i32 @memset(i32* %65, i32 0, i32 8)
  %67 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %68 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %67, i32 0, i32 0
  store %struct.csio_dma_buf* %68, %struct.csio_dma_buf** %10, align 8
  %69 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %10, align 8
  %70 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @cpu_to_be32(i32 %71)
  %73 = load %struct.fw_scsi_cmd_wr*, %struct.fw_scsi_cmd_wr** %9, align 8
  %74 = getelementptr inbounds %struct.fw_scsi_cmd_wr, %struct.fw_scsi_cmd_wr* %73, i32 0, i32 4
  store i8* %72, i8** %74, align 8
  %75 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %10, align 8
  %76 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @cpu_to_be64(i32 %77)
  %79 = load %struct.fw_scsi_cmd_wr*, %struct.fw_scsi_cmd_wr** %9, align 8
  %80 = getelementptr inbounds %struct.fw_scsi_cmd_wr, %struct.fw_scsi_cmd_wr* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load %struct.fw_scsi_cmd_wr*, %struct.fw_scsi_cmd_wr** %9, align 8
  %82 = getelementptr inbounds %struct.fw_scsi_cmd_wr, %struct.fw_scsi_cmd_wr* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.fw_scsi_cmd_wr*, %struct.fw_scsi_cmd_wr** %9, align 8
  %84 = getelementptr inbounds %struct.fw_scsi_cmd_wr, %struct.fw_scsi_cmd_wr* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load %struct.fw_scsi_cmd_wr*, %struct.fw_scsi_cmd_wr** %9, align 8
  %88 = getelementptr inbounds %struct.fw_scsi_cmd_wr, %struct.fw_scsi_cmd_wr* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load %struct.fw_scsi_cmd_wr*, %struct.fw_scsi_cmd_wr** %9, align 8
  %92 = getelementptr inbounds %struct.fw_scsi_cmd_wr, %struct.fw_scsi_cmd_wr* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  store i64 0, i64* %96, align 8
  %97 = load %struct.fw_scsi_cmd_wr*, %struct.fw_scsi_cmd_wr** %9, align 8
  %98 = getelementptr inbounds %struct.fw_scsi_cmd_wr, %struct.fw_scsi_cmd_wr* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 1
  store i64 0, i64* %102, align 8
  %103 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = ptrtoint i8* %104 to i64
  %106 = add i64 %105, 104
  %107 = inttoptr i64 %106 to i8*
  %108 = call i32 @csio_scsi_fcp_cmnd(%struct.csio_ioreq* %103, i8* %107)
  ret void
}

declare dso_local %struct.TYPE_8__* @csio_hw_to_scsim(%struct.csio_hw*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_WR_OP_V(i32) #1

declare dso_local i32 @FW_SCSI_CMD_WR_IMMDLEN(i64) #1

declare dso_local i32 @FW_WR_FLOWID_V(i32) #1

declare dso_local i32 @FW_WR_LEN16_V(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @csio_q_physiqid(%struct.csio_hw*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @csio_scsi_fcp_cmnd(%struct.csio_ioreq*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
