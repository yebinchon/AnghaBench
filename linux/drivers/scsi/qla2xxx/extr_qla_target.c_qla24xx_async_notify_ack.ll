; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qla24xx_async_notify_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qla24xx_async_notify_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.imm_ntfy_from_isp = type { i32 }
%struct.TYPE_17__ = type { i32, i8*, i32 (%struct.TYPE_17__*)*, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.imm_ntfy_from_isp* }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@FCF_ASYNC_SENT = common dso_local global i32 0, align 4
@DSC_LS_PLOGI_PEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"PLOGI\00", align 1
@DSC_LS_PRLI_PEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"PRLI\00", align 1
@DSC_LS_LOGO_PEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"LOGO\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"nack\00", align 1
@qla2x00_async_iocb_timeout = common dso_local global i32 0, align 4
@qla2x00_async_nack_sp_done = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Async-%s %8phC hndl %x %s\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_async_notify_ack(i32* %0, %struct.TYPE_18__* %1, %struct.imm_ntfy_from_isp* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.imm_ntfy_from_isp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store %struct.imm_ntfy_from_isp* %2, %struct.imm_ntfy_from_isp** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %13, i32* %10, align 4
  store i8* null, i8** %12, align 8
  %14 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %9, align 4
  switch i32 %19, label %34 [
    i32 129, label %20
    i32 128, label %24
    i32 130, label %30
  ]

20:                                               ; preds = %4
  %21 = load i32, i32* @DSC_LS_PLOGI_PEND, align 4
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %34

24:                                               ; preds = %4
  %25 = load i32, i32* @DSC_LS_PRLI_PEND, align 4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 3
  store i32 0, i32* %29, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %34

30:                                               ; preds = %4
  %31 = load i32, i32* @DSC_LS_LOGO_PEND, align 4
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %34

34:                                               ; preds = %4, %30, %24, %20
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %37 = load i32, i32* @GFP_ATOMIC, align 4
  %38 = call %struct.TYPE_17__* @qla2x00_get_sp(i32* %35, %struct.TYPE_18__* %36, i32 %37)
  store %struct.TYPE_17__* %38, %struct.TYPE_17__** %11, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %40 = icmp ne %struct.TYPE_17__* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %95

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %47, align 8
  %48 = load i32, i32* @qla2x00_async_iocb_timeout, align 4
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i64 @qla2x00_get_async_timeout(i32* %54)
  %56 = add nsw i64 %55, 2
  %57 = call i32 @qla2x00_init_timer(%struct.TYPE_17__* %53, i64 %56)
  %58 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %8, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  store %struct.imm_ntfy_from_isp* %58, %struct.imm_ntfy_from_isp** %64, align 8
  %65 = load i32, i32* @qla2x00_async_nack_sp_done, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @ql_dbg_disc, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = call i32 @ql_dbg(i32 %68, i32* %69, i32 8436, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %72, i32 %75, i32 %78, i8* %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %82 = call i32 @qla2x00_start_sp(%struct.TYPE_17__* %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @QLA_SUCCESS, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %42
  br label %89

87:                                               ; preds = %42
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %5, align 4
  br label %103

89:                                               ; preds = %86
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 2
  %92 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %91, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %94 = call i32 %92(%struct.TYPE_17__* %93)
  br label %95

95:                                               ; preds = %89, %41
  %96 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %95, %87
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local %struct.TYPE_17__* @qla2x00_get_sp(i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @qla2x00_init_timer(%struct.TYPE_17__*, i64) #1

declare dso_local i64 @qla2x00_get_async_timeout(i32*) #1

declare dso_local i32 @ql_dbg(i32, i32*, i32, i8*, i8*, i32, i32, i8*) #1

declare dso_local i32 @qla2x00_start_sp(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
