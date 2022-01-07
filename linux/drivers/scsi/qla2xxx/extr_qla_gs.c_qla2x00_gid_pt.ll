; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_gid_pt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_gid_pt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64, i32, i32, %struct.TYPE_21__*, %struct.TYPE_22__*, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.ct_sns_rsp }
%struct.ct_sns_rsp = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.ct_sns_gid_pt_data* }
%struct.ct_sns_gid_pt_data = type { i32, i32 }
%struct.TYPE_22__ = type { i32* (%struct.TYPE_31__*, %struct.ct_arg*)* }
%struct.ct_arg = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_23__, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }
%struct.ct_sns_req = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }

@GID_PT_REQ_SIZE = common dso_local global i32 0, align 4
@NPH_SNS = common dso_local global i32 0, align 4
@GID_PT_CMD = common dso_local global i32 0, align 4
@NS_NX_PORT_TYPE = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"GID_PT issue IOCB failed (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"GID_PT\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@WWN_SIZE = common dso_local global i32 0, align 4
@PORT_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@BIT_7 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_gid_pt(%struct.TYPE_31__* %0, %struct.TYPE_30__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ct_sns_req*, align 8
  %10 = alloca %struct.ct_sns_rsp*, align 8
  %11 = alloca %struct.ct_sns_gid_pt_data*, align 8
  %12 = alloca %struct.qla_hw_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ct_arg, align 8
  %15 = alloca %struct.TYPE_23__, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %5, align 8
  %16 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 0
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  store %struct.qla_hw_data* %18, %struct.qla_hw_data** %12, align 8
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %20 = call i64 @IS_QLA2100(%struct.qla_hw_data* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %24 = call i64 @IS_QLA2200(%struct.qla_hw_data* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22, %2
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %29 = call i32 @qla2x00_sns_gid_pt(%struct.TYPE_31__* %27, %struct.TYPE_30__* %28)
  store i32 %29, i32* %3, align 4
  br label %170

30:                                               ; preds = %22
  store %struct.ct_sns_gid_pt_data* null, %struct.ct_sns_gid_pt_data** %11, align 8
  %31 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %32 = call i64 @qla2x00_gid_pt_rsp_size(%struct.TYPE_31__* %31)
  store i64 %32, i64* %13, align 8
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %34 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.ct_arg, %struct.ct_arg* %14, i32 0, i32 5
  store i32 %35, i32* %36, align 8
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %38 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.ct_arg, %struct.ct_arg* %14, i32 0, i32 4
  store i32 %39, i32* %40, align 4
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %42 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.ct_arg, %struct.ct_arg* %14, i32 0, i32 3
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* @GID_PT_REQ_SIZE, align 4
  %46 = getelementptr inbounds %struct.ct_arg, %struct.ct_arg* %14, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load i64, i64* %13, align 8
  %48 = getelementptr inbounds %struct.ct_arg, %struct.ct_arg* %14, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  %49 = load i32, i32* @NPH_SNS, align 4
  %50 = getelementptr inbounds %struct.ct_arg, %struct.ct_arg* %14, i32 0, i32 1
  store i32 %49, i32* %50, align 8
  %51 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %52 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %51, i32 0, i32 4
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  %55 = load i32* (%struct.TYPE_31__*, %struct.ct_arg*)*, i32* (%struct.TYPE_31__*, %struct.ct_arg*)** %54, align 8
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %57 = call i32* %55(%struct.TYPE_31__* %56, %struct.ct_arg* %14)
  store i32* %57, i32** %8, align 8
  %58 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %59 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %58, i32 0, i32 3
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %59, align 8
  %61 = load i32, i32* @GID_PT_CMD, align 4
  %62 = load i64, i64* %13, align 8
  %63 = call %struct.ct_sns_req* @qla2x00_prep_ct_req(%struct.TYPE_21__* %60, i32 %61, i64 %62)
  store %struct.ct_sns_req* %63, %struct.ct_sns_req** %9, align 8
  %64 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %65 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %64, i32 0, i32 3
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  store %struct.ct_sns_rsp* %68, %struct.ct_sns_rsp** %10, align 8
  %69 = load i32, i32* @NS_NX_PORT_TYPE, align 4
  %70 = load %struct.ct_sns_req*, %struct.ct_sns_req** %9, align 8
  %71 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  %74 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %75 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %76 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %79 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @qla2x00_issue_iocb(%struct.TYPE_31__* %74, i32 %77, i32 %80, i32 4)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @QLA_SUCCESS, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %30
  %86 = load i32, i32* @ql_dbg_disc, align 4
  %87 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @ql_dbg(i32 %86, %struct.TYPE_31__* %87, i32 8277, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %168

90:                                               ; preds = %30
  %91 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %10, align 8
  %94 = call i32 @qla2x00_chk_ms_status(%struct.TYPE_31__* %91, i32* %92, %struct.ct_sns_rsp* %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* @QLA_SUCCESS, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %98, i32* %6, align 4
  br label %167

99:                                               ; preds = %90
  store i64 0, i64* %7, align 8
  br label %100

100:                                              ; preds = %155, %99
  %101 = load i64, i64* %7, align 8
  %102 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %103 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ult i64 %101, %104
  br i1 %105, label %106, label %158

106:                                              ; preds = %100
  %107 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %10, align 8
  %108 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 0
  %111 = load %struct.ct_sns_gid_pt_data*, %struct.ct_sns_gid_pt_data** %110, align 8
  %112 = load i64, i64* %7, align 8
  %113 = getelementptr inbounds %struct.ct_sns_gid_pt_data, %struct.ct_sns_gid_pt_data* %111, i64 %112
  store %struct.ct_sns_gid_pt_data* %113, %struct.ct_sns_gid_pt_data** %11, align 8
  %114 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %115 = load i64, i64* %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %116, i32 0, i32 0
  %118 = load %struct.ct_sns_gid_pt_data*, %struct.ct_sns_gid_pt_data** %11, align 8
  %119 = getelementptr inbounds %struct.ct_sns_gid_pt_data, %struct.ct_sns_gid_pt_data* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @be_to_port_id(i32 %120)
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  %124 = bitcast %struct.TYPE_23__* %117 to i8*
  %125 = bitcast %struct.TYPE_23__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %124, i8* align 4 %125, i64 4, i1 false)
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %127 = load i64, i64* %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @WWN_SIZE, align 4
  %132 = call i32 @memset(i32 %130, i32 0, i32 %131)
  %133 = load i32, i32* @PORT_SPEED_UNKNOWN, align 4
  %134 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %135 = load i64, i64* %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %136, i32 0, i32 1
  store i32 %133, i32* %137, align 4
  %138 = load %struct.ct_sns_gid_pt_data*, %struct.ct_sns_gid_pt_data** %11, align 8
  %139 = getelementptr inbounds %struct.ct_sns_gid_pt_data, %struct.ct_sns_gid_pt_data* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @BIT_7, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %106
  %145 = load %struct.ct_sns_gid_pt_data*, %struct.ct_sns_gid_pt_data** %11, align 8
  %146 = getelementptr inbounds %struct.ct_sns_gid_pt_data, %struct.ct_sns_gid_pt_data* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %149 = load i64, i64* %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %152, i32 0, i32 0
  store i32 %147, i32* %153, align 4
  br label %158

154:                                              ; preds = %106
  br label %155

155:                                              ; preds = %154
  %156 = load i64, i64* %7, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %7, align 8
  br label %100

158:                                              ; preds = %144, %100
  %159 = load i64, i64* %7, align 8
  %160 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %161 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %159, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %158
  %165 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %165, i32* %6, align 4
  br label %166

166:                                              ; preds = %164, %158
  br label %167

167:                                              ; preds = %166, %97
  br label %168

168:                                              ; preds = %167, %85
  %169 = load i32, i32* %6, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %168, %26
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i64 @IS_QLA2100(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2200(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_sns_gid_pt(%struct.TYPE_31__*, %struct.TYPE_30__*) #1

declare dso_local i64 @qla2x00_gid_pt_rsp_size(%struct.TYPE_31__*) #1

declare dso_local %struct.ct_sns_req* @qla2x00_prep_ct_req(%struct.TYPE_21__*, i32, i64) #1

declare dso_local i32 @qla2x00_issue_iocb(%struct.TYPE_31__*, i32, i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_31__*, i32, i8*, i32) #1

declare dso_local i32 @qla2x00_chk_ms_status(%struct.TYPE_31__*, i32*, %struct.ct_sns_rsp*, i8*) #1

declare dso_local i32 @be_to_port_id(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
