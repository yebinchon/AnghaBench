; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_msgin_reject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_msgin_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32 }
%struct.ScsiReqBlk = type { i32, %struct.TYPE_2__*, i32*, i32, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@MESSAGE_REJECT = common dso_local global i32 0, align 4
@DC395x_ENABLE_MSGOUT = common dso_local global i32 0, align 4
@SRB_MSGIN = common dso_local global i32 0, align 4
@SRB_MSGOUT = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"msgin_reject: 0x%02x <%02i-%i>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*)* @msgin_reject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msgin_reject(%struct.AdapterCtlBlk* %0, %struct.ScsiReqBlk* %1) #0 {
  %3 = alloca %struct.AdapterCtlBlk*, align 8
  %4 = alloca %struct.ScsiReqBlk*, align 8
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %3, align 8
  store %struct.ScsiReqBlk* %1, %struct.ScsiReqBlk** %4, align 8
  %5 = load i32, i32* @MESSAGE_REJECT, align 4
  %6 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %7 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %6, i32 0, i32 4
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  store i32 %5, i32* %9, align 4
  %10 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %11 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load i32, i32* @DC395x_ENABLE_MSGOUT, align 4
  %13 = load i32, i32* @SRB_MSGIN, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %16 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load i32, i32* @SRB_MSGOUT, align 4
  %20 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %21 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load i32, i32* @KERN_INFO, align 4
  %25 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %26 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %31 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %36 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dprintkl(i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %34, i32 %39)
  ret void
}

declare dso_local i32 @dprintkl(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
