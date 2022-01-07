; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_msgin_phase1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_msgin_phase1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32 }
%struct.ScsiReqBlk = type { i32, i32 }

@DBG_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"msgin_phase1: (0x%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"msgin_phase1\00", align 1
@TRM_S1040_SCSI_COUNTER = common dso_local global i32 0, align 4
@SRB_MSGIN = common dso_local global i32 0, align 4
@SRB_DISCONNECT = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_CONTROL = common dso_local global i32 0, align 4
@DO_DATALATCH = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_COMMAND = common dso_local global i32 0, align 4
@SCMD_FIFO_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*, i32*)* @msgin_phase1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msgin_phase1(%struct.AdapterCtlBlk* %0, %struct.ScsiReqBlk* %1, i32* %2) #0 {
  %4 = alloca %struct.AdapterCtlBlk*, align 8
  %5 = alloca %struct.ScsiReqBlk*, align 8
  %6 = alloca i32*, align 8
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %4, align 8
  store %struct.ScsiReqBlk* %1, %struct.ScsiReqBlk** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @DBG_0, align 4
  %8 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %9 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dprintkdbg(i32 %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %13 = call i32 @clear_fifo(%struct.AdapterCtlBlk* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %15 = load i32, i32* @TRM_S1040_SCSI_COUNTER, align 4
  %16 = call i32 @DC395x_write32(%struct.AdapterCtlBlk* %14, i32 %15, i32 1)
  %17 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %18 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SRB_MSGIN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @SRB_DISCONNECT, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %27 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @SRB_MSGIN, align 4
  %31 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %32 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %23, %3
  %36 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %37 = load i32, i32* @TRM_S1040_SCSI_CONTROL, align 4
  %38 = load i32, i32* @DO_DATALATCH, align 4
  %39 = call i32 @DC395x_write16(%struct.AdapterCtlBlk* %36, i32 %37, i32 %38)
  %40 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %41 = load i32, i32* @TRM_S1040_SCSI_COMMAND, align 4
  %42 = load i32, i32* @SCMD_FIFO_IN, align 4
  %43 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %40, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @dprintkdbg(i32, i8*, i32) #1

declare dso_local i32 @clear_fifo(%struct.AdapterCtlBlk*, i8*) #1

declare dso_local i32 @DC395x_write32(%struct.AdapterCtlBlk*, i32, i32) #1

declare dso_local i32 @DC395x_write16(%struct.AdapterCtlBlk*, i32, i32) #1

declare dso_local i32 @DC395x_write8(%struct.AdapterCtlBlk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
