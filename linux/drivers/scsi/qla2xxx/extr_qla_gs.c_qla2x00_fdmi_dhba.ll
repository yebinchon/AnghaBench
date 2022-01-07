; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_fdmi_dhba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_fdmi_dhba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, %struct.TYPE_17__*, %struct.TYPE_12__* }
%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.ct_sns_rsp }
%struct.ct_sns_rsp = type { i32 }
%struct.TYPE_12__ = type { i32* (%struct.TYPE_16__*, i32, i32)* }
%struct.ct_sns_req = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@DHBA_REQ_SIZE = common dso_local global i32 0, align 4
@DHBA_RSP_SIZE = common dso_local global i32 0, align 4
@DHBA_CMD = common dso_local global i32 0, align 4
@WWN_SIZE = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"DHBA portname = %8phN.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"DHBA issue IOCB failed (%d).\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DHBA\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"DHBA exiting normally.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @qla2x00_fdmi_dhba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_fdmi_dhba(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ct_sns_req*, align 8
  %7 = alloca %struct.ct_sns_rsp*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  store %struct.qla_hw_data* %10, %struct.qla_hw_data** %4, align 8
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %12 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %11, i32 0, i32 3
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32* (%struct.TYPE_16__*, i32, i32)*, i32* (%struct.TYPE_16__*, i32, i32)** %14, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %17 = load i32, i32* @DHBA_REQ_SIZE, align 4
  %18 = load i32, i32* @DHBA_RSP_SIZE, align 4
  %19 = call i32* %15(%struct.TYPE_16__* %16, i32 %17, i32 %18)
  store i32* %19, i32** %5, align 8
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %21 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %20, i32 0, i32 2
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %23 = load i32, i32* @DHBA_CMD, align 4
  %24 = load i32, i32* @DHBA_RSP_SIZE, align 4
  %25 = call %struct.ct_sns_req* @qla2x00_prep_ct_fdmi_req(%struct.TYPE_17__* %22, i32 %23, i32 %24)
  store %struct.ct_sns_req* %25, %struct.ct_sns_req** %6, align 8
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %27 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %26, i32 0, i32 2
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  store %struct.ct_sns_rsp* %30, %struct.ct_sns_rsp** %7, align 8
  %31 = load %struct.ct_sns_req*, %struct.ct_sns_req** %6, align 8
  %32 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @WWN_SIZE, align 4
  %40 = call i32 @memcpy(i32 %35, i32 %38, i32 %39)
  %41 = load i32, i32* @ql_dbg_disc, align 4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %43 = load %struct.ct_sns_req*, %struct.ct_sns_req** %6, align 8
  %44 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, %struct.TYPE_16__*, i32, i8*, ...) @ql_dbg(i32 %41, %struct.TYPE_16__* %42, i32 8246, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %50 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %51 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %54 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @qla2x00_issue_iocb(%struct.TYPE_16__* %49, i32 %52, i32 %55, i32 4)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @QLA_SUCCESS, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %1
  %61 = load i32, i32* @ql_dbg_disc, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 (i32, %struct.TYPE_16__*, i32, i8*, ...) @ql_dbg(i32 %61, %struct.TYPE_16__* %62, i32 8247, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %79

65:                                               ; preds = %1
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %7, align 8
  %69 = call i32 @qla2x00_chk_ms_status(%struct.TYPE_16__* %66, i32* %67, %struct.ct_sns_rsp* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @QLA_SUCCESS, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %73, i32* %3, align 4
  br label %78

74:                                               ; preds = %65
  %75 = load i32, i32* @ql_dbg_disc, align 4
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %77 = call i32 (i32, %struct.TYPE_16__*, i32, i8*, ...) @ql_dbg(i32 %75, %struct.TYPE_16__* %76, i32 8248, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %74, %72
  br label %79

79:                                               ; preds = %78, %60
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.ct_sns_req* @qla2x00_prep_ct_fdmi_req(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_16__*, i32, i8*, ...) #1

declare dso_local i32 @qla2x00_issue_iocb(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @qla2x00_chk_ms_status(%struct.TYPE_16__*, i32*, %struct.ct_sns_rsp*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
