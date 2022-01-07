; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_fcp_cmnd_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_fcp_cmnd_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.scsi_cmnd* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.fcp_resp_with_ext }
%struct.fcp_resp_with_ext = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)*, i32*, i32 }

@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@DID_TRANSPORT_DISRUPTED = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@FSF_FCP_RSP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_fcp_cmnd_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_fcp_cmnd_handler(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.fcp_resp_with_ext*, align 8
  %5 = alloca i64, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %6 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %7 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %6, i32 0, i32 1
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @read_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %13 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %12, i32 0, i32 3
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  store %struct.scsi_cmnd* %14, %struct.scsi_cmnd** %3, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %16 = icmp ne %struct.scsi_cmnd* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %23 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %22, i32 0, i32 1
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @read_unlock_irqrestore(i32* %25, i64 %26)
  br label %101

28:                                               ; preds = %1
  %29 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @zfcp_fsf_fcp_handler_common(%struct.zfcp_fsf_req* %29, i32 %32)
  %34 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %35 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %38 = and i32 %36, %37
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %43 = load i32, i32* @DID_TRANSPORT_DISRUPTED, align 4
  %44 = call i32 @set_host_byte(%struct.scsi_cmnd* %42, i32 %43)
  br label %81

45:                                               ; preds = %28
  %46 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %47 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %46, i32 0, i32 2
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %65 [
    i32 130, label %52
    i32 129, label %52
    i32 131, label %56
    i32 132, label %59
    i32 128, label %62
  ]

52:                                               ; preds = %45, %45
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %54 = load i32, i32* @DID_ERROR, align 4
  %55 = call i32 @set_host_byte(%struct.scsi_cmnd* %53, i32 %54)
  br label %81

56:                                               ; preds = %45
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %58 = call i32 @zfcp_scsi_dif_sense_error(%struct.scsi_cmnd* %57, i32 1)
  br label %81

59:                                               ; preds = %45
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %61 = call i32 @zfcp_scsi_dif_sense_error(%struct.scsi_cmnd* %60, i32 2)
  br label %81

62:                                               ; preds = %45
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %64 = call i32 @zfcp_scsi_dif_sense_error(%struct.scsi_cmnd* %63, i32 3)
  br label %81

65:                                               ; preds = %45
  %66 = load i32, i32* @FSF_FCP_RSP_SIZE, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ugt i64 4, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @BUILD_BUG_ON(i32 %69)
  %71 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %72 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %71, i32 0, i32 2
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store %struct.fcp_resp_with_ext* %77, %struct.fcp_resp_with_ext** %4, align 8
  %78 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %4, align 8
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %80 = call i32 @zfcp_fc_eval_fcp_rsp(%struct.fcp_resp_with_ext* %78, %struct.scsi_cmnd* %79)
  br label %81

81:                                               ; preds = %65, %62, %59, %56, %52, %41
  %82 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %84 = call i32 @zfcp_fsf_req_trace(%struct.zfcp_fsf_req* %82, %struct.scsi_cmnd* %83)
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %86 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %87 = call i32 @zfcp_dbf_scsi_result(%struct.scsi_cmnd* %85, %struct.zfcp_fsf_req* %86)
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %89 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %88, i32 0, i32 1
  store i32* null, i32** %89, align 8
  %90 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %91 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %90, i32 0, i32 0
  %92 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %91, align 8
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %94 = call i32 %92(%struct.scsi_cmnd* %93)
  %95 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %96 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %95, i32 0, i32 1
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i64, i64* %5, align 8
  %100 = call i32 @read_unlock_irqrestore(i32* %98, i64 %99)
  br label %101

101:                                              ; preds = %81, %21
  ret void
}

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @zfcp_fsf_fcp_handler_common(%struct.zfcp_fsf_req*, i32) #1

declare dso_local i32 @set_host_byte(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @zfcp_scsi_dif_sense_error(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @zfcp_fc_eval_fcp_rsp(%struct.fcp_resp_with_ext*, %struct.scsi_cmnd*) #1

declare dso_local i32 @zfcp_fsf_req_trace(%struct.zfcp_fsf_req*, %struct.scsi_cmnd*) #1

declare dso_local i32 @zfcp_dbf_scsi_result(%struct.scsi_cmnd*, %struct.zfcp_fsf_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
