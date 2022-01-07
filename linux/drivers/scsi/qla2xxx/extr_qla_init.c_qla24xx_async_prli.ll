; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla24xx_async_prli.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla24xx_async_prli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_20__ = type { i64, i32, i64, i32, %struct.TYPE_18__, i32, i32, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i8*, i32 (%struct.TYPE_19__*)*, i32, i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@DSC_LS_PLOGI_PEND = common dso_local global i64 0, align 8
@DSC_LS_PRLI_PEND = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@FCF_ASYNC_SENT = common dso_local global i32 0, align 4
@SRB_PRLI_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"prli\00", align 1
@qla2x00_async_iocb_timeout = common dso_local global i32 0, align 4
@qla2x00_async_prli_sp_done = common dso_local global i32 0, align 4
@SRB_LOGIN_NVME_PRLI = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Async-prli - %8phC hdl=%x, loopid=%x portid=%06x retries=%d %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"nvme\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"fc\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@FCF_LOGIN_NEEDED = common dso_local global i32 0, align 4
@RELOGIN_NEEDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_async_prli(%struct.scsi_qla_host* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.srb_iocb*, align 8
  %8 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %9 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %139

17:                                               ; preds = %2
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DSC_LS_PLOGI_PEND, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DSC_LS_PRLI_PEND, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %17
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %139

31:                                               ; preds = %23
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.TYPE_19__* @qla2x00_get_sp(%struct.scsi_qla_host* %32, %struct.TYPE_20__* %33, i32 %34)
  store %struct.TYPE_19__* %35, %struct.TYPE_19__** %6, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %37 = icmp ne %struct.TYPE_19__* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %139

40:                                               ; preds = %31
  %41 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 7
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @SRB_PRLI_CMD, align 4
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %52, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  store %struct.srb_iocb* %55, %struct.srb_iocb** %7, align 8
  %56 = load i32, i32* @qla2x00_async_iocb_timeout, align 4
  %57 = load %struct.srb_iocb*, %struct.srb_iocb** %7, align 8
  %58 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %60 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %61 = call i64 @qla2x00_get_async_timeout(%struct.scsi_qla_host* %60)
  %62 = add nsw i64 %61, 2
  %63 = call i32 @qla2x00_init_timer(%struct.TYPE_19__* %59, i64 %62)
  %64 = load i32, i32* @qla2x00_async_prli_sp_done, align 4
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.srb_iocb*, %struct.srb_iocb** %7, align 8
  %68 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 4
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %40
  %76 = load i32, i32* @SRB_LOGIN_NVME_PRLI, align 4
  %77 = load %struct.srb_iocb*, %struct.srb_iocb** %7, align 8
  %78 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %76
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %75, %40
  %84 = load i32, i32* @ql_dbg_disc, align 4
  %85 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %108 = call i32 @ql_dbg(i32 %84, %struct.scsi_qla_host* %85, i32 8475, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %91, i32 %94, i32 %98, i32 %101, i8* %107)
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %110 = call i32 @qla2x00_start_sp(%struct.TYPE_19__* %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @QLA_SUCCESS, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %83
  %115 = load i32, i32* @FCF_LOGIN_NEEDED, align 4
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load i32, i32* @RELOGIN_NEEDED, align 4
  %121 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %122 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %121, i32 0, i32 0
  %123 = call i32 @set_bit(i32 %120, i32* %122)
  br label %126

124:                                              ; preds = %83
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %3, align 4
  br label %139

126:                                              ; preds = %114
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  %129 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %128, align 8
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %131 = call i32 %129(%struct.TYPE_19__* %130)
  %132 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %126, %124, %38, %29, %15
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.TYPE_19__* @qla2x00_get_sp(%struct.scsi_qla_host*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @qla2x00_init_timer(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @qla2x00_get_async_timeout(%struct.scsi_qla_host*) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @qla2x00_start_sp(%struct.TYPE_19__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
