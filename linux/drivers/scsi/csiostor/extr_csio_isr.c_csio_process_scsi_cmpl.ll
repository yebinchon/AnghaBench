; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_isr.c_csio_process_scsi_cmpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_isr.c_csio_process_scsi_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_fl_dma_buf = type { i32 }
%struct.csio_ioreq = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fw_scsi_abrt_cls_wr = type { i32 }
%struct.list_head = type { i32 }

@FW_SCSI_ABRT_CLS_WR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"%s cmpl recvd ioreq:%p status:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Close\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Abort\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, i8*, i32, %struct.csio_fl_dma_buf*, i8*)* @csio_process_scsi_cmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_process_scsi_cmpl(%struct.csio_hw* %0, i8* %1, i32 %2, %struct.csio_fl_dma_buf* %3, i8* %4) #0 {
  %6 = alloca %struct.csio_hw*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.csio_fl_dma_buf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.csio_ioreq*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.csio_fl_dma_buf* %3, %struct.csio_fl_dma_buf** %9, align 8
  store i8* %4, i8** %10, align 8
  %16 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.csio_fl_dma_buf*, %struct.csio_fl_dma_buf** %9, align 8
  %20 = call %struct.csio_ioreq* @csio_scsi_cmpl_handler(%struct.csio_hw* %16, i8* %17, i32 %18, %struct.csio_fl_dma_buf* %19, i32* null, i64** %12)
  store %struct.csio_ioreq* %20, %struct.csio_ioreq** %11, align 8
  %21 = load %struct.csio_ioreq*, %struct.csio_ioreq** %11, align 8
  %22 = call i64 @likely(%struct.csio_ioreq* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %108

24:                                               ; preds = %5
  %25 = load i64*, i64** %12, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FW_SCSI_ABRT_CLS_WR, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %94

32:                                               ; preds = %24
  %33 = load i64*, i64** %12, align 8
  %34 = bitcast i64* %33 to %struct.fw_scsi_abrt_cls_wr*
  %35 = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, %struct.fw_scsi_abrt_cls_wr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @FW_SCSI_ABRT_CLS_WR_SUB_OPCODE_GET(i32 %36)
  store i64 %37, i64* %13, align 8
  %38 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %39 = load i64, i64* %13, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %43 = load %struct.csio_ioreq*, %struct.csio_ioreq** %11, align 8
  %44 = load %struct.csio_ioreq*, %struct.csio_ioreq** %11, align 8
  %45 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @csio_dbg(%struct.csio_hw* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %42, %struct.csio_ioreq* %43, i32 %46)
  %48 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %49 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %48, i32 0, i32 0
  %50 = load i64, i64* %15, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load i64, i64* %13, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %32
  %55 = load %struct.csio_ioreq*, %struct.csio_ioreq** %11, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = bitcast i8* %56 to %struct.list_head*
  %58 = call i32 @csio_scsi_closed(%struct.csio_ioreq* %55, %struct.list_head* %57)
  br label %64

59:                                               ; preds = %32
  %60 = load %struct.csio_ioreq*, %struct.csio_ioreq** %11, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = bitcast i8* %61 to %struct.list_head*
  %63 = call i32 @csio_scsi_aborted(%struct.csio_ioreq* %60, %struct.list_head* %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.csio_ioreq*, %struct.csio_ioreq** %11, align 8
  %66 = call i8* @csio_scsi_cmnd(%struct.csio_ioreq* %65)
  store i8* %66, i8** %14, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = icmp eq i8* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load %struct.csio_ioreq*, %struct.csio_ioreq** %11, align 8
  %74 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i32 @list_del_init(i32* %75)
  br label %77

77:                                               ; preds = %72, %64
  %78 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %79 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %78, i32 0, i32 0
  %80 = load i64, i64* %15, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load i8*, i8** %14, align 8
  %83 = icmp eq i8* %82, null
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %77
  %88 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %89 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %90 = call i32 @csio_hw_to_scsim(%struct.csio_hw* %89)
  %91 = load %struct.csio_ioreq*, %struct.csio_ioreq** %11, align 8
  %92 = call i32 @csio_put_scsi_ioreq_lock(%struct.csio_hw* %88, i32 %90, %struct.csio_ioreq* %91)
  br label %93

93:                                               ; preds = %87, %77
  br label %107

94:                                               ; preds = %24
  %95 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %96 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %95, i32 0, i32 0
  %97 = load i64, i64* %15, align 8
  %98 = call i32 @spin_lock_irqsave(i32* %96, i64 %97)
  %99 = load %struct.csio_ioreq*, %struct.csio_ioreq** %11, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = bitcast i8* %100 to %struct.list_head*
  %102 = call i32 @csio_scsi_completed(%struct.csio_ioreq* %99, %struct.list_head* %101)
  %103 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %104 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %103, i32 0, i32 0
  %105 = load i64, i64* %15, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  br label %107

107:                                              ; preds = %94, %93
  br label %108

108:                                              ; preds = %107, %5
  ret void
}

declare dso_local %struct.csio_ioreq* @csio_scsi_cmpl_handler(%struct.csio_hw*, i8*, i32, %struct.csio_fl_dma_buf*, i32*, i64**) #1

declare dso_local i64 @likely(%struct.csio_ioreq*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @FW_SCSI_ABRT_CLS_WR_SUB_OPCODE_GET(i32) #1

declare dso_local i32 @csio_dbg(%struct.csio_hw*, i8*, i8*, %struct.csio_ioreq*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @csio_scsi_closed(%struct.csio_ioreq*, %struct.list_head*) #1

declare dso_local i32 @csio_scsi_aborted(%struct.csio_ioreq*, %struct.list_head*) #1

declare dso_local i8* @csio_scsi_cmnd(%struct.csio_ioreq*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @csio_put_scsi_ioreq_lock(%struct.csio_hw*, i32, %struct.csio_ioreq*) #1

declare dso_local i32 @csio_hw_to_scsim(%struct.csio_hw*) #1

declare dso_local i32 @csio_scsi_completed(%struct.csio_ioreq*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
