; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_async_adisc_sp_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_async_adisc_sp_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*)*, %struct.TYPE_11__*, i32, %struct.TYPE_8__, %struct.scsi_qla_host* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i32* }
%struct.scsi_qla_host = type { i32 }
%struct.event_arg = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32* }

@ql_dbg_disc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Async done-%s res %x %8phC\0A\00", align 1
@FCF_ASYNC_SENT = common dso_local global i32 0, align 4
@FCF_ASYNC_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32)* @qla2x00_async_adisc_sp_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_async_adisc_sp_done(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca %struct.event_arg, align 8
  %7 = alloca %struct.srb_iocb*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 4
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %9, align 8
  store %struct.scsi_qla_host* %10, %struct.scsi_qla_host** %5, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store %struct.srb_iocb* %13, %struct.srb_iocb** %7, align 8
  %14 = load i32, i32* @ql_dbg_disc, align 4
  %15 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ql_dbg(i32 %14, %struct.scsi_qla_host* %15, i32 8294, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %24)
  %26 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %27 = load i32, i32* @FCF_ASYNC_ACTIVE, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %29
  store i32 %35, i32* %33, align 4
  %36 = call i32 @memset(%struct.event_arg* %6, i32 0, i32 40)
  %37 = load i32, i32* %4, align 4
  %38 = getelementptr inbounds %struct.event_arg, %struct.event_arg* %6, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load %struct.srb_iocb*, %struct.srb_iocb** %7, align 8
  %40 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.event_arg, %struct.event_arg* %6, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.srb_iocb*, %struct.srb_iocb** %7, align 8
  %50 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.event_arg, %struct.event_arg* %6, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.srb_iocb*, %struct.srb_iocb** %7, align 8
  %60 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.event_arg, %struct.event_arg* %6, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %65, i32* %68, align 4
  %69 = load %struct.srb_iocb*, %struct.srb_iocb** %7, align 8
  %70 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.event_arg, %struct.event_arg* %6, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.event_arg, %struct.event_arg* %6, i32 0, i32 2
  store %struct.TYPE_11__* %81, %struct.TYPE_11__** %82, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %84 = getelementptr inbounds %struct.event_arg, %struct.event_arg* %6, i32 0, i32 1
  store %struct.TYPE_12__* %83, %struct.TYPE_12__** %84, align 8
  %85 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %86 = call i32 @qla24xx_handle_adisc_event(%struct.scsi_qla_host* %85, %struct.event_arg* %6)
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %88, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %91 = call i32 %89(%struct.TYPE_12__* %90)
  ret void
}

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.event_arg*, i32, i32) #1

declare dso_local i32 @qla24xx_handle_adisc_event(%struct.scsi_qla_host*, %struct.event_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
