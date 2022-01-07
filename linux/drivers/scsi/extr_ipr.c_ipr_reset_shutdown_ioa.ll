; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_reset_shutdown_ioa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_reset_shutdown_ioa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { i32, %struct.TYPE_8__, %struct.TYPE_5__, %struct.ipr_ioa_cfg* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ipr_ioa_cfg = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@IPR_RC_JOB_CONTINUE = common dso_local global i32 0, align 4
@ENTER = common dso_local global i32 0, align 4
@IPR_SHUTDOWN_QUIESCE = common dso_local global i32 0, align 4
@ipr_reset_cancel_hcam = common dso_local global i32 0, align 4
@IPR_SHUTDOWN_NONE = common dso_local global i32 0, align 4
@IPR_INIT_HRRQ = common dso_local global i64 0, align 8
@IPR_IOA_RES_HANDLE = common dso_local global i32 0, align 4
@IPR_RQTYPE_IOACMD = common dso_local global i32 0, align 4
@IPR_IOA_SHUTDOWN = common dso_local global i32 0, align 4
@IPR_SHUTDOWN_NORMAL = common dso_local global i32 0, align 4
@IPR_SHUTDOWN_TIMEOUT = common dso_local global i64 0, align 8
@IPR_SHUTDOWN_PREPARE_FOR_NORMAL = common dso_local global i32 0, align 4
@IPR_INTERNAL_TIMEOUT = common dso_local global i64 0, align 8
@ipr_dual_ioa_raid = common dso_local global i64 0, align 8
@IPR_DUAL_IOA_ABBR_SHUTDOWN_TO = common dso_local global i64 0, align 8
@IPR_ABBREV_SHUTDOWN_TIMEOUT = common dso_local global i64 0, align 8
@ipr_reset_ioa_job = common dso_local global i32 0, align 4
@ipr_timeout = common dso_local global i32 0, align 4
@IPR_RC_JOB_RETURN = common dso_local global i32 0, align 4
@ipr_reset_ucode_download = common dso_local global i32 0, align 4
@ipr_reset_alert = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_cmnd*)* @ipr_reset_shutdown_ioa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_reset_shutdown_ioa(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca %struct.ipr_cmnd*, align 8
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %2, align 8
  %7 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %8 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %7, i32 0, i32 3
  %9 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  store %struct.ipr_ioa_cfg* %9, %struct.ipr_ioa_cfg** %3, align 8
  %10 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %11 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @IPR_RC_JOB_CONTINUE, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @ENTER, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @IPR_SHUTDOWN_QUIESCE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @ipr_reset_cancel_hcam, align 4
  %21 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %22 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %101

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @IPR_SHUTDOWN_NONE, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %96

27:                                               ; preds = %23
  %28 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %29 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i64, i64* @IPR_INIT_HRRQ, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %96, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @IPR_IOA_RES_HANDLE, align 4
  %38 = call i32 @cpu_to_be32(i32 %37)
  %39 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %40 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @IPR_RQTYPE_IOACMD, align 4
  %43 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %44 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i32 %42, i32* %46, align 8
  %47 = load i32, i32* @IPR_IOA_SHUTDOWN, align 4
  %48 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %49 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %47, i32* %53, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %56 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %54, i32* %60, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @IPR_SHUTDOWN_NORMAL, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %36
  %65 = load i64, i64* @IPR_SHUTDOWN_TIMEOUT, align 8
  store i64 %65, i64* %5, align 8
  br label %86

66:                                               ; preds = %36
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @IPR_SHUTDOWN_PREPARE_FOR_NORMAL, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i64, i64* @IPR_INTERNAL_TIMEOUT, align 8
  store i64 %71, i64* %5, align 8
  br label %85

72:                                               ; preds = %66
  %73 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %74 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i64, i64* @ipr_dual_ioa_raid, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i64, i64* @IPR_DUAL_IOA_ABBR_SHUTDOWN_TO, align 8
  store i64 %81, i64* %5, align 8
  br label %84

82:                                               ; preds = %77, %72
  %83 = load i64, i64* @IPR_ABBREV_SHUTDOWN_TIMEOUT, align 8
  store i64 %83, i64* %5, align 8
  br label %84

84:                                               ; preds = %82, %80
  br label %85

85:                                               ; preds = %84, %70
  br label %86

86:                                               ; preds = %85, %64
  %87 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %88 = load i32, i32* @ipr_reset_ioa_job, align 4
  %89 = load i32, i32* @ipr_timeout, align 4
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @ipr_do_req(%struct.ipr_cmnd* %87, i32 %88, i32 %89, i64 %90)
  %92 = load i32, i32* @IPR_RC_JOB_RETURN, align 4
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* @ipr_reset_ucode_download, align 4
  %94 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %95 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %100

96:                                               ; preds = %27, %23
  %97 = load i32, i32* @ipr_reset_alert, align 4
  %98 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %99 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %96, %86
  br label %101

101:                                              ; preds = %100, %19
  %102 = load i32, i32* @LEAVE, align 4
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ipr_do_req(%struct.ipr_cmnd*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
