; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_data_in_phase1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_data_in_phase1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32 }
%struct.ScsiReqBlk = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@DBG_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"data_in_phase1: (0x%p) <%02i-%i>\0A\00", align 1
@XFERDATAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*, i32*)* @data_in_phase1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @data_in_phase1(%struct.AdapterCtlBlk* %0, %struct.ScsiReqBlk* %1, i32* %2) #0 {
  %4 = alloca %struct.AdapterCtlBlk*, align 8
  %5 = alloca %struct.ScsiReqBlk*, align 8
  %6 = alloca i32*, align 8
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %4, align 8
  store %struct.ScsiReqBlk* %1, %struct.ScsiReqBlk** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @DBG_0, align 4
  %8 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %9 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %12 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %19 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @dprintkdbg(i32 %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %10, i32 %17, i32 %25)
  %27 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %28 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %29 = load i32, i32* @XFERDATAIN, align 4
  %30 = call i32 @data_io_transfer(%struct.AdapterCtlBlk* %27, %struct.ScsiReqBlk* %28, i32 %29)
  ret void
}

declare dso_local i32 @dprintkdbg(i32, i8*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @data_io_transfer(%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
