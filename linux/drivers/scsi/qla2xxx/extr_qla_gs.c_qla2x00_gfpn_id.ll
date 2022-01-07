; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_gfpn_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_gfpn_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64, i32, i32, %struct.TYPE_18__*, %struct.TYPE_20__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.ct_sns_rsp }
%struct.ct_sns_rsp = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_20__ = type { i32* (%struct.TYPE_28__*, %struct.ct_arg*)* }
%struct.ct_arg = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64 }
%struct.ct_sns_req = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@GFPN_ID_REQ_SIZE = common dso_local global i32 0, align 4
@GFPN_ID_RSP_SIZE = common dso_local global i32 0, align 4
@NPH_SNS = common dso_local global i32 0, align 4
@GFPN_ID_CMD = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"GFPN_ID issue IOCB failed (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"GFPN_ID\00", align 1
@WWN_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_gfpn_id(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ct_sns_req*, align 8
  %11 = alloca %struct.ct_sns_rsp*, align 8
  %12 = alloca %struct.ct_arg, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  %13 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  store %struct.qla_hw_data* %16, %struct.qla_hw_data** %8, align 8
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %18 = call i32 @IS_IIDMA_CAPABLE(%struct.qla_hw_data* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %21, i32* %3, align 4
  br label %133

22:                                               ; preds = %2
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %24 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.ct_arg, %struct.ct_arg* %12, i32 0, i32 5
  store i32 %25, i32* %26, align 4
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %28 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.ct_arg, %struct.ct_arg* %12, i32 0, i32 4
  store i32 %29, i32* %30, align 4
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %32 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.ct_arg, %struct.ct_arg* %12, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @GFPN_ID_REQ_SIZE, align 4
  %36 = getelementptr inbounds %struct.ct_arg, %struct.ct_arg* %12, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @GFPN_ID_RSP_SIZE, align 4
  %38 = getelementptr inbounds %struct.ct_arg, %struct.ct_arg* %12, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @NPH_SNS, align 4
  %40 = getelementptr inbounds %struct.ct_arg, %struct.ct_arg* %12, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  store i64 0, i64* %7, align 8
  br label %41

41:                                               ; preds = %128, %22
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %44 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %131

47:                                               ; preds = %41
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 4
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i32* (%struct.TYPE_28__*, %struct.ct_arg*)*, i32* (%struct.TYPE_28__*, %struct.ct_arg*)** %51, align 8
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %54 = call i32* %52(%struct.TYPE_28__* %53, %struct.ct_arg* %12)
  store i32* %54, i32** %9, align 8
  %55 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %56 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %55, i32 0, i32 3
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  %58 = load i32, i32* @GFPN_ID_CMD, align 4
  %59 = load i32, i32* @GFPN_ID_RSP_SIZE, align 4
  %60 = call %struct.ct_sns_req* @qla2x00_prep_ct_req(%struct.TYPE_18__* %57, i32 %58, i32 %59)
  store %struct.ct_sns_req* %60, %struct.ct_sns_req** %10, align 8
  %61 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %62 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %61, i32 0, i32 3
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  store %struct.ct_sns_rsp* %65, %struct.ct_sns_rsp** %11, align 8
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @port_id_to_be_id(i64 %72)
  %74 = load %struct.ct_sns_req*, %struct.ct_sns_req** %10, align 8
  %75 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  store i32 %73, i32* %77, align 4
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %79 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %80 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %83 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @qla2x00_issue_iocb(%struct.TYPE_28__* %78, i32 %81, i32 %84, i32 4)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @QLA_SUCCESS, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %47
  %90 = load i32, i32* @ql_dbg_disc, align 4
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @ql_dbg(i32 %90, %struct.TYPE_28__* %91, i32 8227, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %131

94:                                               ; preds = %47
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %11, align 8
  %98 = call i32 @qla2x00_chk_ms_status(%struct.TYPE_28__* %95, i32* %96, %struct.ct_sns_rsp* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* @QLA_SUCCESS, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %102, i32* %6, align 4
  br label %131

103:                                              ; preds = %94
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %105 = load i64, i64* %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %11, align 8
  %110 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @WWN_SIZE, align 4
  %115 = call i32 @memcpy(i32 %108, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %103
  br label %117

117:                                              ; preds = %116
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %119 = load i64, i64* %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %131

127:                                              ; preds = %117
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %7, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %7, align 8
  br label %41

131:                                              ; preds = %126, %101, %89, %41
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %131, %20
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @IS_IIDMA_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local %struct.ct_sns_req* @qla2x00_prep_ct_req(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @port_id_to_be_id(i64) #1

declare dso_local i32 @qla2x00_issue_iocb(%struct.TYPE_28__*, i32, i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_28__*, i32, i8*, i32) #1

declare dso_local i32 @qla2x00_chk_ms_status(%struct.TYPE_28__*, i32*, %struct.ct_sns_rsp*, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
