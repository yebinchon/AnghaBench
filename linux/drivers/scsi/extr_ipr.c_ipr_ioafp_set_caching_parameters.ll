; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_ioafp_set_caching_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_ioafp_set_caching_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { i32, i32, %struct.ipr_ioa_cfg*, %struct.ipr_ioarcb }
%struct.ipr_ioa_cfg = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ipr_inquiry_pageC4 }
%struct.ipr_inquiry_pageC4 = type { i32* }
%struct.ipr_ioarcb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@ENTER = common dso_local global i32 0, align 4
@ipr_ioafp_query_ioa_cfg = common dso_local global i32 0, align 4
@IPR_CAP_SYNC_CACHE = common dso_local global i32 0, align 4
@IPR_IOA_RES_HANDLE = common dso_local global i32 0, align 4
@IPR_IOA_SA_CHANGE_CACHE_PARAMS = common dso_local global i32 0, align 4
@ipr_ioa_service_action_failed = common dso_local global i32 0, align 4
@ipr_reset_ioa_job = common dso_local global i32 0, align 4
@ipr_timeout = common dso_local global i32 0, align 4
@IPR_SET_SUP_DEVICE_TIMEOUT = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@IPR_RC_JOB_RETURN = common dso_local global i32 0, align 4
@IPR_RC_JOB_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_cmnd*)* @ipr_ioafp_set_caching_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_ioafp_set_caching_parameters(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipr_cmnd*, align 8
  %4 = alloca %struct.ipr_ioarcb*, align 8
  %5 = alloca %struct.ipr_ioa_cfg*, align 8
  %6 = alloca %struct.ipr_inquiry_pageC4*, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %3, align 8
  %7 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %8 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %7, i32 0, i32 3
  store %struct.ipr_ioarcb* %8, %struct.ipr_ioarcb** %4, align 8
  %9 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %10 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %9, i32 0, i32 2
  %11 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %10, align 8
  store %struct.ipr_ioa_cfg* %11, %struct.ipr_ioa_cfg** %5, align 8
  %12 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %13 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.ipr_inquiry_pageC4* %15, %struct.ipr_inquiry_pageC4** %6, align 8
  %16 = load i32, i32* @ENTER, align 4
  %17 = load i32, i32* @ipr_ioafp_query_ioa_cfg, align 4
  %18 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %19 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ipr_inquiry_pageC4*, %struct.ipr_inquiry_pageC4** %6, align 8
  %21 = getelementptr inbounds %struct.ipr_inquiry_pageC4, %struct.ipr_inquiry_pageC4* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IPR_CAP_SYNC_CACHE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %1
  %29 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %30 = load i32, i32* @IPR_IOA_RES_HANDLE, align 4
  %31 = call i32 @cpu_to_be32(i32 %30)
  %32 = load i32, i32* @IPR_IOA_SA_CHANGE_CACHE_PARAMS, align 4
  %33 = call i32 @ipr_build_ioa_service_action(%struct.ipr_cmnd* %29, i32 %31, i32 %32)
  %34 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %4, align 8
  %35 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 64, i32* %38, align 4
  %39 = load i32, i32* @ipr_ioa_service_action_failed, align 4
  %40 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %41 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %43 = load i32, i32* @ipr_reset_ioa_job, align 4
  %44 = load i32, i32* @ipr_timeout, align 4
  %45 = load i32, i32* @IPR_SET_SUP_DEVICE_TIMEOUT, align 4
  %46 = call i32 @ipr_do_req(%struct.ipr_cmnd* %42, i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* @LEAVE, align 4
  %48 = load i32, i32* @IPR_RC_JOB_RETURN, align 4
  store i32 %48, i32* %2, align 4
  br label %52

49:                                               ; preds = %1
  %50 = load i32, i32* @LEAVE, align 4
  %51 = load i32, i32* @IPR_RC_JOB_CONTINUE, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %28
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @ipr_build_ioa_service_action(%struct.ipr_cmnd*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ipr_do_req(%struct.ipr_cmnd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
