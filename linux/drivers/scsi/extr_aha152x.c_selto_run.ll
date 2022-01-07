; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_selto_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_selto_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.Scsi_Host = type { i32 }

@SCSISEQ = common dso_local global i32 0, align 4
@SSTAT1 = common dso_local global i32 0, align 4
@CLRSELTIMO = common dso_local global i32 0, align 4
@CURRENT_SC = common dso_local global %struct.TYPE_4__* null, align 8
@selecting = common dso_local global i32 0, align 4
@aborted = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@SSTAT0 = common dso_local global i32 0, align 4
@SELINGO = common dso_local global i32 0, align 4
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @selto_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selto_run(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %3 = load i32, i32* @SCSISEQ, align 4
  %4 = call i32 @SETPORT(i32 %3, i32 0)
  %5 = load i32, i32* @SSTAT1, align 4
  %6 = load i32, i32* @CLRSELTIMO, align 4
  %7 = call i32 @SETPORT(i32 %5, i32 %6)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CURRENT_SC, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %47

11:                                               ; preds = %1
  %12 = load i32, i32* @selecting, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CURRENT_SC, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %13
  store i32 %18, i32* %16, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CURRENT_SC, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @aborted, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %11
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %28 = load i32, i32* @DID_ABORT, align 4
  %29 = shl i32 %28, 16
  %30 = call i32 @done(%struct.Scsi_Host* %27, i32 %29)
  br label %47

31:                                               ; preds = %11
  %32 = load i32, i32* @SSTAT0, align 4
  %33 = load i32, i32* @SELINGO, align 4
  %34 = call i64 @TESTLO(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %38 = load i32, i32* @DID_BUS_BUSY, align 4
  %39 = shl i32 %38, 16
  %40 = call i32 @done(%struct.Scsi_Host* %37, i32 %39)
  br label %46

41:                                               ; preds = %31
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %43 = load i32, i32* @DID_NO_CONNECT, align 4
  %44 = shl i32 %43, 16
  %45 = call i32 @done(%struct.Scsi_Host* %42, i32 %44)
  br label %46

46:                                               ; preds = %41, %36
  br label %47

47:                                               ; preds = %10, %46, %26
  ret void
}

declare dso_local i32 @SETPORT(i32, i32) #1

declare dso_local i32 @done(%struct.Scsi_Host*, i32) #1

declare dso_local i64 @TESTLO(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
