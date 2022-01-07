; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla24xx_async_gpsc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla24xx_async_gpsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_24__, i32, i32, %struct.TYPE_31__, i32, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i32, i32, i32 }
%struct.TYPE_31__ = type { i32, i32 }
%struct.ct_sns_req = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_25__ = type { i8*, i32 (%struct.TYPE_25__*)*, i32, i32, %struct.TYPE_35__, i32, i32, i32 }
%struct.TYPE_35__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32, %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32, i32, i32, i32, i32, i32, i32 }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@FCF_ASYNC_SENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SRB_CT_PTHRU_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"gpsc\00", align 1
@GPSC_CMD = common dso_local global i32 0, align 4
@GPSC_RSP_SIZE = common dso_local global i32 0, align 4
@WWN_SIZE = common dso_local global i32 0, align 4
@GPSC_REQ_SIZE = common dso_local global i32 0, align 4
@qla2x00_async_iocb_timeout = common dso_local global i32 0, align 4
@qla24xx_async_gpsc_sp_done = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Async-%s %8phC hdl=%x loopid=%x portid=%02x%02x%02x.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@FCF_ASYNC_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_async_gpsc(%struct.TYPE_26__* %0, %struct.TYPE_27__* %1) #0 {
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
  %11 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 1
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
  br label %199

24:                                               ; preds = %15
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.TYPE_25__* @qla2x00_get_sp(%struct.TYPE_26__* %25, %struct.TYPE_27__* %26, i32 %27)
  store %struct.TYPE_25__* %28, %struct.TYPE_25__** %8, align 8
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %30 = icmp ne %struct.TYPE_25__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %191

32:                                               ; preds = %24
  %33 = load i32, i32* @SRB_CT_PTHRU_CMD, align 4
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %37, align 8
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %50 = call i64 @qla2x00_get_async_timeout(%struct.TYPE_26__* %49)
  %51 = add nsw i64 %50, 2
  %52 = call i32 @qla2x00_init_timer(%struct.TYPE_25__* %48, i64 %51)
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @GPSC_CMD, align 4
  %58 = load i32, i32* @GPSC_RSP_SIZE, align 4
  %59 = call %struct.ct_sns_req* @qla24xx_prep_ct_fm_req(i32 %56, i32 %57, i32 %58)
  store %struct.ct_sns_req* %59, %struct.ct_sns_req** %7, align 8
  %60 = load %struct.ct_sns_req*, %struct.ct_sns_req** %7, align 8
  %61 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @WWN_SIZE, align 4
  %69 = call i32 @memcpy(i32 %64, i32 %67, i32 %68)
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %78, i32 0, i32 6
  store i32 %73, i32* %79, align 4
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %88, i32 0, i32 5
  store i32 %83, i32* %89, align 4
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %98, i32 0, i32 4
  store i32 %93, i32* %99, align 4
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %108, i32 0, i32 3
  store i32 %103, i32* %109, align 4
  %110 = load i32, i32* @GPSC_REQ_SIZE, align 4
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %115, i32 0, i32 2
  store i32 %110, i32* %116, align 4
  %117 = load i32, i32* @GPSC_RSP_SIZE, align 4
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %122, i32 0, i32 1
  store i32 %117, i32* %123, align 4
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %131, i32 0, i32 0
  store i32 %126, i32* %132, align 4
  %133 = load i32, i32* @qla2x00_async_iocb_timeout, align 4
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %136, i32 0, i32 0
  store i32 %133, i32* %137, align 8
  %138 = load i32, i32* @qla24xx_async_gpsc_sp_done, align 4
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @ql_dbg_disc, align 4
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @ql_dbg(i32 %141, %struct.TYPE_26__* %142, i32 8286, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %145, i32 %148, i32 %151, i32 %154, i32 %159, i32 %164, i32 %169)
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %172 = call i32 @qla2x00_start_sp(%struct.TYPE_25__* %171)
  store i32 %172, i32* %6, align 4
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @QLA_SUCCESS, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %32
  br label %179

177:                                              ; preds = %32
  %178 = load i32, i32* %6, align 4
  store i32 %178, i32* %3, align 4
  br label %199

179:                                              ; preds = %176
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 1
  %182 = load i32 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*)** %181, align 8
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %184 = call i32 %182(%struct.TYPE_25__* %183)
  %185 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %186 = xor i32 %185, -1
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, %186
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %179, %31
  %192 = load i32, i32* @FCF_ASYNC_ACTIVE, align 4
  %193 = xor i32 %192, -1
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, %193
  store i32 %197, i32* %195, align 4
  %198 = load i32, i32* %6, align 4
  store i32 %198, i32* %3, align 4
  br label %199

199:                                              ; preds = %191, %177, %22
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local %struct.TYPE_25__* @qla2x00_get_sp(%struct.TYPE_26__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @qla2x00_init_timer(%struct.TYPE_25__*, i64) #1

declare dso_local i64 @qla2x00_get_async_timeout(%struct.TYPE_26__*) #1

declare dso_local %struct.ct_sns_req* @qla24xx_prep_ct_fm_req(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_26__*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @qla2x00_start_sp(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
