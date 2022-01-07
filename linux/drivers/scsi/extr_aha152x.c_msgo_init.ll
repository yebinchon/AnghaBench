; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_msgo_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_msgo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.Scsi_Host = type { i32 }

@MSGOLEN = common dso_local global i64 0, align 8
@CURRENT_SC = common dso_local global %struct.TYPE_7__* null, align 8
@syncneg = common dso_local global i32 0, align 4
@SYNCNEG = common dso_local global i32 0, align 4
@SYNCRATE = common dso_local global i64 0, align 8
@RECONNECT = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unexpected MESSAGE OUT phase; rejecting\0A\00", align 1
@MESSAGE_REJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @msgo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msgo_init(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %3 = load i64, i64* @MSGOLEN, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %35

5:                                                ; preds = %1
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CURRENT_SC, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @syncneg, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %5
  %14 = load i32, i32* @SYNCNEG, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load i64, i64* @SYNCRATE, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, i32* @RECONNECT, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CURRENT_SC, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @IDENTIFY(i32 %20, i32 %25)
  %27 = call i32 @ADDMSGO(i32 %26)
  br label %34

28:                                               ; preds = %16, %13, %5
  %29 = load i32, i32* @KERN_INFO, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CURRENT_SC, align 8
  %31 = call i32 @scmd_printk(i32 %29, %struct.TYPE_7__* %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @MESSAGE_REJECT, align 4
  %33 = call i32 @ADDMSGO(i32 %32)
  br label %34

34:                                               ; preds = %28, %19
  br label %35

35:                                               ; preds = %34, %1
  ret void
}

declare dso_local i32 @ADDMSGO(i32) #1

declare dso_local i32 @IDENTIFY(i32, i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
