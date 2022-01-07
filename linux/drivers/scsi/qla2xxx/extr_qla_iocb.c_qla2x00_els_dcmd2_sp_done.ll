; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_els_dcmd2_sp_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_els_dcmd2_sp_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 (%struct.TYPE_17__*)*, %struct.TYPE_13__, i32, i32, %struct.scsi_qla_host*, %struct.TYPE_18__* }
%struct.TYPE_13__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.scsi_qla_host = type { i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.event_arg = type { %struct.TYPE_17__*, i32*, %struct.TYPE_18__* }
%struct.qla_work_evt = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_17__* }

@ql_dbg_disc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s ELS done rc %d hdl=%x, portid=%06x %8phC\0A\00", align 1
@FCF_ASYNC_SENT = common dso_local global i32 0, align 4
@FCF_ASYNC_ACTIVE = common dso_local global i32 0, align 4
@SRB_WAKEUP_ON_COMP = common dso_local global i32 0, align 4
@RELOGIN_NEEDED = common dso_local global i32 0, align 4
@MBS_COMMAND_COMPLETE = common dso_local global i32 0, align 4
@QLA_EVT_UNMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32)* @qla2x00_els_dcmd2_sp_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_els_dcmd2_sp_done(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.srb_iocb*, align 8
  %7 = alloca %struct.scsi_qla_host*, align 8
  %8 = alloca %struct.event_arg, align 8
  %9 = alloca %struct.qla_work_evt*, align 8
  %10 = alloca %struct.srb_iocb*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 6
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %5, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  store %struct.srb_iocb* %16, %struct.srb_iocb** %6, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 5
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %18, align 8
  store %struct.scsi_qla_host* %19, %struct.scsi_qla_host** %7, align 8
  %20 = load i32, i32* @ql_dbg_disc, align 4
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ql_dbg(i32 %20, %struct.scsi_qla_host* %21, i32 12402, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %28, i32 %32, i32 %35)
  %37 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %38 = load i32, i32* @FCF_ASYNC_ACTIVE, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %47, i32 0, i32 1
  %49 = call i32 @del_timer(i32* %48)
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SRB_WAKEUP_ON_COMP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %2
  %57 = load %struct.srb_iocb*, %struct.srb_iocb** %6, align 8
  %58 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = call i32 @complete(i32* %60)
  br label %111

62:                                               ; preds = %2
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* @RELOGIN_NEEDED, align 4
  %67 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %68 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %67, i32 0, i32 0
  %69 = call i32 @set_bit(i32 %66, i32* %68)
  br label %82

70:                                               ; preds = %62
  %71 = call i32 @memset(%struct.event_arg* %8, i32 0, i32 24)
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %73 = getelementptr inbounds %struct.event_arg, %struct.event_arg* %8, i32 0, i32 2
  store %struct.TYPE_18__* %72, %struct.TYPE_18__** %73, align 8
  %74 = load i32, i32* @MBS_COMMAND_COMPLETE, align 4
  %75 = getelementptr inbounds %struct.event_arg, %struct.event_arg* %8, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %74, i32* %77, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %79 = getelementptr inbounds %struct.event_arg, %struct.event_arg* %8, i32 0, i32 0
  store %struct.TYPE_17__* %78, %struct.TYPE_17__** %79, align 8
  %80 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %81 = call i32 @qla24xx_handle_plogi_done_event(%struct.scsi_qla_host* %80, %struct.event_arg* %8)
  br label %82

82:                                               ; preds = %70, %65
  %83 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %84 = load i32, i32* @QLA_EVT_UNMAP, align 4
  %85 = call %struct.qla_work_evt* @qla2x00_alloc_work(%struct.scsi_qla_host* %83, i32 %84)
  store %struct.qla_work_evt* %85, %struct.qla_work_evt** %9, align 8
  %86 = load %struct.qla_work_evt*, %struct.qla_work_evt** %9, align 8
  %87 = icmp ne %struct.qla_work_evt* %86, null
  br i1 %87, label %102, label %88

88:                                               ; preds = %82
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  store %struct.srb_iocb* %91, %struct.srb_iocb** %10, align 8
  %92 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %93 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %94 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = call i32 @qla2x00_els_dcmd2_free(%struct.scsi_qla_host* %92, %struct.TYPE_11__* %95)
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %98, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %101 = call i32 %99(%struct.TYPE_17__* %100)
  br label %111

102:                                              ; preds = %82
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %104 = load %struct.qla_work_evt*, %struct.qla_work_evt** %9, align 8
  %105 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  store %struct.TYPE_17__* %103, %struct.TYPE_17__** %107, align 8
  %108 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %109 = load %struct.qla_work_evt*, %struct.qla_work_evt** %9, align 8
  %110 = call i32 @qla2x00_post_work(%struct.scsi_qla_host* %108, %struct.qla_work_evt* %109)
  br label %111

111:                                              ; preds = %88, %102, %56
  ret void
}

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @memset(%struct.event_arg*, i32, i32) #1

declare dso_local i32 @qla24xx_handle_plogi_done_event(%struct.scsi_qla_host*, %struct.event_arg*) #1

declare dso_local %struct.qla_work_evt* @qla2x00_alloc_work(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @qla2x00_els_dcmd2_free(%struct.scsi_qla_host*, %struct.TYPE_11__*) #1

declare dso_local i32 @qla2x00_post_work(%struct.scsi_qla_host*, %struct.qla_work_evt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
