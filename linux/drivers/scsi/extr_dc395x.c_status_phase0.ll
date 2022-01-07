; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_status_phase0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_status_phase0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32 }
%struct.ScsiReqBlk = type { i32, i8*, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@DBG_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"status_phase0: (0x%p) <%02i-%i>\0A\00", align 1
@TRM_S1040_SCSI_FIFO = common dso_local global i32 0, align 4
@SRB_COMPLETED = common dso_local global i32 0, align 4
@PH_BUS_FREE = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_CONTROL = common dso_local global i32 0, align 4
@DO_DATALATCH = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_COMMAND = common dso_local global i32 0, align 4
@SCMD_MSGACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*, i32*)* @status_phase0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @status_phase0(%struct.AdapterCtlBlk* %0, %struct.ScsiReqBlk* %1, i32* %2) #0 {
  %4 = alloca %struct.AdapterCtlBlk*, align 8
  %5 = alloca %struct.ScsiReqBlk*, align 8
  %6 = alloca i32*, align 8
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %4, align 8
  store %struct.ScsiReqBlk* %1, %struct.ScsiReqBlk** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @DBG_0, align 4
  %8 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %9 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %12 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %19 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @dprintkdbg(i32 %7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %10, i32 %17, i32 %25)
  %27 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %28 = load i32, i32* @TRM_S1040_SCSI_FIFO, align 4
  %29 = call i8* @DC395x_read8(%struct.AdapterCtlBlk* %27, i32 %28)
  %30 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %31 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %33 = load i32, i32* @TRM_S1040_SCSI_FIFO, align 4
  %34 = call i8* @DC395x_read8(%struct.AdapterCtlBlk* %32, i32 %33)
  %35 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %36 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @SRB_COMPLETED, align 4
  %38 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %39 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @PH_BUS_FREE, align 4
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %43 = load i32, i32* @TRM_S1040_SCSI_CONTROL, align 4
  %44 = load i32, i32* @DO_DATALATCH, align 4
  %45 = call i32 @DC395x_write16(%struct.AdapterCtlBlk* %42, i32 %43, i32 %44)
  %46 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %47 = load i32, i32* @TRM_S1040_SCSI_COMMAND, align 4
  %48 = load i32, i32* @SCMD_MSGACCEPT, align 4
  %49 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %46, i32 %47, i32 %48)
  ret void
}

declare dso_local i32 @dprintkdbg(i32, i8*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @DC395x_read8(%struct.AdapterCtlBlk*, i32) #1

declare dso_local i32 @DC395x_write16(%struct.AdapterCtlBlk*, i32, i32) #1

declare dso_local i32 @DC395x_write8(%struct.AdapterCtlBlk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
