; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_atari_scsi.c_atari_scsi_dma_xfer_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_atari_scsi.c_atari_scsi_dma_xfer_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NCR5380_hostdata = type { i32 }
%struct.scsi_cmnd = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@DMA_MIN_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@atari_dma_buffer = common dso_local global i64 0, align 8
@STRAM_BUFFER_SIZE = common dso_local global i32 0, align 4
@NDEBUG_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"DMA transfer now %d bytes instead of %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.NCR5380_hostdata*, %struct.scsi_cmnd*)* @atari_scsi_dma_xfer_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atari_scsi_dma_xfer_len(%struct.NCR5380_hostdata* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.NCR5380_hostdata*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.NCR5380_hostdata* %0, %struct.NCR5380_hostdata** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @DMA_MIN_SIZE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %84

17:                                               ; preds = %2
  %18 = call i64 (...) @IS_A_TT()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %84

22:                                               ; preds = %17
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DMA_TO_DEVICE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %7, align 4
  br label %52

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 511
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %51

35:                                               ; preds = %30
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %37 = call i32 @falcon_classify_cmd(%struct.scsi_cmnd* %36)
  switch i32 %37, label %42 [
    i32 129, label %38
    i32 128, label %40
    i32 130, label %41
  ]

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %7, align 4
  br label %50

40:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %50

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %35, %41
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 1024
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  br label %48

48:                                               ; preds = %46, %45
  %49 = phi i32 [ 0, %45 ], [ %47, %46 ]
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %48, %40, %38
  br label %51

51:                                               ; preds = %50, %34
  br label %52

52:                                               ; preds = %51, %28
  %53 = load i64, i64* @atari_dma_buffer, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %57 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @virt_to_phys(i32 %59)
  %61 = call i32 @STRAM_ADDR(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* @STRAM_BUFFER_SIZE, align 4
  br label %66

65:                                               ; preds = %55, %52
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ 130560, %65 ]
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %71, %66
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i32, i32* @NDEBUG_DMA, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @dprintk(i32 %78, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %73
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %20, %16
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @IS_A_TT(...) #1

declare dso_local i32 @falcon_classify_cmd(%struct.scsi_cmnd*) #1

declare dso_local i32 @STRAM_ADDR(i32) #1

declare dso_local i32 @virt_to_phys(i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
