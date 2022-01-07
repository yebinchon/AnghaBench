; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_msgout_phase0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_msgout_phase0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32 }
%struct.ScsiReqBlk = type { i32, i32 }

@DBG_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"msgout_phase0: (0x%p)\0A\00", align 1
@SRB_UNEXPECT_RESEL = common dso_local global i32 0, align 4
@SRB_ABORT_SENT = common dso_local global i32 0, align 4
@PH_BUS_FREE = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_CONTROL = common dso_local global i32 0, align 4
@DO_DATALATCH = common dso_local global i32 0, align 4
@SRB_MSGOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*, i32*)* @msgout_phase0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msgout_phase0(%struct.AdapterCtlBlk* %0, %struct.ScsiReqBlk* %1, i32* %2) #0 {
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
  %11 = call i32 @dprintkdbg(i32 %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %13 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SRB_UNEXPECT_RESEL, align 4
  %16 = load i32, i32* @SRB_ABORT_SENT, align 4
  %17 = add nsw i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @PH_BUS_FREE, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %3
  %24 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %25 = load i32, i32* @TRM_S1040_SCSI_CONTROL, align 4
  %26 = load i32, i32* @DO_DATALATCH, align 4
  %27 = call i32 @DC395x_write16(%struct.AdapterCtlBlk* %24, i32 %25, i32 %26)
  %28 = load i32, i32* @SRB_MSGOUT, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %31 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  ret void
}

declare dso_local i32 @dprintkdbg(i32, i8*, i32) #1

declare dso_local i32 @DC395x_write16(%struct.AdapterCtlBlk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
