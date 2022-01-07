; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsi_cmpl_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsi_cmpl_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_ioreq = type { i64 }
%struct.csio_hw = type { i32 }
%struct.csio_fl_dma_buf = type { i32 }
%struct.cpl_fw6_msg = type { i64, i64 }
%struct.csio_scsim = type { i32 }
%struct.fw_scsi_read_wr = type { i64 }
%struct.fw_scsi_abrt_cls_wr = type { i64 }

@CPL_FW6_MSG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Error: Invalid CPL msg %x recvd on SCSI q\0A\00", align 1
@n_inval_cplop = common dso_local global i32 0, align 4
@FW_SCSI_READ_WR = common dso_local global i64 0, align 8
@FW_SCSI_WRITE_WR = common dso_local global i64 0, align 8
@FW_SCSI_CMD_WR = common dso_local global i64 0, align 8
@FW_SCSI_ABRT_CLS_WR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"WR with invalid opcode in SCSI IQ: %x\0A\00", align 1
@n_inval_scsiop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.csio_ioreq* @csio_scsi_cmpl_handler(%struct.csio_hw* %0, i8* %1, i32 %2, %struct.csio_fl_dma_buf* %3, i8* %4, i64** %5) #0 {
  %7 = alloca %struct.csio_ioreq*, align 8
  %8 = alloca %struct.csio_hw*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.csio_fl_dma_buf*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64**, align 8
  %14 = alloca %struct.csio_ioreq*, align 8
  %15 = alloca %struct.cpl_fw6_msg*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.csio_scsim*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.csio_fl_dma_buf* %3, %struct.csio_fl_dma_buf** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64** %5, i64*** %13, align 8
  store %struct.csio_ioreq* null, %struct.csio_ioreq** %14, align 8
  %19 = load %struct.csio_hw*, %struct.csio_hw** %8, align 8
  %20 = call %struct.csio_scsim* @csio_hw_to_scsim(%struct.csio_hw* %19)
  store %struct.csio_scsim* %20, %struct.csio_scsim** %18, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = add i64 %22, 4
  %24 = inttoptr i64 %23 to %struct.cpl_fw6_msg*
  store %struct.cpl_fw6_msg* %24, %struct.cpl_fw6_msg** %15, align 8
  %25 = load %struct.cpl_fw6_msg*, %struct.cpl_fw6_msg** %15, align 8
  %26 = getelementptr inbounds %struct.cpl_fw6_msg, %struct.cpl_fw6_msg* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CPL_FW6_MSG, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %6
  %34 = load %struct.csio_hw*, %struct.csio_hw** %8, align 8
  %35 = load %struct.cpl_fw6_msg*, %struct.cpl_fw6_msg** %15, align 8
  %36 = getelementptr inbounds %struct.cpl_fw6_msg, %struct.cpl_fw6_msg* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @csio_warn(%struct.csio_hw* %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load %struct.csio_scsim*, %struct.csio_scsim** %18, align 8
  %40 = load i32, i32* @n_inval_cplop, align 4
  %41 = call i32 @CSIO_INC_STATS(%struct.csio_scsim* %39, i32 %40)
  store %struct.csio_ioreq* null, %struct.csio_ioreq** %7, align 8
  br label %109

42:                                               ; preds = %6
  %43 = load %struct.cpl_fw6_msg*, %struct.cpl_fw6_msg** %15, align 8
  %44 = getelementptr inbounds %struct.cpl_fw6_msg, %struct.cpl_fw6_msg* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i64*
  store i64* %46, i64** %16, align 8
  %47 = load i64*, i64** %16, align 8
  %48 = call i64 @csio_wr_status(i64* %47)
  store i64 %48, i64* %17, align 8
  %49 = load i64*, i64** %16, align 8
  %50 = load i64**, i64*** %13, align 8
  store i64* %49, i64** %50, align 8
  %51 = load i64*, i64** %16, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @FW_SCSI_READ_WR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %42
  %56 = load i64*, i64** %16, align 8
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @FW_SCSI_WRITE_WR, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i64*, i64** %16, align 8
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @FW_SCSI_CMD_WR, align 8
  %64 = icmp eq i64 %62, %63
  br label %65

65:                                               ; preds = %60, %55, %42
  %66 = phi i1 [ true, %55 ], [ true, %42 ], [ %64, %60 ]
  %67 = zext i1 %66 to i32
  %68 = call i64 @likely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %65
  %71 = load i64*, i64** %16, align 8
  %72 = bitcast i64* %71 to %struct.fw_scsi_read_wr*
  %73 = getelementptr inbounds %struct.fw_scsi_read_wr, %struct.fw_scsi_read_wr* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.csio_ioreq*
  store %struct.csio_ioreq* %75, %struct.csio_ioreq** %14, align 8
  %76 = load %struct.csio_ioreq*, %struct.csio_ioreq** %14, align 8
  %77 = call i32 @virt_addr_valid(%struct.csio_ioreq* %76)
  %78 = call i32 @CSIO_DB_ASSERT(i32 %77)
  %79 = load i64, i64* %17, align 8
  %80 = load %struct.csio_ioreq*, %struct.csio_ioreq** %14, align 8
  %81 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.csio_ioreq*, %struct.csio_ioreq** %14, align 8
  store %struct.csio_ioreq* %82, %struct.csio_ioreq** %7, align 8
  br label %109

83:                                               ; preds = %65
  %84 = load i64*, i64** %16, align 8
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @FW_SCSI_ABRT_CLS_WR, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load i64*, i64** %16, align 8
  %90 = bitcast i64* %89 to %struct.fw_scsi_abrt_cls_wr*
  %91 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, %struct.fw_scsi_abrt_cls_wr* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to %struct.csio_ioreq*
  store %struct.csio_ioreq* %93, %struct.csio_ioreq** %14, align 8
  %94 = load %struct.csio_ioreq*, %struct.csio_ioreq** %14, align 8
  %95 = call i32 @virt_addr_valid(%struct.csio_ioreq* %94)
  %96 = call i32 @CSIO_DB_ASSERT(i32 %95)
  %97 = load i64, i64* %17, align 8
  %98 = load %struct.csio_ioreq*, %struct.csio_ioreq** %14, align 8
  %99 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.csio_ioreq*, %struct.csio_ioreq** %14, align 8
  store %struct.csio_ioreq* %100, %struct.csio_ioreq** %7, align 8
  br label %109

101:                                              ; preds = %83
  %102 = load %struct.csio_hw*, %struct.csio_hw** %8, align 8
  %103 = load i64*, i64** %16, align 8
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @csio_warn(%struct.csio_hw* %102, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %104)
  %106 = load %struct.csio_scsim*, %struct.csio_scsim** %18, align 8
  %107 = load i32, i32* @n_inval_scsiop, align 4
  %108 = call i32 @CSIO_INC_STATS(%struct.csio_scsim* %106, i32 %107)
  store %struct.csio_ioreq* null, %struct.csio_ioreq** %7, align 8
  br label %109

109:                                              ; preds = %101, %88, %70, %33
  %110 = load %struct.csio_ioreq*, %struct.csio_ioreq** %7, align 8
  ret %struct.csio_ioreq* %110
}

declare dso_local %struct.csio_scsim* @csio_hw_to_scsim(%struct.csio_hw*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @csio_warn(%struct.csio_hw*, i8*, i64) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_scsim*, i32) #1

declare dso_local i64 @csio_wr_status(i64*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @CSIO_DB_ASSERT(i32) #1

declare dso_local i32 @virt_addr_valid(%struct.csio_ioreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
