; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_eh_abort_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_eh_abort_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i64* }
%struct.zfcp_adapter = type { i32, i32, i32 }
%struct.zfcp_fsf_req = type { i32, i32, i32* }

@SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"abrt_or\00", align 1
@FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"abrt_wt\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"abrt_bl\00", align 1
@ZFCP_STATUS_COMMON_RUNNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"abrt_ru\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"abrt_ar\00", align 1
@ZFCP_STATUS_FSFREQ_ABORTSUCCEEDED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"abrt_ok\00", align 1
@ZFCP_STATUS_FSFREQ_ABORTNOTNEEDED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"abrt_nn\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"abrt_fa\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @zfcp_scsi_eh_abort_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_scsi_eh_abort_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.zfcp_adapter*, align 8
  %6 = alloca %struct.zfcp_fsf_req*, align 8
  %7 = alloca %struct.zfcp_fsf_req*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %17, align 8
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %4, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.zfcp_adapter*
  store %struct.zfcp_adapter* %24, %struct.zfcp_adapter** %5, align 8
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  %28 = load i32, i32* @SUCCESS, align 4
  store i32 %28, i32* %10, align 4
  store i32 3, i32* %12, align 4
  %29 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %30 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %29, i32 0, i32 1
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @write_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %34 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %9, align 8
  %37 = call %struct.zfcp_fsf_req* @zfcp_reqlist_find(i32 %35, i64 %36)
  store %struct.zfcp_fsf_req* %37, %struct.zfcp_fsf_req** %6, align 8
  %38 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %39 = icmp ne %struct.zfcp_fsf_req* %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %1
  %41 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %42 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %41, i32 0, i32 1
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @write_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %46 = call i32 @zfcp_dbf_scsi_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %45, %struct.zfcp_fsf_req* null)
  %47 = load i32, i32* @FAILED, align 4
  store i32 %47, i32* %2, align 4
  br label %127

48:                                               ; preds = %1
  %49 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %50 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  %51 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %52 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %51, i32 0, i32 1
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @write_unlock_irqrestore(i32* %52, i64 %53)
  br label %55

55:                                               ; preds = %89, %48
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %12, align 4
  %58 = icmp ne i32 %56, 0
  br i1 %58, label %59, label %90

59:                                               ; preds = %55
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %61 = call %struct.zfcp_fsf_req* @zfcp_fsf_abort_fcp_cmnd(%struct.scsi_cmnd* %60)
  store %struct.zfcp_fsf_req* %61, %struct.zfcp_fsf_req** %7, align 8
  %62 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %63 = icmp ne %struct.zfcp_fsf_req* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %90

65:                                               ; preds = %59
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %67 = call i32 @zfcp_dbf_scsi_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.scsi_cmnd* %66, %struct.zfcp_fsf_req* null)
  %68 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %69 = call i32 @zfcp_erp_wait(%struct.zfcp_adapter* %68)
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %71 = call i32 @fc_block_scsi_eh(%struct.scsi_cmnd* %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %76 = call i32 @zfcp_dbf_scsi_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.scsi_cmnd* %75, %struct.zfcp_fsf_req* null)
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %2, align 4
  br label %127

78:                                               ; preds = %65
  %79 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %80 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %79, i32 0, i32 0
  %81 = call i32 @atomic_read(i32* %80)
  %82 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %78
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %87 = call i32 @zfcp_dbf_scsi_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.scsi_cmnd* %86, %struct.zfcp_fsf_req* null)
  %88 = load i32, i32* @SUCCESS, align 4
  store i32 %88, i32* %2, align 4
  br label %127

89:                                               ; preds = %78
  br label %55

90:                                               ; preds = %64, %55
  %91 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %92 = icmp ne %struct.zfcp_fsf_req* %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %95 = call i32 @zfcp_dbf_scsi_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.scsi_cmnd* %94, %struct.zfcp_fsf_req* null)
  %96 = load i32, i32* @FAILED, align 4
  store i32 %96, i32* %2, align 4
  br label %127

97:                                               ; preds = %90
  %98 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %99 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %98, i32 0, i32 1
  %100 = call i32 @wait_for_completion(i32* %99)
  %101 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %102 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @ZFCP_STATUS_FSFREQ_ABORTSUCCEEDED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  br label %119

108:                                              ; preds = %97
  %109 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %110 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @ZFCP_STATUS_FSFREQ_ABORTNOTNEEDED, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %13, align 8
  br label %118

116:                                              ; preds = %108
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %13, align 8
  %117 = load i32, i32* @FAILED, align 4
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %116, %115
  br label %119

119:                                              ; preds = %118, %107
  %120 = load i8*, i8** %13, align 8
  %121 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %122 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %123 = call i32 @zfcp_dbf_scsi_abort(i8* %120, %struct.scsi_cmnd* %121, %struct.zfcp_fsf_req* %122)
  %124 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %125 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %124)
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %119, %93, %85, %74, %40
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_reqlist_find(i32, i64) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @zfcp_dbf_scsi_abort(i8*, %struct.scsi_cmnd*, %struct.zfcp_fsf_req*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_abort_fcp_cmnd(%struct.scsi_cmnd*) #1

declare dso_local i32 @zfcp_erp_wait(%struct.zfcp_adapter*) #1

declare dso_local i32 @fc_block_scsi_eh(%struct.scsi_cmnd*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
