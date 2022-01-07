; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_async_prlo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_async_prlo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i8*, i32 (%struct.TYPE_15__*)*, i32, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { i32 }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SRB_PRLO_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"prlo\00", align 1
@qla2x00_async_iocb_timeout = common dso_local global i32 0, align 4
@qla2x00_async_prlo_sp_done = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Async-prlo - hdl=%x loop-id=%x portid=%02x%02x%02x.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@FCF_ASYNC_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_async_prlo(%struct.scsi_qla_host* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.srb_iocb*, align 8
  %8 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %9 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.TYPE_15__* @qla2x00_get_sp(%struct.scsi_qla_host* %10, %struct.TYPE_16__* %11, i32 %12)
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %6, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = icmp ne %struct.TYPE_15__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %75

17:                                               ; preds = %2
  %18 = load i32, i32* @SRB_PRLO_CMD, align 4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  store %struct.srb_iocb* %25, %struct.srb_iocb** %7, align 8
  %26 = load i32, i32* @qla2x00_async_iocb_timeout, align 4
  %27 = load %struct.srb_iocb*, %struct.srb_iocb** %7, align 8
  %28 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %30 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %31 = call i64 @qla2x00_get_async_timeout(%struct.scsi_qla_host* %30)
  %32 = add nsw i64 %31, 2
  %33 = call i32 @qla2x00_init_timer(%struct.TYPE_15__* %29, i64 %32)
  %34 = load i32, i32* @qla2x00_async_prlo_sp_done, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @ql_dbg_disc, align 4
  %38 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ql_dbg(i32 %37, %struct.scsi_qla_host* %38, i32 8304, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44, i32 %49, i32 %54, i32 %59)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %62 = call i32 @qla2x00_start_sp(%struct.TYPE_15__* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @QLA_SUCCESS, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %17
  br label %69

67:                                               ; preds = %17
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %83

69:                                               ; preds = %66
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %71, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %74 = call i32 %72(%struct.TYPE_15__* %73)
  br label %75

75:                                               ; preds = %69, %16
  %76 = load i32, i32* @FCF_ASYNC_ACTIVE, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %75, %67
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_15__* @qla2x00_get_sp(%struct.scsi_qla_host*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @qla2x00_init_timer(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @qla2x00_get_async_timeout(%struct.scsi_qla_host*) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @qla2x00_start_sp(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
