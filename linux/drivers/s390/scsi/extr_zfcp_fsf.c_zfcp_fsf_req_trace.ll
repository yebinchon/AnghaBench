; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_req_trace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_req_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.TYPE_16__*, %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.fsf_qual_latency_info }
%struct.fsf_qual_latency_info = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.zfcp_latency_cont = type { i32, i32, i32 }
%struct.zfcp_scsi_dev = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.zfcp_latency_cont, %struct.zfcp_latency_cont, %struct.zfcp_latency_cont }
%struct.zfcp_blk_drv_data = type { i32, i32, i32, i32, i64, i32 }

@ZFCP_BLK_DRV_DATA_MAGIC = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@ZFCP_BLK_REQ_ERROR = common dso_local global i32 0, align 4
@FSF_FEATURE_MEASUREMENT_DATA = common dso_local global i32 0, align 4
@ZFCP_BLK_LAT_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*, %struct.scsi_cmnd*)* @zfcp_fsf_req_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_req_trace(%struct.zfcp_fsf_req* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.zfcp_fsf_req*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.fsf_qual_latency_info*, align 8
  %6 = alloca %struct.zfcp_latency_cont*, align 8
  %7 = alloca %struct.zfcp_scsi_dev*, align 8
  %8 = alloca %struct.zfcp_blk_drv_data, align 8
  %9 = alloca i32, align 4
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  store %struct.zfcp_latency_cont* null, %struct.zfcp_latency_cont** %6, align 8
  %10 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %11 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %10, i32 0, i32 2
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %16 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %15, i32 0, i32 1
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store %struct.fsf_qual_latency_info* %20, %struct.fsf_qual_latency_info** %5, align 8
  %21 = getelementptr inbounds %struct.zfcp_blk_drv_data, %struct.zfcp_blk_drv_data* %8, i32 0, i32 2
  store i32 0, i32* %21, align 8
  %22 = load i32, i32* @ZFCP_BLK_DRV_DATA_MAGIC, align 4
  %23 = getelementptr inbounds %struct.zfcp_blk_drv_data, %struct.zfcp_blk_drv_data* %8, i32 0, i32 5
  store i32 %22, i32* %23, align 8
  %24 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %25 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load i32, i32* @ZFCP_BLK_REQ_ERROR, align 4
  %32 = getelementptr inbounds %struct.zfcp_blk_drv_data, %struct.zfcp_blk_drv_data* %8, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %30, %2
  %36 = getelementptr inbounds %struct.zfcp_blk_drv_data, %struct.zfcp_blk_drv_data* %8, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %38 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.zfcp_blk_drv_data, %struct.zfcp_blk_drv_data* %8, i32 0, i32 3
  store i32 %40, i32* %41, align 4
  %42 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %43 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %42, i32 0, i32 2
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @FSF_FEATURE_MEASUREMENT_DATA, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %126

50:                                               ; preds = %35
  %51 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %52 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %126, label %57

57:                                               ; preds = %50
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %59 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.zfcp_scsi_dev* @sdev_to_zfcp(i32 %60)
  store %struct.zfcp_scsi_dev* %61, %struct.zfcp_scsi_dev** %7, align 8
  %62 = load i32, i32* @ZFCP_BLK_LAT_VALID, align 4
  %63 = getelementptr inbounds %struct.zfcp_blk_drv_data, %struct.zfcp_blk_drv_data* %8, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 8
  %66 = load %struct.fsf_qual_latency_info*, %struct.fsf_qual_latency_info** %5, align 8
  %67 = getelementptr inbounds %struct.fsf_qual_latency_info, %struct.fsf_qual_latency_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %9, align 4
  %70 = mul nsw i32 %68, %69
  %71 = getelementptr inbounds %struct.zfcp_blk_drv_data, %struct.zfcp_blk_drv_data* %8, i32 0, i32 0
  store i32 %70, i32* %71, align 8
  %72 = load %struct.fsf_qual_latency_info*, %struct.fsf_qual_latency_info** %5, align 8
  %73 = getelementptr inbounds %struct.fsf_qual_latency_info, %struct.fsf_qual_latency_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = mul nsw i32 %74, %75
  %77 = getelementptr inbounds %struct.zfcp_blk_drv_data, %struct.zfcp_blk_drv_data* %8, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  %78 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %79 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %78, i32 0, i32 1
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %97 [
    i32 132, label %85
    i32 133, label %85
    i32 129, label %85
    i32 130, label %89
    i32 131, label %89
    i32 128, label %89
    i32 134, label %93
  ]

85:                                               ; preds = %57, %57, %57
  %86 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %7, align 8
  %87 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 3
  store %struct.zfcp_latency_cont* %88, %struct.zfcp_latency_cont** %6, align 8
  br label %97

89:                                               ; preds = %57, %57, %57
  %90 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %7, align 8
  %91 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 2
  store %struct.zfcp_latency_cont* %92, %struct.zfcp_latency_cont** %6, align 8
  br label %97

93:                                               ; preds = %57
  %94 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %7, align 8
  %95 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  store %struct.zfcp_latency_cont* %96, %struct.zfcp_latency_cont** %6, align 8
  br label %97

97:                                               ; preds = %57, %93, %89, %85
  %98 = load %struct.zfcp_latency_cont*, %struct.zfcp_latency_cont** %6, align 8
  %99 = icmp ne %struct.zfcp_latency_cont* %98, null
  br i1 %99, label %100, label %125

100:                                              ; preds = %97
  %101 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %7, align 8
  %102 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = call i32 @spin_lock(i32* %103)
  %105 = load %struct.zfcp_latency_cont*, %struct.zfcp_latency_cont** %6, align 8
  %106 = getelementptr inbounds %struct.zfcp_latency_cont, %struct.zfcp_latency_cont* %105, i32 0, i32 2
  %107 = load %struct.fsf_qual_latency_info*, %struct.fsf_qual_latency_info** %5, align 8
  %108 = getelementptr inbounds %struct.fsf_qual_latency_info, %struct.fsf_qual_latency_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @zfcp_fsf_update_lat(i32* %106, i32 %109)
  %111 = load %struct.zfcp_latency_cont*, %struct.zfcp_latency_cont** %6, align 8
  %112 = getelementptr inbounds %struct.zfcp_latency_cont, %struct.zfcp_latency_cont* %111, i32 0, i32 1
  %113 = load %struct.fsf_qual_latency_info*, %struct.fsf_qual_latency_info** %5, align 8
  %114 = getelementptr inbounds %struct.fsf_qual_latency_info, %struct.fsf_qual_latency_info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @zfcp_fsf_update_lat(i32* %112, i32 %115)
  %117 = load %struct.zfcp_latency_cont*, %struct.zfcp_latency_cont** %6, align 8
  %118 = getelementptr inbounds %struct.zfcp_latency_cont, %struct.zfcp_latency_cont* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  %121 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %7, align 8
  %122 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = call i32 @spin_unlock(i32* %123)
  br label %125

125:                                              ; preds = %100, %97
  br label %126

126:                                              ; preds = %125, %50, %35
  %127 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %128 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %127, i32 0, i32 0
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %133 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %132, i32 0, i32 0
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %133, align 8
  %135 = call i32 @blk_add_driver_data(i32 %131, %struct.TYPE_18__* %134, %struct.zfcp_blk_drv_data* %8, i32 32)
  ret void
}

declare dso_local %struct.zfcp_scsi_dev* @sdev_to_zfcp(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @zfcp_fsf_update_lat(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @blk_add_driver_data(i32, %struct.TYPE_18__*, %struct.zfcp_blk_drv_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
