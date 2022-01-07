; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla24xx_async_gffid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla24xx_async_gffid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32, %struct.TYPE_33__, %struct.TYPE_32__, i32, i32 }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32, i32, i32 }
%struct.ct_sns_req = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32* }
%struct.TYPE_25__ = type { i8*, i32 (%struct.TYPE_25__*)*, i32, i32, %struct.TYPE_24__, i32, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { %struct.TYPE_35__, i32 }
%struct.TYPE_35__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32, i32, i32, i32, i32, i32, i32 }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@FCF_ASYNC_SENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SRB_CT_PTHRU_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"gffid\00", align 1
@qla2x00_async_iocb_timeout = common dso_local global i32 0, align 4
@GFF_ID_CMD = common dso_local global i32 0, align 4
@GFF_ID_RSP_SIZE = common dso_local global i32 0, align 4
@GFF_ID_REQ_SIZE = common dso_local global i32 0, align 4
@NPH_SNS = common dso_local global i32 0, align 4
@qla24xx_async_gffid_sp_done = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Async-%s hdl=%x  %8phC.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_async_gffid(%struct.TYPE_26__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ct_sns_req*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  %9 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15, %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %201

24:                                               ; preds = %15
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.TYPE_25__* @qla2x00_get_sp(%struct.TYPE_26__* %25, %struct.TYPE_27__* %26, i32 %27)
  store %struct.TYPE_25__* %28, %struct.TYPE_25__** %8, align 8
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %30 = icmp ne %struct.TYPE_25__* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %201

33:                                               ; preds = %24
  %34 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @SRB_CT_PTHRU_CMD, align 4
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %43, align 8
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @qla2x00_async_iocb_timeout, align 4
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %57, i32 0, i32 1
  store i32 %54, i32* %58, align 4
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %61 = call i64 @qla2x00_get_async_timeout(%struct.TYPE_26__* %60)
  %62 = add nsw i64 %61, 2
  %63 = call i32 @qla2x00_init_timer(%struct.TYPE_25__* %59, i64 %62)
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @GFF_ID_CMD, align 4
  %69 = load i32, i32* @GFF_ID_RSP_SIZE, align 4
  %70 = call %struct.ct_sns_req* @qla2x00_prep_ct_req(i32 %67, i32 %68, i32 %69)
  store %struct.ct_sns_req* %70, %struct.ct_sns_req** %7, align 8
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ct_sns_req*, %struct.ct_sns_req** %7, align 8
  %77 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 %75, i32* %81, align 4
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ct_sns_req*, %struct.ct_sns_req** %7, align 8
  %88 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 %86, i32* %92, align 4
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ct_sns_req*, %struct.ct_sns_req** %7, align 8
  %99 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  store i32 %97, i32* %103, align 4
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %112, i32 0, i32 6
  store i32 %107, i32* %113, align 8
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %122, i32 0, i32 5
  store i32 %117, i32* %123, align 4
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %132, i32 0, i32 4
  store i32 %127, i32* %133, align 8
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %142, i32 0, i32 3
  store i32 %137, i32* %143, align 4
  %144 = load i32, i32* @GFF_ID_REQ_SIZE, align 4
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %149, i32 0, i32 2
  store i32 %144, i32* %150, align 8
  %151 = load i32, i32* @GFF_ID_RSP_SIZE, align 4
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %156, i32 0, i32 1
  store i32 %151, i32* %157, align 4
  %158 = load i32, i32* @NPH_SNS, align 4
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %163, i32 0, i32 0
  store i32 %158, i32* %164, align 8
  %165 = load i32, i32* @qla24xx_async_gffid_sp_done, align 4
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* @ql_dbg_disc, align 4
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @ql_dbg(i32 %168, %struct.TYPE_26__* %169, i32 8498, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %172, i32 %175, i32 %178)
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %181 = call i32 @qla2x00_start_sp(%struct.TYPE_25__* %180)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @QLA_SUCCESS, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %33
  br label %188

186:                                              ; preds = %33
  %187 = load i32, i32* %6, align 4
  store i32 %187, i32* %3, align 4
  br label %201

188:                                              ; preds = %185
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 1
  %191 = load i32 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*)** %190, align 8
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %193 = call i32 %191(%struct.TYPE_25__* %192)
  %194 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %195 = xor i32 %194, -1
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %198, %195
  store i32 %199, i32* %197, align 4
  %200 = load i32, i32* %6, align 4
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %188, %186, %31, %22
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local %struct.TYPE_25__* @qla2x00_get_sp(%struct.TYPE_26__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @qla2x00_init_timer(%struct.TYPE_25__*, i64) #1

declare dso_local i64 @qla2x00_get_async_timeout(%struct.TYPE_26__*) #1

declare dso_local %struct.ct_sns_req* @qla2x00_prep_ct_req(i32, i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_26__*, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @qla2x00_start_sp(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
