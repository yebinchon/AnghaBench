; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_msgout_phase1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_msgout_phase1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32 }
%struct.ScsiReqBlk = type { i32, i64, i64*, i32 }

@DBG_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"msgout_phase1: (0x%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"msgout_phase1\00", align 1
@SRB_MSGOUT = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"msgout_phase1: (0x%p) Phase unexpected\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"msgout_phase1: (0x%p) NOP msg\0A\00", align 1
@TRM_S1040_SCSI_FIFO = common dso_local global i32 0, align 4
@MSG_NOP = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_CONTROL = common dso_local global i32 0, align 4
@DO_DATALATCH = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_COMMAND = common dso_local global i32 0, align 4
@SCMD_FIFO_OUT = common dso_local global i32 0, align 4
@MSG_ABORT = common dso_local global i64 0, align 8
@SRB_ABORT_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*, i64*)* @msgout_phase1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msgout_phase1(%struct.AdapterCtlBlk* %0, %struct.ScsiReqBlk* %1, i64* %2) #0 {
  %4 = alloca %struct.AdapterCtlBlk*, align 8
  %5 = alloca %struct.ScsiReqBlk*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %4, align 8
  store %struct.ScsiReqBlk* %1, %struct.ScsiReqBlk** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i32, i32* @DBG_0, align 4
  %10 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %11 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @dprintkdbg(i32 %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %15 = call i32 @clear_fifo(%struct.AdapterCtlBlk* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %17 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SRB_MSGOUT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @SRB_MSGOUT, align 4
  %24 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %25 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* @KERN_DEBUG, align 4
  %29 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %30 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dprintkl(i32 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %22, %3
  %34 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %35 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @DBG_0, align 4
  %40 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %41 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dprintkdbg(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %45 = load i32, i32* @TRM_S1040_SCSI_FIFO, align 4
  %46 = load i32, i32* @MSG_NOP, align 4
  %47 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %44, i32 %45, i32 %46)
  %48 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %49 = load i32, i32* @TRM_S1040_SCSI_CONTROL, align 4
  %50 = load i32, i32* @DO_DATALATCH, align 4
  %51 = call i32 @DC395x_write16(%struct.AdapterCtlBlk* %48, i32 %49, i32 %50)
  %52 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %53 = load i32, i32* @TRM_S1040_SCSI_COMMAND, align 4
  %54 = load i32, i32* @SCMD_FIFO_OUT, align 4
  %55 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %52, i32 %53, i32 %54)
  br label %96

56:                                               ; preds = %33
  %57 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %58 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = bitcast i64* %59 to i32*
  store i32* %60, i32** %8, align 8
  store i64 0, i64* %7, align 8
  br label %61

61:                                               ; preds = %74, %56
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %64 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %69 = load i32, i32* @TRM_S1040_SCSI_FIFO, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %8, align 8
  %72 = load i32, i32* %70, align 4
  %73 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %68, i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %67
  %75 = load i64, i64* %7, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %7, align 8
  br label %61

77:                                               ; preds = %61
  %78 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %79 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  %80 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %81 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MSG_ABORT, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %77
  %88 = load i32, i32* @SRB_ABORT_SENT, align 4
  %89 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %90 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %87, %77
  %92 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %93 = load i32, i32* @TRM_S1040_SCSI_COMMAND, align 4
  %94 = load i32, i32* @SCMD_FIFO_OUT, align 4
  %95 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %91, %38
  ret void
}

declare dso_local i32 @dprintkdbg(i32, i8*, i32) #1

declare dso_local i32 @clear_fifo(%struct.AdapterCtlBlk*, i8*) #1

declare dso_local i32 @dprintkl(i32, i8*, i32) #1

declare dso_local i32 @DC395x_write8(%struct.AdapterCtlBlk*, i32, i32) #1

declare dso_local i32 @DC395x_write16(%struct.AdapterCtlBlk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
