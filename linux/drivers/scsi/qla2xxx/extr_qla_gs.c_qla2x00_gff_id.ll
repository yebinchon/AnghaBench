; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_gff_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_gff_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64, i32, i32, %struct.TYPE_18__*, %struct.TYPE_20__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.ct_sns_rsp }
%struct.ct_sns_rsp = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_20__ = type { i32* (%struct.TYPE_28__*, %struct.ct_arg*)* }
%struct.ct_arg = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64 }
%struct.ct_sns_req = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }

@FC4_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@GFF_ID_REQ_SIZE = common dso_local global i32 0, align 4
@GFF_ID_RSP_SIZE = common dso_local global i32 0, align 4
@NPH_SNS = common dso_local global i32 0, align 4
@GFF_ID_CMD = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"GFF_ID issue IOCB failed (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"GFF_ID\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"GFF_ID IOCB status had a failure status code.\0A\00", align 1
@GFF_FCP_SCSI_OFFSET = common dso_local global i64 0, align 8
@FC4_TYPE_FCP_SCSI = common dso_local global i32 0, align 4
@FC4_TYPE_OTHER = common dso_local global i32 0, align 4
@GFF_NVME_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_gff_id(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ct_sns_req*, align 8
  %9 = alloca %struct.ct_sns_rsp*, align 8
  %10 = alloca %struct.qla_hw_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ct_arg, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %4, align 8
  %13 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 0
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  store %struct.qla_hw_data* %15, %struct.qla_hw_data** %10, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %6, align 8
  br label %16

16:                                               ; preds = %164, %2
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %19 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %167

22:                                               ; preds = %16
  %23 = load i32, i32* @FC4_TYPE_UNKNOWN, align 4
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 2
  store i32 %23, i32* %27, align 8
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %29 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %164

32:                                               ; preds = %22
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %34 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.ct_arg, %struct.ct_arg* %12, i32 0, i32 5
  store i32 %35, i32* %36, align 4
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %38 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.ct_arg, %struct.ct_arg* %12, i32 0, i32 4
  store i32 %39, i32* %40, align 4
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %42 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.ct_arg, %struct.ct_arg* %12, i32 0, i32 3
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @GFF_ID_REQ_SIZE, align 4
  %46 = getelementptr inbounds %struct.ct_arg, %struct.ct_arg* %12, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @GFF_ID_RSP_SIZE, align 4
  %48 = getelementptr inbounds %struct.ct_arg, %struct.ct_arg* %12, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @NPH_SNS, align 4
  %50 = getelementptr inbounds %struct.ct_arg, %struct.ct_arg* %12, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %52 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %51, i32 0, i32 4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i32* (%struct.TYPE_28__*, %struct.ct_arg*)*, i32* (%struct.TYPE_28__*, %struct.ct_arg*)** %54, align 8
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %57 = call i32* %55(%struct.TYPE_28__* %56, %struct.ct_arg* %12)
  store i32* %57, i32** %7, align 8
  %58 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %59 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %58, i32 0, i32 3
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  %61 = load i32, i32* @GFF_ID_CMD, align 4
  %62 = load i32, i32* @GFF_ID_RSP_SIZE, align 4
  %63 = call %struct.ct_sns_req* @qla2x00_prep_ct_req(%struct.TYPE_18__* %60, i32 %61, i32 %62)
  store %struct.ct_sns_req* %63, %struct.ct_sns_req** %8, align 8
  %64 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %65 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %64, i32 0, i32 3
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  store %struct.ct_sns_rsp* %68, %struct.ct_sns_rsp** %9, align 8
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @port_id_to_be_id(i64 %75)
  %77 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %78 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 4
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %82 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %83 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %86 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @qla2x00_issue_iocb(%struct.TYPE_28__* %81, i32 %84, i32 %87, i32 4)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @QLA_SUCCESS, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %32
  %93 = load i32, i32* @ql_dbg_disc, align 4
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 (i32, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i32 %93, %struct.TYPE_28__* %94, i32 8284, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %95)
  br label %153

97:                                               ; preds = %32
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %101 = call i32 @qla2x00_chk_ms_status(%struct.TYPE_28__* %98, i32* %99, %struct.ct_sns_rsp* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* @QLA_SUCCESS, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load i32, i32* @ql_dbg_disc, align 4
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %107 = call i32 (i32, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i32 %105, %struct.TYPE_28__* %106, i32 8285, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %152

108:                                              ; preds = %97
  %109 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %110 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @GFF_FCP_SCSI_OFFSET, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = and i32 %117, 15
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %108
  %122 = load i32, i32* @FC4_TYPE_FCP_SCSI, align 4
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %124 = load i64, i64* %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 2
  store i32 %122, i32* %126, align 8
  br label %133

127:                                              ; preds = %108
  %128 = load i32, i32* @FC4_TYPE_OTHER, align 4
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %130 = load i64, i64* %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 2
  store i32 %128, i32* %132, align 8
  br label %133

133:                                              ; preds = %127, %121
  %134 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %135 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* @GFF_NVME_OFFSET, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %143 = load i64, i64* %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 0
  store i32 %141, i32* %145, align 8
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %147 = load i64, i64* %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = and i32 %150, 15
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %133, %104
  br label %153

153:                                              ; preds = %152, %92
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %155 = load i64, i64* %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  br label %167

163:                                              ; preds = %153
  br label %164

164:                                              ; preds = %163, %31
  %165 = load i64, i64* %6, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %6, align 8
  br label %16

167:                                              ; preds = %162, %16
  ret void
}

declare dso_local i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local %struct.ct_sns_req* @qla2x00_prep_ct_req(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @port_id_to_be_id(i64) #1

declare dso_local i32 @qla2x00_issue_iocb(%struct.TYPE_28__*, i32, i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_28__*, i32, i8*, ...) #1

declare dso_local i32 @qla2x00_chk_ms_status(%struct.TYPE_28__*, i32*, %struct.ct_sns_rsp*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
