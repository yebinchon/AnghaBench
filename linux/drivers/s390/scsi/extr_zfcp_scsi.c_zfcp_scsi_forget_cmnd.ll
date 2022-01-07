; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_forget_cmnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_forget_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.zfcp_scsi_req_filter = type { i64, i64, i64 }
%struct.scsi_cmnd = type { i32 }

@FSF_QTCB_FCP_CMND = common dso_local global i64 0, align 8
@FCP_TMF_LUN_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*, i8*)* @zfcp_scsi_forget_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_scsi_forget_cmnd(%struct.zfcp_fsf_req* %0, i8* %1) #0 {
  %3 = alloca %struct.zfcp_fsf_req*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.zfcp_scsi_req_filter*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.zfcp_scsi_req_filter*
  store %struct.zfcp_scsi_req_filter* %7, %struct.zfcp_scsi_req_filter** %5, align 8
  %8 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %9 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %2
  %13 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %14 = call i64 @zfcp_fsf_req_is_status_read_buffer(%struct.zfcp_fsf_req* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %18 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FSF_QTCB_FCP_CMND, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16, %12, %2
  br label %65

26:                                               ; preds = %16
  %27 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %28 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.zfcp_scsi_req_filter*, %struct.zfcp_scsi_req_filter** %5, align 8
  %34 = getelementptr inbounds %struct.zfcp_scsi_req_filter, %struct.zfcp_scsi_req_filter* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %65

38:                                               ; preds = %26
  %39 = load %struct.zfcp_scsi_req_filter*, %struct.zfcp_scsi_req_filter** %5, align 8
  %40 = getelementptr inbounds %struct.zfcp_scsi_req_filter, %struct.zfcp_scsi_req_filter* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FCP_TMF_LUN_RESET, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %46 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.zfcp_scsi_req_filter*, %struct.zfcp_scsi_req_filter** %5, align 8
  %52 = getelementptr inbounds %struct.zfcp_scsi_req_filter, %struct.zfcp_scsi_req_filter* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %65

56:                                               ; preds = %44, %38
  %57 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %58 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = bitcast i32* %59 to %struct.scsi_cmnd*
  %61 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %62 = call i32 @zfcp_dbf_scsi_nullcmnd(%struct.scsi_cmnd* %60, %struct.zfcp_fsf_req* %61)
  %63 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %64 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %56, %55, %37, %25
  ret void
}

declare dso_local i64 @zfcp_fsf_req_is_status_read_buffer(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_dbf_scsi_nullcmnd(%struct.scsi_cmnd*, %struct.zfcp_fsf_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
