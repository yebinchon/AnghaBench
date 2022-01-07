; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_process_fwevtq_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_process_fwevtq_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_fl_dma_buf = type { i32 }
%struct.rss_header = type { i64 }

@CPL_FW6_PLD = common dso_local global i64 0, align 8
@n_cpl_fw6_pld = common dso_local global i32 0, align 4
@n_cpl_unexp = common dso_local global i32 0, align 4
@CPL_FW6_MSG = common dso_local global i64 0, align 8
@CPL_FW4_MSG = common dso_local global i64 0, align 8
@n_cpl_fw6_msg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"unexpected CPL %#x on FW event queue\0A\00", align 1
@CSIO_EVT_FW = common dso_local global i32 0, align 4
@n_evt_drop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, i8*, i32, %struct.csio_fl_dma_buf*, i8*)* @csio_process_fwevtq_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_process_fwevtq_entry(%struct.csio_hw* %0, i8* %1, i32 %2, %struct.csio_fl_dma_buf* %3, i8* %4) #0 {
  %6 = alloca %struct.csio_hw*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.csio_fl_dma_buf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.csio_fl_dma_buf* %3, %struct.csio_fl_dma_buf** %9, align 8
  store i8* %4, i8** %10, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.rss_header*
  %17 = getelementptr inbounds %struct.rss_header, %struct.rss_header* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %11, align 8
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* @CPL_FW6_PLD, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %5
  %23 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %24 = load i32, i32* @n_cpl_fw6_pld, align 4
  %25 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %23, i32 %24)
  %26 = load %struct.csio_fl_dma_buf*, %struct.csio_fl_dma_buf** %9, align 8
  %27 = icmp ne %struct.csio_fl_dma_buf* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.csio_fl_dma_buf*, %struct.csio_fl_dma_buf** %9, align 8
  %30 = getelementptr inbounds %struct.csio_fl_dma_buf, %struct.csio_fl_dma_buf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28, %22
  %34 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %35 = load i32, i32* @n_cpl_unexp, align 4
  %36 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %34, i32 %35)
  br label %85

37:                                               ; preds = %28
  %38 = load %struct.csio_fl_dma_buf*, %struct.csio_fl_dma_buf** %9, align 8
  %39 = bitcast %struct.csio_fl_dma_buf* %38 to i8*
  store i8* %39, i8** %12, align 8
  %40 = load %struct.csio_fl_dma_buf*, %struct.csio_fl_dma_buf** %9, align 8
  %41 = getelementptr inbounds %struct.csio_fl_dma_buf, %struct.csio_fl_dma_buf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %73

43:                                               ; preds = %5
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @CPL_FW6_MSG, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @CPL_FW4_MSG, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %47, %43
  %52 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %53 = load i32, i32* @n_cpl_fw6_msg, align 4
  %54 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %52, i32 %53)
  %55 = load i8*, i8** %7, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = add i64 %56, 4
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** %12, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* @CPL_FW6_MSG, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i64 4, i64 4
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %13, align 4
  br label %72

65:                                               ; preds = %47
  %66 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @csio_warn(%struct.csio_hw* %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %67)
  %69 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %70 = load i32, i32* @n_cpl_unexp, align 4
  %71 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %69, i32 %70)
  br label %85

72:                                               ; preds = %51
  br label %73

73:                                               ; preds = %72, %37
  %74 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %75 = load i32, i32* @CSIO_EVT_FW, align 4
  %76 = load i8*, i8** %12, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %14, align 4
  %79 = call i64 @csio_enqueue_evt_lock(%struct.csio_hw* %74, i32 %75, i8* %76, i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %83 = load i32, i32* @n_evt_drop, align 4
  %84 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %82, i32 %83)
  br label %85

85:                                               ; preds = %33, %65, %81, %73
  ret void
}

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_warn(%struct.csio_hw*, i8*, i64) #1

declare dso_local i64 @csio_enqueue_evt_lock(%struct.csio_hw*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
