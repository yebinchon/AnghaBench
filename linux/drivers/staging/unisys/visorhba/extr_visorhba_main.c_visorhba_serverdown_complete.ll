; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_visorhba_serverdown_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_visorhba_serverdown_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visorhba_devdata = type { i32, i32, i32, i32, %struct.scsipending*, i32 }
%struct.scsipending = type { i32, %struct.uiscmdrsp* }
%struct.uiscmdrsp = type { i32, i32 (%struct.uiscmdrsp*)* }
%struct.scsi_cmnd = type { i32, i32 (%struct.uiscmdrsp*)* }

@MAX_PENDING_REQUESTS = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@TASK_MGMT_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.visorhba_devdata*)* @visorhba_serverdown_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @visorhba_serverdown_complete(%struct.visorhba_devdata* %0) #0 {
  %2 = alloca %struct.visorhba_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsipending*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.uiscmdrsp*, align 8
  %7 = alloca i64, align 8
  store %struct.visorhba_devdata* %0, %struct.visorhba_devdata** %2, align 8
  store %struct.scsipending* null, %struct.scsipending** %4, align 8
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %5, align 8
  %8 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %2, align 8
  %9 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @visor_thread_stop(i32 %10)
  %12 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %2, align 8
  %13 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %12, i32 0, i32 2
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %66, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @MAX_PENDING_REQUESTS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %69

20:                                               ; preds = %16
  %21 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %2, align 8
  %22 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %21, i32 0, i32 4
  %23 = load %struct.scsipending*, %struct.scsipending** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.scsipending, %struct.scsipending* %23, i64 %25
  store %struct.scsipending* %26, %struct.scsipending** %4, align 8
  %27 = load %struct.scsipending*, %struct.scsipending** %4, align 8
  %28 = getelementptr inbounds %struct.scsipending, %struct.scsipending* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %60 [
    i32 128, label %30
    i32 129, label %51
  ]

30:                                               ; preds = %20
  %31 = load %struct.scsipending*, %struct.scsipending** %4, align 8
  %32 = getelementptr inbounds %struct.scsipending, %struct.scsipending* %31, i32 0, i32 1
  %33 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %32, align 8
  %34 = bitcast %struct.uiscmdrsp* %33 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %34, %struct.scsi_cmnd** %5, align 8
  %35 = load i32, i32* @DID_RESET, align 4
  %36 = shl i32 %35, 16
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 1
  %41 = load i32 (%struct.uiscmdrsp*)*, i32 (%struct.uiscmdrsp*)** %40, align 8
  %42 = icmp ne i32 (%struct.uiscmdrsp*)* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %30
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %45 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %44, i32 0, i32 1
  %46 = load i32 (%struct.uiscmdrsp*)*, i32 (%struct.uiscmdrsp*)** %45, align 8
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %48 = bitcast %struct.scsi_cmnd* %47 to %struct.uiscmdrsp*
  %49 = call i32 %46(%struct.uiscmdrsp* %48)
  br label %50

50:                                               ; preds = %43, %30
  br label %61

51:                                               ; preds = %20
  %52 = load %struct.scsipending*, %struct.scsipending** %4, align 8
  %53 = getelementptr inbounds %struct.scsipending, %struct.scsipending* %52, i32 0, i32 1
  %54 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %53, align 8
  store %struct.uiscmdrsp* %54, %struct.uiscmdrsp** %6, align 8
  %55 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %2, align 8
  %56 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %55, i32 0, i32 3
  %57 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %6, align 8
  %58 = load i32, i32* @TASK_MGMT_FAILED, align 4
  %59 = call i32 @complete_taskmgmt_command(i32* %56, %struct.uiscmdrsp* %57, i32 %58)
  br label %61

60:                                               ; preds = %20
  br label %61

61:                                               ; preds = %60, %51, %50
  %62 = load %struct.scsipending*, %struct.scsipending** %4, align 8
  %63 = getelementptr inbounds %struct.scsipending, %struct.scsipending* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load %struct.scsipending*, %struct.scsipending** %4, align 8
  %65 = getelementptr inbounds %struct.scsipending, %struct.scsipending* %64, i32 0, i32 1
  store %struct.uiscmdrsp* null, %struct.uiscmdrsp** %65, align 8
  br label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %16

69:                                               ; preds = %16
  %70 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %2, align 8
  %71 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %70, i32 0, i32 2
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %2, align 8
  %75 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %2, align 8
  %77 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %76, i32 0, i32 1
  store i32 0, i32* %77, align 4
  ret void
}

declare dso_local i32 @visor_thread_stop(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @complete_taskmgmt_command(i32*, %struct.uiscmdrsp*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
