; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_create_def_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_create_def_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.TYPE_10__, i32, %struct.be_mem_descriptor* }
%struct.TYPE_10__ = type { i32 }
%struct.be_mem_descriptor = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.hwi_context_memory = type { %struct.be_queue_info*, %struct.be_queue_info* }
%struct.be_queue_info = type { i32, %struct.be_dma_mem }
%struct.be_dma_mem = type { i64 }
%struct.hwi_controller = type { i32 }

@HWI_MEM_ASYNC_DATA_RING_ULP0 = common dso_local global i64 0, align 8
@MEM_DESCR_OFFSET = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"BM_%d : be_fill_queue Failed for DEF PDU DATA on ULP : %d\0A\00", align 1
@BEISCSI_DEFQ_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"BM_%d be_cmd_create_default_pdu_queue Failed for DEF PDU DATA on ULP : %d\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"BM_%d : iscsi def data id on ULP : %d is  %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"BM_%d : DEFAULT PDU DATA RING CREATEDon ULP : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*, %struct.hwi_context_memory*, %struct.hwi_controller*, i32, i64)* @beiscsi_create_def_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_create_def_data(%struct.beiscsi_hba* %0, %struct.hwi_context_memory* %1, %struct.hwi_controller* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.beiscsi_hba*, align 8
  %8 = alloca %struct.hwi_context_memory*, align 8
  %9 = alloca %struct.hwi_controller*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.be_queue_info*, align 8
  %15 = alloca %struct.be_queue_info*, align 8
  %16 = alloca %struct.be_dma_mem*, align 8
  %17 = alloca %struct.be_mem_descriptor*, align 8
  %18 = alloca i8*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %7, align 8
  store %struct.hwi_context_memory* %1, %struct.hwi_context_memory** %8, align 8
  store %struct.hwi_controller* %2, %struct.hwi_controller** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %8, align 8
  %20 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %19, i32 0, i32 0
  %21 = load %struct.be_queue_info*, %struct.be_queue_info** %20, align 8
  %22 = load i64, i64* %11, align 8
  %23 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %21, i64 %22
  store %struct.be_queue_info* %23, %struct.be_queue_info** %14, align 8
  %24 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %8, align 8
  %25 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %24, i32 0, i32 1
  %26 = load %struct.be_queue_info*, %struct.be_queue_info** %25, align 8
  %27 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %26, i64 0
  store %struct.be_queue_info* %27, %struct.be_queue_info** %15, align 8
  %28 = load %struct.be_queue_info*, %struct.be_queue_info** %14, align 8
  %29 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %28, i32 0, i32 1
  store %struct.be_dma_mem* %29, %struct.be_dma_mem** %16, align 8
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %31 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %30, i32 0, i32 2
  %32 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %31, align 8
  store %struct.be_mem_descriptor* %32, %struct.be_mem_descriptor** %17, align 8
  %33 = load i64, i64* @HWI_MEM_ASYNC_DATA_RING_ULP0, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @MEM_DESCR_OFFSET, align 8
  %36 = mul i64 %34, %35
  %37 = add i64 %33, %36
  %38 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %17, align 8
  %39 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %38, i64 %37
  store %struct.be_mem_descriptor* %39, %struct.be_mem_descriptor** %17, align 8
  %40 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %17, align 8
  %41 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %18, align 8
  %48 = load %struct.be_queue_info*, %struct.be_queue_info** %14, align 8
  %49 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %17, align 8
  %50 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = udiv i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = load i8*, i8** %18, align 8
  %59 = call i32 @be_fill_queue(%struct.be_queue_info* %48, i32 %57, i32 4, i8* %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %5
  %63 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %64 = load i32, i32* @KERN_ERR, align 4
  %65 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %66 = load i64, i64* %11, align 8
  %67 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, i64, ...) @beiscsi_log(%struct.beiscsi_hba* %63, i32 %64, i32 %65, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %66)
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %6, align 4
  br label %122

69:                                               ; preds = %5
  %70 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %17, align 8
  %71 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.be_dma_mem*, %struct.be_dma_mem** %16, align 8
  %82 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %84 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %83, i32 0, i32 1
  %85 = load %struct.be_queue_info*, %struct.be_queue_info** %15, align 8
  %86 = load %struct.be_queue_info*, %struct.be_queue_info** %14, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %89 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @BEISCSI_DEFQ_DATA, align 4
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @be_cmd_create_default_pdu_queue(i32* %84, %struct.be_queue_info* %85, %struct.be_queue_info* %86, i32 %87, i32 %91, i32 %92, i64 %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %69
  %98 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %99 = load i32, i32* @KERN_ERR, align 4
  %100 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %101 = load i64, i64* %11, align 8
  %102 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, i64, ...) @beiscsi_log(%struct.beiscsi_hba* %98, i32 %99, i32 %100, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i64 %101)
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %6, align 4
  br label %122

104:                                              ; preds = %69
  %105 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %106 = load i32, i32* @KERN_INFO, align 4
  %107 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %108 = load i64, i64* %11, align 8
  %109 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %8, align 8
  %110 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %109, i32 0, i32 0
  %111 = load %struct.be_queue_info*, %struct.be_queue_info** %110, align 8
  %112 = load i64, i64* %11, align 8
  %113 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %111, i64 %112
  %114 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, i64, ...) @beiscsi_log(%struct.beiscsi_hba* %105, i32 %106, i32 %107, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %108, i32 %115)
  %117 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %118 = load i32, i32* @KERN_INFO, align 4
  %119 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %120 = load i64, i64* %11, align 8
  %121 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, i64, ...) @beiscsi_log(%struct.beiscsi_hba* %117, i32 %118, i32 %119, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %120)
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %104, %97, %62
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @be_fill_queue(%struct.be_queue_info*, i32, i32, i8*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i64, ...) #1

declare dso_local i32 @be_cmd_create_default_pdu_queue(i32*, %struct.be_queue_info*, %struct.be_queue_info*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
