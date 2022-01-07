; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_queue_itmf_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_queue_itmf_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.snic_host_req = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.snic_req_info = type { i32, i32 }
%struct.scsi_lun = type { i32 }

@.str = private unnamed_addr constant [77 x i8] c"qitmf:Queuing ITMF(%d) Req sc %p, rqi %p, req_id %d tag %d Failed, ret = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"qitmf:Queuing ITMF(%d) Req sc %p, rqi %p, req_id %d, tag %d (req_id)- Success.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snic*, %struct.snic_host_req*, %struct.scsi_cmnd*, i32, i32)* @snic_queue_itmf_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snic_queue_itmf_req(%struct.snic* %0, %struct.snic_host_req* %1, %struct.scsi_cmnd* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snic*, align 8
  %7 = alloca %struct.snic_host_req*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snic_req_info*, align 8
  %12 = alloca %struct.scsi_lun, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snic* %0, %struct.snic** %6, align 8
  store %struct.snic_host_req* %1, %struct.snic_host_req** %7, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.snic_host_req*, %struct.snic_host_req** %7, align 8
  %16 = call %struct.snic_req_info* @req_to_rqi(%struct.snic_host_req* %15)
  store %struct.snic_req_info* %16, %struct.snic_req_info** %11, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %18 = call i32 @snic_cmd_tag(%struct.scsi_cmnd* %17)
  %19 = load %struct.snic_req_info*, %struct.snic_req_info** %11, align 8
  %20 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %18, %21
  store i32 %22, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load %struct.snic_req_info*, %struct.snic_req_info** %11, align 8
  %24 = icmp ne %struct.snic_req_info* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @SNIC_BUG_ON(i32 %26)
  %28 = load %struct.snic_req_info*, %struct.snic_req_info** %11, align 8
  %29 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @SNIC_BUG_ON(i32 %33)
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @int_to_scsilun(i32 %39, %struct.scsi_lun* %12)
  %41 = load %struct.snic_host_req*, %struct.snic_host_req** %7, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.snic*, %struct.snic** %6, align 8
  %44 = getelementptr inbounds %struct.snic, %struct.snic* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.snic_req_info*, %struct.snic_req_info** %11, align 8
  %48 = ptrtoint %struct.snic_req_info* %47 to i32
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.snic_req_info*, %struct.snic_req_info** %11, align 8
  %51 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %12, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @snic_itmf_init(%struct.snic_host_req* %41, i32 %42, i32 %46, i32 %48, i32 0, i32 %49, i32 %52, i32 %54, i32 %55)
  %57 = load %struct.snic*, %struct.snic** %6, align 8
  %58 = load %struct.snic_host_req*, %struct.snic_host_req** %7, align 8
  %59 = call i32 @snic_queue_wq_desc(%struct.snic* %57, %struct.snic_host_req* %58, i32 4)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %5
  %63 = load %struct.snic*, %struct.snic** %6, align 8
  %64 = getelementptr inbounds %struct.snic, %struct.snic* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %68 = load %struct.snic_req_info*, %struct.snic_req_info** %11, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %71 = call i32 @snic_cmd_tag(%struct.scsi_cmnd* %70)
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @SNIC_HOST_ERR(i32 %65, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %66, %struct.scsi_cmnd* %67, %struct.snic_req_info* %68, i32 %69, i32 %71, i32 %72)
  br label %85

74:                                               ; preds = %5
  %75 = load %struct.snic*, %struct.snic** %6, align 8
  %76 = getelementptr inbounds %struct.snic, %struct.snic* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %80 = load %struct.snic_req_info*, %struct.snic_req_info** %11, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %83 = call i32 @snic_cmd_tag(%struct.scsi_cmnd* %82)
  %84 = call i32 @SNIC_SCSI_DBG(i32 %77, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %78, %struct.scsi_cmnd* %79, %struct.snic_req_info* %80, i32 %81, i32 %83)
  br label %85

85:                                               ; preds = %74, %62
  %86 = load i32, i32* %14, align 4
  ret i32 %86
}

declare dso_local %struct.snic_req_info* @req_to_rqi(%struct.snic_host_req*) #1

declare dso_local i32 @snic_cmd_tag(%struct.scsi_cmnd*) #1

declare dso_local i32 @SNIC_BUG_ON(i32) #1

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #1

declare dso_local i32 @snic_itmf_init(%struct.snic_host_req*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snic_queue_wq_desc(%struct.snic*, %struct.snic_host_req*, i32) #1

declare dso_local i32 @SNIC_HOST_ERR(i32, i8*, i32, %struct.scsi_cmnd*, %struct.snic_req_info*, i32, i32, i32) #1

declare dso_local i32 @SNIC_SCSI_DBG(i32, i8*, i32, %struct.scsi_cmnd*, %struct.snic_req_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
