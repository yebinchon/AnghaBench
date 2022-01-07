; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_async_adisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_async_adisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_19__, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i8*, i32 (%struct.TYPE_20__*)*, i32, i32, i32, i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@FCF_ASYNC_SENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SRB_ADISC_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"adisc\00", align 1
@qla2x00_async_iocb_timeout = common dso_local global i32 0, align 4
@qla2x00_async_adisc_sp_done = common dso_local global i32 0, align 4
@QLA_LOGIO_LOGIN_RETRIED = common dso_local global i32 0, align 4
@SRB_LOGIN_RETRIED = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Async-adisc - hdl=%x loopid=%x portid=%06x %8phC.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@FCF_ASYNC_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_async_adisc(%struct.scsi_qla_host* %0, %struct.TYPE_21__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.srb_iocb*, align 8
  %10 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %13 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17, %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %128

26:                                               ; preds = %17
  %27 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.TYPE_20__* @qla2x00_get_sp(%struct.scsi_qla_host* %32, %struct.TYPE_21__* %33, i32 %34)
  store %struct.TYPE_20__* %35, %struct.TYPE_20__** %8, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %37 = icmp ne %struct.TYPE_20__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %26
  br label %114

39:                                               ; preds = %26
  %40 = load i32, i32* @SRB_ADISC_CMD, align 4
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %44, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  store %struct.srb_iocb* %47, %struct.srb_iocb** %9, align 8
  %48 = load i32, i32* @qla2x00_async_iocb_timeout, align 4
  %49 = load %struct.srb_iocb*, %struct.srb_iocb** %9, align 8
  %50 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %62 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %63 = call i64 @qla2x00_get_async_timeout(%struct.scsi_qla_host* %62)
  %64 = add nsw i64 %63, 2
  %65 = call i32 @qla2x00_init_timer(%struct.TYPE_20__* %61, i64 %64)
  %66 = load i32, i32* @qla2x00_async_adisc_sp_done, align 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @QLA_LOGIO_LOGIN_RETRIED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %39
  %76 = load i32, i32* @SRB_LOGIN_RETRIED, align 4
  %77 = load %struct.srb_iocb*, %struct.srb_iocb** %9, align 8
  %78 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %76
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %75, %39
  %84 = load i32, i32* @ql_dbg_disc, align 4
  %85 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ql_dbg(i32 %84, %struct.scsi_qla_host* %85, i32 8303, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %91, i32 %95, i32 %98)
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %101 = call i32 @qla2x00_start_sp(%struct.TYPE_20__* %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @QLA_SUCCESS, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %83
  br label %108

106:                                              ; preds = %83
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %4, align 4
  br label %128

108:                                              ; preds = %105
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 1
  %111 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %110, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %113 = call i32 %111(%struct.TYPE_20__* %112)
  br label %114

114:                                              ; preds = %108, %38
  %115 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %116 = load i32, i32* @FCF_ASYNC_ACTIVE, align 4
  %117 = or i32 %115, %116
  %118 = xor i32 %117, -1
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, %118
  store i32 %122, i32* %120, align 4
  %123 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @qla2x00_post_async_adisc_work(%struct.scsi_qla_host* %123, %struct.TYPE_21__* %124, i32* %125)
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %114, %106, %24
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local %struct.TYPE_20__* @qla2x00_get_sp(%struct.scsi_qla_host*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @qla2x00_init_timer(%struct.TYPE_20__*, i64) #1

declare dso_local i64 @qla2x00_get_async_timeout(%struct.scsi_qla_host*) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @qla2x00_start_sp(%struct.TYPE_20__*) #1

declare dso_local i32 @qla2x00_post_async_adisc_work(%struct.scsi_qla_host*, %struct.TYPE_21__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
