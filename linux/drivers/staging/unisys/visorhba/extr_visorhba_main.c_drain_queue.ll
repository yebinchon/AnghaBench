; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_drain_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_drain_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uiscmdrsp = type { i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.visorhba_devdata = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.scsi_cmnd = type { i32 }

@IOCHAN_FROM_IOPART = common dso_local global i32 0, align 4
@CMD_SCSI_TYPE = common dso_local global i64 0, align 8
@CMD_SCSITASKMGMT_TYPE = common dso_local global i64 0, align 8
@CMD_NOTIFYGUEST_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"ignoring unsupported NOTIFYGUEST\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uiscmdrsp*, %struct.visorhba_devdata*)* @drain_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drain_queue(%struct.uiscmdrsp* %0, %struct.visorhba_devdata* %1) #0 {
  %3 = alloca %struct.uiscmdrsp*, align 8
  %4 = alloca %struct.visorhba_devdata*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  store %struct.uiscmdrsp* %0, %struct.uiscmdrsp** %3, align 8
  store %struct.visorhba_devdata* %1, %struct.visorhba_devdata** %4, align 8
  br label %6

6:                                                ; preds = %2, %75
  %7 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %4, align 8
  %8 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IOCHAN_FROM_IOPART, align 4
  %13 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %14 = call i64 @visorchannel_signalremove(i32 %11, i32 %12, %struct.uiscmdrsp* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  br label %76

17:                                               ; preds = %6
  %18 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %19 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CMD_SCSI_TYPE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %4, align 8
  %25 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %26 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.scsi_cmnd* @del_scsipending_ent(%struct.visorhba_devdata* %24, i32 %28)
  store %struct.scsi_cmnd* %29, %struct.scsi_cmnd** %5, align 8
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %31 = icmp ne %struct.scsi_cmnd* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %76

33:                                               ; preds = %23
  %34 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %36 = call i32 @complete_scsi_command(%struct.uiscmdrsp* %34, %struct.scsi_cmnd* %35)
  br label %75

37:                                               ; preds = %17
  %38 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %39 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CMD_SCSITASKMGMT_TYPE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %37
  %44 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %4, align 8
  %45 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %46 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.scsi_cmnd* @del_scsipending_ent(%struct.visorhba_devdata* %44, i32 %48)
  %50 = icmp ne %struct.scsi_cmnd* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  br label %76

52:                                               ; preds = %43
  %53 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %4, align 8
  %54 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %53, i32 0, i32 1
  %55 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %56 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %57 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @complete_taskmgmt_command(i32* %54, %struct.uiscmdrsp* %55, i32 %59)
  br label %74

61:                                               ; preds = %37
  %62 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %63 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CMD_NOTIFYGUEST_TYPE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %4, align 8
  %69 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = call i32 @dev_err_once(i32* %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %67, %61
  br label %74

74:                                               ; preds = %73, %52
  br label %75

75:                                               ; preds = %74, %33
  br label %6

76:                                               ; preds = %51, %32, %16
  ret void
}

declare dso_local i64 @visorchannel_signalremove(i32, i32, %struct.uiscmdrsp*) #1

declare dso_local %struct.scsi_cmnd* @del_scsipending_ent(%struct.visorhba_devdata*, i32) #1

declare dso_local i32 @complete_scsi_command(%struct.uiscmdrsp*, %struct.scsi_cmnd*) #1

declare dso_local i32 @complete_taskmgmt_command(i32*, %struct.uiscmdrsp*, i32) #1

declare dso_local i32 @dev_err_once(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
