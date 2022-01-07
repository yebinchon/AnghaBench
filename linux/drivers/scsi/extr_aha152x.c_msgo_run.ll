; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_msgo_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_msgo_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.Scsi_Host = type { i32 }

@MSGO_I = common dso_local global i32 0, align 4
@MSGOLEN = common dso_local global i32 0, align 4
@SSTAT0 = common dso_local global i32 0, align 4
@SPIORDY = common dso_local global i32 0, align 4
@SSTAT1 = common dso_local global i32 0, align 4
@CLRATNO = common dso_local global i32 0, align 4
@IDENTIFY_BASE = common dso_local global i32 0, align 4
@identified = common dso_local global i32 0, align 4
@CURRENT_SC = common dso_local global %struct.TYPE_4__* null, align 8
@ABORT = common dso_local global i32 0, align 4
@aborted = common dso_local global i32 0, align 4
@BUS_DEVICE_RESET = common dso_local global i32 0, align 4
@resetted = common dso_local global i32 0, align 4
@SCSIDAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @msgo_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msgo_run(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  br label %3

3:                                                ; preds = %59, %1
  %4 = load i32, i32* @MSGO_I, align 4
  %5 = load i32, i32* @MSGOLEN, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %65

7:                                                ; preds = %3
  %8 = load i32, i32* @SSTAT0, align 4
  %9 = load i32, i32* @SPIORDY, align 4
  %10 = call i64 @TESTLO(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %65

13:                                               ; preds = %7
  %14 = load i32, i32* @MSGO_I, align 4
  %15 = load i32, i32* @MSGOLEN, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* @SSTAT1, align 4
  %20 = load i32, i32* @CLRATNO, align 4
  %21 = call i32 @SETPORT(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %13
  %23 = load i32, i32* @MSGO_I, align 4
  %24 = call i32 @MSGO(i32 %23)
  %25 = load i32, i32* @IDENTIFY_BASE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load i32, i32* @identified, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CURRENT_SC, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %29
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %28, %22
  %36 = load i32, i32* @MSGO_I, align 4
  %37 = call i32 @MSGO(i32 %36)
  %38 = load i32, i32* @ABORT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32, i32* @aborted, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CURRENT_SC, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %40, %35
  %48 = load i32, i32* @MSGO_I, align 4
  %49 = call i32 @MSGO(i32 %48)
  %50 = load i32, i32* @BUS_DEVICE_RESET, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i32, i32* @resetted, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CURRENT_SC, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %47
  %60 = load i32, i32* @SCSIDAT, align 4
  %61 = load i32, i32* @MSGO_I, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @MSGO_I, align 4
  %63 = call i32 @MSGO(i32 %61)
  %64 = call i32 @SETPORT(i32 %60, i32 %63)
  br label %3

65:                                               ; preds = %12, %3
  ret void
}

declare dso_local i64 @TESTLO(i32, i32) #1

declare dso_local i32 @SETPORT(i32, i32) #1

declare dso_local i32 @MSGO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
