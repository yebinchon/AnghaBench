; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla24xx_async_gnnid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla24xx_async_gnnid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_26__, i32, i32, %struct.TYPE_29__, i32, i32, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.ct_sns_req = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_34__ = type { i8*, i32 (%struct.TYPE_34__*)*, i32, i32, %struct.TYPE_33__, i32, i32, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32, i32, i32, i32, i32, i32, i32 }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@FCF_ASYNC_SENT = common dso_local global i32 0, align 4
@DSC_GNN_ID = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SRB_CT_PTHRU_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"gnnid\00", align 1
@qla2x00_async_iocb_timeout = common dso_local global i32 0, align 4
@GNN_ID_CMD = common dso_local global i32 0, align 4
@GNN_ID_RSP_SIZE = common dso_local global i32 0, align 4
@GNN_ID_REQ_SIZE = common dso_local global i32 0, align 4
@NPH_SNS = common dso_local global i32 0, align 4
@qla2x00_async_gnnid_sp_done = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Async-%s - %8phC hdl=%x loopid=%x portid %06x.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_async_gnnid(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ct_sns_req*, align 8
  %8 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %9 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15, %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %187

24:                                               ; preds = %15
  %25 = load i32, i32* @DSC_GNN_ID, align 4
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call %struct.TYPE_34__* @qla2x00_get_sp(%struct.TYPE_23__* %28, %struct.TYPE_24__* %29, i32 %30)
  store %struct.TYPE_34__* %31, %struct.TYPE_34__** %8, align 8
  %32 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %33 = icmp ne %struct.TYPE_34__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  br label %185

35:                                               ; preds = %24
  %36 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @SRB_CT_PTHRU_CMD, align 4
  %42 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %45, align 8
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @qla2x00_async_iocb_timeout, align 4
  %57 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 4
  %61 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %63 = call i64 @qla2x00_get_async_timeout(%struct.TYPE_23__* %62)
  %64 = add nsw i64 %63, 2
  %65 = call i32 @qla2x00_init_timer(%struct.TYPE_34__* %61, i64 %64)
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @GNN_ID_CMD, align 4
  %71 = load i32, i32* @GNN_ID_RSP_SIZE, align 4
  %72 = call %struct.ct_sns_req* @qla2x00_prep_ct_req(i32 %69, i32 %70, i32 %71)
  store %struct.ct_sns_req* %72, %struct.ct_sns_req** %7, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @port_id_to_be_id(i32 %76)
  %78 = load %struct.ct_sns_req*, %struct.ct_sns_req** %7, align 8
  %79 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 4
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %90, i32 0, i32 6
  store i32 %85, i32* %91, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %100, i32 0, i32 5
  store i32 %95, i32* %101, align 4
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %110, i32 0, i32 4
  store i32 %105, i32* %111, align 8
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %120, i32 0, i32 3
  store i32 %115, i32* %121, align 4
  %122 = load i32, i32* @GNN_ID_REQ_SIZE, align 4
  %123 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %127, i32 0, i32 2
  store i32 %122, i32* %128, align 8
  %129 = load i32, i32* @GNN_ID_RSP_SIZE, align 4
  %130 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i32 0, i32 1
  store i32 %129, i32* %135, align 4
  %136 = load i32, i32* @NPH_SNS, align 4
  %137 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %141, i32 0, i32 0
  store i32 %136, i32* %142, align 8
  %143 = load i32, i32* @qla2x00_async_gnnid_sp_done, align 4
  %144 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @ql_dbg_disc, align 4
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %148 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @ql_dbg(i32 %146, %struct.TYPE_23__* %147, i32 65535, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %150, i32 %153, i32 %156, i32 %159, i32 %163)
  %165 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %166 = call i32 @qla2x00_start_sp(%struct.TYPE_34__* %165)
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @QLA_SUCCESS, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %35
  br label %173

171:                                              ; preds = %35
  %172 = load i32, i32* %6, align 4
  store i32 %172, i32* %3, align 4
  br label %187

173:                                              ; preds = %170
  %174 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %174, i32 0, i32 1
  %176 = load i32 (%struct.TYPE_34__*)*, i32 (%struct.TYPE_34__*)** %175, align 8
  %177 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %178 = call i32 %176(%struct.TYPE_34__* %177)
  %179 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %180 = xor i32 %179, -1
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, %180
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %173, %34
  %186 = load i32, i32* %6, align 4
  store i32 %186, i32* %3, align 4
  br label %187

187:                                              ; preds = %185, %171, %22
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local %struct.TYPE_34__* @qla2x00_get_sp(%struct.TYPE_23__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @qla2x00_init_timer(%struct.TYPE_34__*, i64) #1

declare dso_local i64 @qla2x00_get_async_timeout(%struct.TYPE_23__*) #1

declare dso_local %struct.ct_sns_req* @qla2x00_prep_ct_req(i32, i32, i32) #1

declare dso_local i32 @port_id_to_be_id(i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_23__*, i32, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @qla2x00_start_sp(%struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
