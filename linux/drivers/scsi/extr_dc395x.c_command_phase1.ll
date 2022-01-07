; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_command_phase1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_command_phase1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { %struct.DeviceCtlBlk* }
%struct.DeviceCtlBlk = type { i32 }
%struct.ScsiReqBlk = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@DBG_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"command_phase1: (0x%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"command_phase1\00", align 1
@TRM_S1040_SCSI_CONTROL = common dso_local global i32 0, align 4
@DO_CLRATN = common dso_local global i32 0, align 4
@AUTO_REQSENSE = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_FIFO = common dso_local global i32 0, align 4
@REQUEST_SENSE = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@SRB_COMMAND = common dso_local global i32 0, align 4
@DO_DATALATCH = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_COMMAND = common dso_local global i32 0, align 4
@SCMD_FIFO_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*, i64*)* @command_phase1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @command_phase1(%struct.AdapterCtlBlk* %0, %struct.ScsiReqBlk* %1, i64* %2) #0 {
  %4 = alloca %struct.AdapterCtlBlk*, align 8
  %5 = alloca %struct.ScsiReqBlk*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.DeviceCtlBlk*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %4, align 8
  store %struct.ScsiReqBlk* %1, %struct.ScsiReqBlk** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load i32, i32* @DBG_0, align 4
  %11 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %12 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = call i32 @dprintkdbg(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.TYPE_2__* %13)
  %15 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %16 = call i32 @clear_fifo(%struct.AdapterCtlBlk* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %18 = load i32, i32* @TRM_S1040_SCSI_CONTROL, align 4
  %19 = load i32, i32* @DO_CLRATN, align 4
  %20 = call i32 @DC395x_write16(%struct.AdapterCtlBlk* %17, i32 %18, i32 %19)
  %21 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %22 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @AUTO_REQSENSE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %54, label %27

27:                                               ; preds = %3
  %28 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %29 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %8, align 8
  store i64 0, i64* %9, align 8
  br label %34

34:                                               ; preds = %50, %27
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %37 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %35, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %34
  %43 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %44 = load i32, i32* @TRM_S1040_SCSI_FIFO, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %43, i32 %44, i32 %46)
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %8, align 8
  br label %50

50:                                               ; preds = %42
  %51 = load i64, i64* %9, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %9, align 8
  br label %34

53:                                               ; preds = %34
  br label %82

54:                                               ; preds = %3
  %55 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %56 = load i32, i32* @TRM_S1040_SCSI_FIFO, align 4
  %57 = load i32, i32* @REQUEST_SENSE, align 4
  %58 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %55, i32 %56, i32 %57)
  %59 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %60 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %59, i32 0, i32 0
  %61 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %60, align 8
  store %struct.DeviceCtlBlk* %61, %struct.DeviceCtlBlk** %7, align 8
  %62 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %63 = load i32, i32* @TRM_S1040_SCSI_FIFO, align 4
  %64 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %7, align 8
  %65 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 5
  %68 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %62, i32 %63, i32 %67)
  %69 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %70 = load i32, i32* @TRM_S1040_SCSI_FIFO, align 4
  %71 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %69, i32 %70, i32 0)
  %72 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %73 = load i32, i32* @TRM_S1040_SCSI_FIFO, align 4
  %74 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %72, i32 %73, i32 0)
  %75 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %76 = load i32, i32* @TRM_S1040_SCSI_FIFO, align 4
  %77 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %78 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %75, i32 %76, i32 %77)
  %79 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %80 = load i32, i32* @TRM_S1040_SCSI_FIFO, align 4
  %81 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %79, i32 %80, i32 0)
  br label %82

82:                                               ; preds = %54, %53
  %83 = load i32, i32* @SRB_COMMAND, align 4
  %84 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %85 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %89 = load i32, i32* @TRM_S1040_SCSI_CONTROL, align 4
  %90 = load i32, i32* @DO_DATALATCH, align 4
  %91 = call i32 @DC395x_write16(%struct.AdapterCtlBlk* %88, i32 %89, i32 %90)
  %92 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %93 = load i32, i32* @TRM_S1040_SCSI_COMMAND, align 4
  %94 = load i32, i32* @SCMD_FIFO_OUT, align 4
  %95 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %92, i32 %93, i32 %94)
  ret void
}

declare dso_local i32 @dprintkdbg(i32, i8*, %struct.TYPE_2__*) #1

declare dso_local i32 @clear_fifo(%struct.AdapterCtlBlk*, i8*) #1

declare dso_local i32 @DC395x_write16(%struct.AdapterCtlBlk*, i32, i32) #1

declare dso_local i32 @DC395x_write8(%struct.AdapterCtlBlk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
