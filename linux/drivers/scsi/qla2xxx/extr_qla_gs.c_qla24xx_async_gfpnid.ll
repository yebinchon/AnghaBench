; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla24xx_async_gfpnid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla24xx_async_gfpnid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_26__, i32, i32, %struct.TYPE_29__, i32, i32 }
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
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SRB_CT_PTHRU_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"gfpnid\00", align 1
@qla2x00_async_iocb_timeout = common dso_local global i32 0, align 4
@GFPN_ID_CMD = common dso_local global i32 0, align 4
@GFPN_ID_RSP_SIZE = common dso_local global i32 0, align 4
@GFPN_ID_REQ_SIZE = common dso_local global i32 0, align 4
@NPH_SNS = common dso_local global i32 0, align 4
@qla2x00_async_gfpnid_sp_done = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Async-%s - %8phC hdl=%x loopid=%x portid %06x.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_async_gfpnid(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1) #0 {
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
  br label %179

24:                                               ; preds = %15
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.TYPE_34__* @qla2x00_get_sp(%struct.TYPE_23__* %25, %struct.TYPE_24__* %26, i32 %27)
  store %struct.TYPE_34__* %28, %struct.TYPE_34__** %8, align 8
  %29 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %30 = icmp ne %struct.TYPE_34__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %177

32:                                               ; preds = %24
  %33 = load i32, i32* @SRB_CT_PTHRU_CMD, align 4
  %34 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %37, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @qla2x00_async_iocb_timeout, align 4
  %49 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 4
  %53 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %55 = call i64 @qla2x00_get_async_timeout(%struct.TYPE_23__* %54)
  %56 = add nsw i64 %55, 2
  %57 = call i32 @qla2x00_init_timer(%struct.TYPE_34__* %53, i64 %56)
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @GFPN_ID_CMD, align 4
  %63 = load i32, i32* @GFPN_ID_RSP_SIZE, align 4
  %64 = call %struct.ct_sns_req* @qla2x00_prep_ct_req(i32 %61, i32 %62, i32 %63)
  store %struct.ct_sns_req* %64, %struct.ct_sns_req** %7, align 8
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @port_id_to_be_id(i32 %68)
  %70 = load %struct.ct_sns_req*, %struct.ct_sns_req** %7, align 8
  %71 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %82, i32 0, i32 6
  store i32 %77, i32* %83, align 8
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %92, i32 0, i32 5
  store i32 %87, i32* %93, align 4
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %102, i32 0, i32 4
  store i32 %97, i32* %103, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %112, i32 0, i32 3
  store i32 %107, i32* %113, align 4
  %114 = load i32, i32* @GFPN_ID_REQ_SIZE, align 4
  %115 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 2
  store i32 %114, i32* %120, align 8
  %121 = load i32, i32* @GFPN_ID_RSP_SIZE, align 4
  %122 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %126, i32 0, i32 1
  store i32 %121, i32* %127, align 4
  %128 = load i32, i32* @NPH_SNS, align 4
  %129 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %133, i32 0, i32 0
  store i32 %128, i32* %134, align 8
  %135 = load i32, i32* @qla2x00_async_gfpnid_sp_done, align 4
  %136 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @ql_dbg_disc, align 4
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %140 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @ql_dbg(i32 %138, %struct.TYPE_23__* %139, i32 65535, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %142, i32 %145, i32 %148, i32 %151, i32 %155)
  %157 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %158 = call i32 @qla2x00_start_sp(%struct.TYPE_34__* %157)
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @QLA_SUCCESS, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %32
  br label %165

163:                                              ; preds = %32
  %164 = load i32, i32* %6, align 4
  store i32 %164, i32* %3, align 4
  br label %179

165:                                              ; preds = %162
  %166 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %166, i32 0, i32 1
  %168 = load i32 (%struct.TYPE_34__*)*, i32 (%struct.TYPE_34__*)** %167, align 8
  %169 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %170 = call i32 %168(%struct.TYPE_34__* %169)
  %171 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %172 = xor i32 %171, -1
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, %172
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %165, %31
  %178 = load i32, i32* %6, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %177, %163, %22
  %180 = load i32, i32* %3, align 4
  ret i32 %180
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
