; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_issue_tm_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_issue_tm_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { i32, i32 }
%struct.snic_req_info = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.snic_host_req = type { i32 }

@SNIC_FWRESET = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"issu_tmreq: Task mgmt req %d. rqi %p w/ tag %x\0A\00", align 1
@SNIC_ITMF_LUN_RESET = common dso_local global i32 0, align 4
@SCSI_NO_TAG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"issu_tmreq: Queing ITMF(%d) Req, sc %p rqi %p req_id %d tag %x fails err = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"issu_tmreq: Queuing ITMF(%d) Req, sc %p, rqi %p, req_id %d tag %x - Success.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snic*, %struct.snic_req_info*, %struct.scsi_cmnd*, i32)* @snic_issue_tm_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snic_issue_tm_req(%struct.snic* %0, %struct.snic_req_info* %1, %struct.scsi_cmnd* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snic*, align 8
  %7 = alloca %struct.snic_req_info*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.snic_host_req*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snic* %0, %struct.snic** %6, align 8
  store %struct.snic_req_info* %1, %struct.snic_req_info** %7, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.snic_host_req* null, %struct.snic_host_req** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %15 = call i32 @snic_cmd_tag(%struct.scsi_cmnd* %14)
  store i32 %15, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.snic*, %struct.snic** %6, align 8
  %17 = call i64 @snic_get_state(%struct.snic* %16)
  %18 = load i64, i64* @SNIC_FWRESET, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %95

23:                                               ; preds = %4
  %24 = load %struct.snic*, %struct.snic** %6, align 8
  %25 = getelementptr inbounds %struct.snic, %struct.snic* %24, i32 0, i32 0
  %26 = call i32 @atomic_inc(i32* %25)
  %27 = load %struct.snic*, %struct.snic** %6, align 8
  %28 = getelementptr inbounds %struct.snic, %struct.snic* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %32 = bitcast %struct.snic_req_info* %31 to %struct.scsi_cmnd*
  %33 = load i32, i32* %12, align 4
  %34 = call i32 (i32, i8*, i32, %struct.scsi_cmnd*, i32, ...) @SNIC_SCSI_DBG(i32 %29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %30, %struct.scsi_cmnd* %32, i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @SNIC_ITMF_LUN_RESET, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %23
  %39 = load %struct.snic*, %struct.snic** %6, align 8
  %40 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %41 = call %struct.snic_host_req* @snic_dr_req_init(%struct.snic* %39, %struct.snic_req_info* %40)
  store %struct.snic_host_req* %41, %struct.snic_host_req** %10, align 8
  %42 = load i32, i32* @SCSI_NO_TAG, align 4
  store i32 %42, i32* %11, align 4
  br label %48

43:                                               ; preds = %23
  %44 = load %struct.snic*, %struct.snic** %6, align 8
  %45 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %46 = call %struct.snic_host_req* @snic_abort_req_init(%struct.snic* %44, %struct.snic_req_info* %45)
  store %struct.snic_host_req* %46, %struct.snic_host_req** %10, align 8
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.snic_host_req*, %struct.snic_host_req** %10, align 8
  %50 = icmp ne %struct.snic_host_req* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %13, align 4
  br label %65

54:                                               ; preds = %48
  %55 = load %struct.snic*, %struct.snic** %6, align 8
  %56 = load %struct.snic_host_req*, %struct.snic_host_req** %10, align 8
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @snic_queue_itmf_req(%struct.snic* %55, %struct.snic_host_req* %56, %struct.scsi_cmnd* %57, i32 %58, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %65

64:                                               ; preds = %54
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %64, %63, %51
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load %struct.snic*, %struct.snic** %6, align 8
  %70 = getelementptr inbounds %struct.snic, %struct.snic* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %74 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @SNIC_HOST_ERR(i32 %71, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %72, %struct.scsi_cmnd* %73, %struct.snic_req_info* %74, i32 %75, i32 %76, i32 %77)
  br label %90

79:                                               ; preds = %65
  %80 = load %struct.snic*, %struct.snic** %6, align 8
  %81 = getelementptr inbounds %struct.snic, %struct.snic* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %85 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %86 = ptrtoint %struct.snic_req_info* %85 to i32
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 (i32, i8*, i32, %struct.scsi_cmnd*, i32, ...) @SNIC_SCSI_DBG(i32 %82, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i32 %83, %struct.scsi_cmnd* %84, i32 %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %79, %68
  %91 = load %struct.snic*, %struct.snic** %6, align 8
  %92 = getelementptr inbounds %struct.snic, %struct.snic* %91, i32 0, i32 0
  %93 = call i32 @atomic_dec(i32* %92)
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %90, %20
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @snic_cmd_tag(%struct.scsi_cmnd*) #1

declare dso_local i64 @snic_get_state(%struct.snic*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @SNIC_SCSI_DBG(i32, i8*, i32, %struct.scsi_cmnd*, i32, ...) #1

declare dso_local %struct.snic_host_req* @snic_dr_req_init(%struct.snic*, %struct.snic_req_info*) #1

declare dso_local %struct.snic_host_req* @snic_abort_req_init(%struct.snic*, %struct.snic_req_info*) #1

declare dso_local i32 @snic_queue_itmf_req(%struct.snic*, %struct.snic_host_req*, %struct.scsi_cmnd*, i32, i32) #1

declare dso_local i32 @SNIC_HOST_ERR(i32, i8*, i32, %struct.scsi_cmnd*, %struct.snic_req_info*, i32, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
