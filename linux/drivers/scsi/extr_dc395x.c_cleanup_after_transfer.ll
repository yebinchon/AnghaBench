; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_cleanup_after_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_cleanup_after_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32 }
%struct.ScsiReqBlk = type { i32 }

@TRM_S1040_DMA_COMMAND = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_FIFOCNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"cleanup/in\00", align 1
@TRM_S1040_DMA_FIFOSTAT = common dso_local global i32 0, align 4
@TRM_S1040_DMA_CONTROL = common dso_local global i32 0, align 4
@CLRXFIFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"cleanup/out\00", align 1
@TRM_S1040_SCSI_CONTROL = common dso_local global i32 0, align 4
@DO_DATALATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*)* @cleanup_after_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_after_transfer(%struct.AdapterCtlBlk* %0, %struct.ScsiReqBlk* %1) #0 {
  %3 = alloca %struct.AdapterCtlBlk*, align 8
  %4 = alloca %struct.ScsiReqBlk*, align 8
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %3, align 8
  store %struct.ScsiReqBlk* %1, %struct.ScsiReqBlk** %4, align 8
  %5 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %6 = load i32, i32* @TRM_S1040_DMA_COMMAND, align 4
  %7 = call i32 @DC395x_read16(%struct.AdapterCtlBlk* %5, i32 %6)
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %12 = load i32, i32* @TRM_S1040_SCSI_FIFOCNT, align 4
  %13 = call i32 @DC395x_read8(%struct.AdapterCtlBlk* %11, i32 %12)
  %14 = and i32 %13, 64
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %18 = call i32 @clear_fifo(%struct.AdapterCtlBlk* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %10
  %20 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %21 = load i32, i32* @TRM_S1040_DMA_FIFOSTAT, align 4
  %22 = call i32 @DC395x_read8(%struct.AdapterCtlBlk* %20, i32 %21)
  %23 = and i32 %22, 128
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %27 = load i32, i32* @TRM_S1040_DMA_CONTROL, align 4
  %28 = load i32, i32* @CLRXFIFO, align 4
  %29 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %19
  br label %52

31:                                               ; preds = %2
  %32 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %33 = load i32, i32* @TRM_S1040_DMA_FIFOSTAT, align 4
  %34 = call i32 @DC395x_read8(%struct.AdapterCtlBlk* %32, i32 %33)
  %35 = and i32 %34, 128
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %39 = load i32, i32* @TRM_S1040_DMA_CONTROL, align 4
  %40 = load i32, i32* @CLRXFIFO, align 4
  %41 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %31
  %43 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %44 = load i32, i32* @TRM_S1040_SCSI_FIFOCNT, align 4
  %45 = call i32 @DC395x_read8(%struct.AdapterCtlBlk* %43, i32 %44)
  %46 = and i32 %45, 64
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %50 = call i32 @clear_fifo(%struct.AdapterCtlBlk* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %42
  br label %52

52:                                               ; preds = %51, %30
  %53 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %54 = load i32, i32* @TRM_S1040_SCSI_CONTROL, align 4
  %55 = load i32, i32* @DO_DATALATCH, align 4
  %56 = call i32 @DC395x_write16(%struct.AdapterCtlBlk* %53, i32 %54, i32 %55)
  ret void
}

declare dso_local i32 @DC395x_read16(%struct.AdapterCtlBlk*, i32) #1

declare dso_local i32 @DC395x_read8(%struct.AdapterCtlBlk*, i32) #1

declare dso_local i32 @clear_fifo(%struct.AdapterCtlBlk*, i8*) #1

declare dso_local i32 @DC395x_write8(%struct.AdapterCtlBlk*, i32, i32) #1

declare dso_local i32 @DC395x_write16(%struct.AdapterCtlBlk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
