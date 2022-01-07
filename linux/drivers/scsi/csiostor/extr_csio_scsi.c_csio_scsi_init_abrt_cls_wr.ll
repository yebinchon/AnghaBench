; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsi_init_abrt_cls_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsi_init_abrt_cls_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_ioreq = type { i64, i32, %struct.csio_rnode*, %struct.TYPE_2__* }
%struct.csio_rnode = type { i32 }
%struct.TYPE_2__ = type { %struct.csio_hw* }
%struct.csio_hw = type { i32 }
%struct.fw_scsi_abrt_cls_wr = type { i64, i32, i64, i64*, i64, i32, i8*, i8* }

@FW_SCSI_ABRT_CLS_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_ioreq*, i8*, i32, i32)* @csio_scsi_init_abrt_cls_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_scsi_init_abrt_cls_wr(%struct.csio_ioreq* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.csio_ioreq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.csio_hw*, align 8
  %10 = alloca %struct.csio_rnode*, align 8
  %11 = alloca %struct.fw_scsi_abrt_cls_wr*, align 8
  store %struct.csio_ioreq* %0, %struct.csio_ioreq** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.csio_ioreq*, %struct.csio_ioreq** %5, align 8
  %13 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.csio_hw*, %struct.csio_hw** %15, align 8
  store %struct.csio_hw* %16, %struct.csio_hw** %9, align 8
  %17 = load %struct.csio_ioreq*, %struct.csio_ioreq** %5, align 8
  %18 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %17, i32 0, i32 2
  %19 = load %struct.csio_rnode*, %struct.csio_rnode** %18, align 8
  store %struct.csio_rnode* %19, %struct.csio_rnode** %10, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.fw_scsi_abrt_cls_wr*
  store %struct.fw_scsi_abrt_cls_wr* %21, %struct.fw_scsi_abrt_cls_wr** %11, align 8
  %22 = load i32, i32* @FW_SCSI_ABRT_CLS_WR, align 4
  %23 = call i32 @FW_WR_OP_V(i32 %22)
  %24 = call i8* @cpu_to_be32(i32 %23)
  %25 = load %struct.fw_scsi_abrt_cls_wr*, %struct.fw_scsi_abrt_cls_wr** %11, align 8
  %26 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, %struct.fw_scsi_abrt_cls_wr* %25, i32 0, i32 7
  store i8* %24, i8** %26, align 8
  %27 = load %struct.csio_rnode*, %struct.csio_rnode** %10, align 8
  %28 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @FW_WR_FLOWID_V(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @DIV_ROUND_UP(i32 %31, i32 16)
  %33 = call i32 @FW_WR_LEN16_V(i32 %32)
  %34 = or i32 %30, %33
  %35 = call i8* @cpu_to_be32(i32 %34)
  %36 = load %struct.fw_scsi_abrt_cls_wr*, %struct.fw_scsi_abrt_cls_wr** %11, align 8
  %37 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, %struct.fw_scsi_abrt_cls_wr* %36, i32 0, i32 6
  store i8* %35, i8** %37, align 8
  %38 = load %struct.csio_ioreq*, %struct.csio_ioreq** %5, align 8
  %39 = ptrtoint %struct.csio_ioreq* %38 to i64
  %40 = load %struct.fw_scsi_abrt_cls_wr*, %struct.fw_scsi_abrt_cls_wr** %11, align 8
  %41 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, %struct.fw_scsi_abrt_cls_wr* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %43 = load %struct.csio_ioreq*, %struct.csio_ioreq** %5, align 8
  %44 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @csio_q_physiqid(%struct.csio_hw* %42, i32 %45)
  %47 = call i32 @cpu_to_be16(i32 %46)
  %48 = load %struct.fw_scsi_abrt_cls_wr*, %struct.fw_scsi_abrt_cls_wr** %11, align 8
  %49 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, %struct.fw_scsi_abrt_cls_wr* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  %50 = load %struct.csio_ioreq*, %struct.csio_ioreq** %5, align 8
  %51 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.fw_scsi_abrt_cls_wr*, %struct.fw_scsi_abrt_cls_wr** %11, align 8
  %54 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, %struct.fw_scsi_abrt_cls_wr* %53, i32 0, i32 4
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @FW_SCSI_ABRT_CLS_WR_SUB_OPCODE(i32 %55)
  %57 = call i32 @FW_SCSI_ABRT_CLS_WR_CHK_ALL_IO(i32 0)
  %58 = or i32 %56, %57
  %59 = load %struct.fw_scsi_abrt_cls_wr*, %struct.fw_scsi_abrt_cls_wr** %11, align 8
  %60 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, %struct.fw_scsi_abrt_cls_wr* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.fw_scsi_abrt_cls_wr*, %struct.fw_scsi_abrt_cls_wr** %11, align 8
  %62 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, %struct.fw_scsi_abrt_cls_wr* %61, i32 0, i32 3
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.fw_scsi_abrt_cls_wr*, %struct.fw_scsi_abrt_cls_wr** %11, align 8
  %66 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, %struct.fw_scsi_abrt_cls_wr* %65, i32 0, i32 3
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.fw_scsi_abrt_cls_wr*, %struct.fw_scsi_abrt_cls_wr** %11, align 8
  %70 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, %struct.fw_scsi_abrt_cls_wr* %69, i32 0, i32 3
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 2
  store i64 0, i64* %72, align 8
  %73 = load %struct.fw_scsi_abrt_cls_wr*, %struct.fw_scsi_abrt_cls_wr** %11, align 8
  %74 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, %struct.fw_scsi_abrt_cls_wr* %73, i32 0, i32 3
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 3
  store i64 0, i64* %76, align 8
  %77 = load %struct.csio_ioreq*, %struct.csio_ioreq** %5, align 8
  %78 = ptrtoint %struct.csio_ioreq* %77 to i64
  %79 = load %struct.fw_scsi_abrt_cls_wr*, %struct.fw_scsi_abrt_cls_wr** %11, align 8
  %80 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, %struct.fw_scsi_abrt_cls_wr* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_WR_OP_V(i32) #1

declare dso_local i32 @FW_WR_FLOWID_V(i32) #1

declare dso_local i32 @FW_WR_LEN16_V(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @csio_q_physiqid(%struct.csio_hw*, i32) #1

declare dso_local i32 @FW_SCSI_ABRT_CLS_WR_SUB_OPCODE(i32) #1

declare dso_local i32 @FW_SCSI_ABRT_CLS_WR_CHK_ALL_IO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
