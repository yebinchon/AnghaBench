; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_async_gpnid_sp_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_async_gpnid_sp_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32 (%struct.TYPE_23__*)*, %struct.TYPE_20__, %struct.scsi_qla_host*, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32*, i32, i32, i32*, i32, i32 }
%struct.scsi_qla_host = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_29__*, %struct.TYPE_28__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.ct_sns_req = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.ct_sns_rsp = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.event_arg = type { i32, i32, %struct.TYPE_23__*, i32 }
%struct.qla_work_evt = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_23__* }

@ql_dbg_disc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Async done-%s fail res %x rscn gen %d ID %3phC. %8phC\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Async done-%s good rscn gen %d ID %3phC. %8phC\0A\00", align 1
@WWN_SIZE = common dso_local global i32 0, align 4
@QLA_FUNCTION_TIMEOUT = common dso_local global i32 0, align 4
@QLA_EVT_UNMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, i32)* @qla2x00_async_gpnid_sp_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_async_gpnid_sp_done(%struct.TYPE_23__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca %struct.ct_sns_req*, align 8
  %7 = alloca %struct.ct_sns_rsp*, align 8
  %8 = alloca %struct.event_arg, align 8
  %9 = alloca %struct.qla_work_evt*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 3
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %12, align 8
  store %struct.scsi_qla_host* %13, %struct.scsi_qla_host** %5, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = bitcast i32* %20 to %struct.ct_sns_req*
  store %struct.ct_sns_req* %21, %struct.ct_sns_req** %6, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = bitcast i32* %28 to %struct.ct_sns_rsp*
  store %struct.ct_sns_rsp* %29, %struct.ct_sns_rsp** %7, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %2
  %33 = load i32, i32* @ql_dbg_disc, align 4
  %34 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ct_sns_req*, %struct.ct_sns_req** %6, align 8
  %43 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 0
  %46 = ptrtoint i32* %45 to i32
  %47 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %7, align 8
  %48 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, i32, i32, i32, ...) @ql_dbg(i32 %33, %struct.scsi_qla_host* %34, i32 8294, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %41, i32 %46, i32 %51)
  br label %73

53:                                               ; preds = %2
  %54 = load i32, i32* @ql_dbg_disc, align 4
  %55 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ct_sns_req*, %struct.ct_sns_req** %6, align 8
  %63 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 0
  %66 = ptrtoint i32* %65 to i32
  %67 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %7, align 8
  %68 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, i32, i32, i32, ...) @ql_dbg(i32 %54, %struct.scsi_qla_host* %55, i32 8294, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %61, i32 %66, i32 %71)
  br label %73

73:                                               ; preds = %53, %32
  %74 = call i32 @memset(%struct.event_arg* %8, i32 0, i32 24)
  %75 = getelementptr inbounds %struct.event_arg, %struct.event_arg* %8, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %7, align 8
  %78 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @WWN_SIZE, align 4
  %83 = call i32 @memcpy(i32 %76, i32 %81, i32 %82)
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %85 = getelementptr inbounds %struct.event_arg, %struct.event_arg* %8, i32 0, i32 2
  store %struct.TYPE_23__* %84, %struct.TYPE_23__** %85, align 8
  %86 = load %struct.ct_sns_req*, %struct.ct_sns_req** %6, align 8
  %87 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @be_to_port_id(i32 %90)
  %92 = getelementptr inbounds %struct.event_arg, %struct.event_arg* %8, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %4, align 4
  %94 = getelementptr inbounds %struct.event_arg, %struct.event_arg* %8, i32 0, i32 0
  store i32 %93, i32* %94, align 8
  %95 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %96 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %95, i32 0, i32 0
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 0
  %100 = load i64, i64* %10, align 8
  %101 = call i32 @spin_lock_irqsave(i32* %99, i64 %100)
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 4
  %104 = call i32 @list_del(i32* %103)
  %105 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %106 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %105, i32 0, i32 0
  %107 = load %struct.TYPE_30__*, %struct.TYPE_30__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 0
  %110 = load i64, i64* %10, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %73
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @QLA_FUNCTION_TIMEOUT, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %129

118:                                              ; preds = %114
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 3
  %121 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %120, align 8
  %122 = getelementptr inbounds %struct.event_arg, %struct.event_arg* %8, i32 0, i32 1
  %123 = call i32 @qla24xx_post_gpnid_work(%struct.scsi_qla_host* %121, i32* %122)
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 1
  %126 = load i32 (%struct.TYPE_23__*)*, i32 (%struct.TYPE_23__*)** %125, align 8
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %128 = call i32 %126(%struct.TYPE_23__* %127)
  br label %238

129:                                              ; preds = %114
  br label %147

130:                                              ; preds = %73
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %130
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 3
  %138 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %137, align 8
  %139 = getelementptr inbounds %struct.event_arg, %struct.event_arg* %8, i32 0, i32 1
  %140 = call i32 @qla24xx_post_gpnid_work(%struct.scsi_qla_host* %138, i32* %139)
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 1
  %143 = load i32 (%struct.TYPE_23__*)*, i32 (%struct.TYPE_23__*)** %142, align 8
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %145 = call i32 %143(%struct.TYPE_23__* %144)
  br label %238

146:                                              ; preds = %130
  br label %147

147:                                              ; preds = %146, %129
  %148 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %149 = call i32 @qla24xx_handle_gpnid_event(%struct.scsi_qla_host* %148, %struct.event_arg* %8)
  %150 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %151 = load i32, i32* @QLA_EVT_UNMAP, align 4
  %152 = call %struct.qla_work_evt* @qla2x00_alloc_work(%struct.scsi_qla_host* %150, i32 %151)
  store %struct.qla_work_evt* %152, %struct.qla_work_evt** %9, align 8
  %153 = load %struct.qla_work_evt*, %struct.qla_work_evt** %9, align 8
  %154 = icmp ne %struct.qla_work_evt* %153, null
  br i1 %154, label %229, label %155

155:                                              ; preds = %147
  %156 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %157 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %156, i32 0, i32 0
  %158 = load %struct.TYPE_30__*, %struct.TYPE_30__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_29__*, %struct.TYPE_29__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %173, i32 0, i32 3
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @dma_free_coherent(i32* %161, i32 %168, i32* %175, i32 %182)
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %188, i32 0, i32 3
  store i32* null, i32** %189, align 8
  %190 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %191 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %190, i32 0, i32 0
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @dma_free_coherent(i32* %195, i32 %202, i32* %209, i32 %216)
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %222, i32 0, i32 0
  store i32* null, i32** %223, align 8
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 1
  %226 = load i32 (%struct.TYPE_23__*)*, i32 (%struct.TYPE_23__*)** %225, align 8
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %228 = call i32 %226(%struct.TYPE_23__* %227)
  br label %238

229:                                              ; preds = %147
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %231 = load %struct.qla_work_evt*, %struct.qla_work_evt** %9, align 8
  %232 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 0
  store %struct.TYPE_23__* %230, %struct.TYPE_23__** %234, align 8
  %235 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %236 = load %struct.qla_work_evt*, %struct.qla_work_evt** %9, align 8
  %237 = call i32 @qla2x00_post_work(%struct.scsi_qla_host* %235, %struct.qla_work_evt* %236)
  br label %238

238:                                              ; preds = %229, %155, %135, %118
  ret void
}

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @memset(%struct.event_arg*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @be_to_port_id(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qla24xx_post_gpnid_work(%struct.scsi_qla_host*, i32*) #1

declare dso_local i32 @qla24xx_handle_gpnid_event(%struct.scsi_qla_host*, %struct.event_arg*) #1

declare dso_local %struct.qla_work_evt* @qla2x00_alloc_work(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @qla2x00_post_work(%struct.scsi_qla_host*, %struct.qla_work_evt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
