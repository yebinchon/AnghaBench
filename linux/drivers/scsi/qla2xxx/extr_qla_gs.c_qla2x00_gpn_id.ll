; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_gpn_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_gpn_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64, i32, i32, %struct.TYPE_20__*, %struct.TYPE_22__*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.ct_sns_rsp }
%struct.ct_sns_rsp = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_22__ = type { i32* (%struct.TYPE_30__*, %struct.ct_arg*)* }
%struct.ct_arg = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64 }
%struct.ct_sns_req = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@GPN_ID_REQ_SIZE = common dso_local global i32 0, align 4
@GPN_ID_RSP_SIZE = common dso_local global i32 0, align 4
@NPH_SNS = common dso_local global i32 0, align 4
@GPN_ID_CMD = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"GPN_ID issue IOCB failed (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"GPN_ID\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@WWN_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_gpn_id(%struct.TYPE_30__* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ct_sns_req*, align 8
  %10 = alloca %struct.ct_sns_rsp*, align 8
  %11 = alloca %struct.qla_hw_data*, align 8
  %12 = alloca %struct.ct_arg, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %5, align 8
  %13 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %14, i32 0, i32 0
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  store %struct.qla_hw_data* %16, %struct.qla_hw_data** %11, align 8
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %18 = call i64 @IS_QLA2100(%struct.qla_hw_data* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %22 = call i64 @IS_QLA2200(%struct.qla_hw_data* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20, %2
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %26 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %27 = call i32 @qla2x00_sns_gpn_id(%struct.TYPE_30__* %25, %struct.TYPE_29__* %26)
  store i32 %27, i32* %3, align 4
  br label %139

28:                                               ; preds = %20
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %30 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.ct_arg, %struct.ct_arg* %12, i32 0, i32 5
  store i32 %31, i32* %32, align 4
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %34 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.ct_arg, %struct.ct_arg* %12, i32 0, i32 4
  store i32 %35, i32* %36, align 4
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %38 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.ct_arg, %struct.ct_arg* %12, i32 0, i32 3
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @GPN_ID_REQ_SIZE, align 4
  %42 = getelementptr inbounds %struct.ct_arg, %struct.ct_arg* %12, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @GPN_ID_RSP_SIZE, align 4
  %44 = getelementptr inbounds %struct.ct_arg, %struct.ct_arg* %12, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @NPH_SNS, align 4
  %46 = getelementptr inbounds %struct.ct_arg, %struct.ct_arg* %12, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  store i64 0, i64* %7, align 8
  br label %47

47:                                               ; preds = %134, %28
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %50 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %137

53:                                               ; preds = %47
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %55 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %54, i32 0, i32 4
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load i32* (%struct.TYPE_30__*, %struct.ct_arg*)*, i32* (%struct.TYPE_30__*, %struct.ct_arg*)** %57, align 8
  %59 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %60 = call i32* %58(%struct.TYPE_30__* %59, %struct.ct_arg* %12)
  store i32* %60, i32** %8, align 8
  %61 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %62 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %61, i32 0, i32 3
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %62, align 8
  %64 = load i32, i32* @GPN_ID_CMD, align 4
  %65 = load i32, i32* @GPN_ID_RSP_SIZE, align 4
  %66 = call %struct.ct_sns_req* @qla2x00_prep_ct_req(%struct.TYPE_20__* %63, i32 %64, i32 %65)
  store %struct.ct_sns_req* %66, %struct.ct_sns_req** %9, align 8
  %67 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %68 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %67, i32 0, i32 3
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  store %struct.ct_sns_rsp* %71, %struct.ct_sns_rsp** %10, align 8
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @port_id_to_be_id(i64 %78)
  %80 = load %struct.ct_sns_req*, %struct.ct_sns_req** %9, align 8
  %81 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 4
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %85 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %86 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %89 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @qla2x00_issue_iocb(%struct.TYPE_30__* %84, i32 %87, i32 %90, i32 4)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @QLA_SUCCESS, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %53
  %96 = load i32, i32* @ql_dbg_disc, align 4
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @ql_dbg(i32 %96, %struct.TYPE_30__* %97, i32 8278, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %137

100:                                              ; preds = %53
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %10, align 8
  %104 = call i32 @qla2x00_chk_ms_status(%struct.TYPE_30__* %101, i32* %102, %struct.ct_sns_rsp* %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i32, i32* @QLA_SUCCESS, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %108, i32* %6, align 4
  br label %137

109:                                              ; preds = %100
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %111 = load i64, i64* %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %10, align 8
  %116 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @WWN_SIZE, align 4
  %121 = call i32 @memcpy(i32 %114, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %109
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %125 = load i64, i64* %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %137

133:                                              ; preds = %123
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %7, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %7, align 8
  br label %47

137:                                              ; preds = %132, %107, %95, %47
  %138 = load i32, i32* %6, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %137, %24
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i64 @IS_QLA2100(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2200(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_sns_gpn_id(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local %struct.ct_sns_req* @qla2x00_prep_ct_req(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @port_id_to_be_id(i64) #1

declare dso_local i32 @qla2x00_issue_iocb(%struct.TYPE_30__*, i32, i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_30__*, i32, i8*, i32) #1

declare dso_local i32 @qla2x00_chk_ms_status(%struct.TYPE_30__*, i32*, %struct.ct_sns_rsp*, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
