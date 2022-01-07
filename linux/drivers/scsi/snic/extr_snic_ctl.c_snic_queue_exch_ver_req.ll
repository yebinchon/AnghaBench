; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_ctl.c_snic_queue_exch_ver_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_ctl.c_snic_queue_exch_ver_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.snic_req_info = type { i32 }
%struct.snic_host_req = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8* }

@.str = private unnamed_addr constant [27 x i8] c"Exch Ver Req Preparing...\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Queuing Exch Ver Req failed, err = %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SNIC_REQ_EXCH_VER = common dso_local global i32 0, align 4
@SCSI_NO_TAG = common dso_local global i32 0, align 4
@SNIC_DRV_VERSION = common dso_local global i32 0, align 4
@SNIC_OS_LINUX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Exch Ver Req is issued. ret = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snic_queue_exch_ver_req(%struct.snic* %0) #0 {
  %2 = alloca %struct.snic*, align 8
  %3 = alloca %struct.snic_req_info*, align 8
  %4 = alloca %struct.snic_host_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snic* %0, %struct.snic** %2, align 8
  store %struct.snic_req_info* null, %struct.snic_req_info** %3, align 8
  store %struct.snic_host_req* null, %struct.snic_host_req** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.snic*, %struct.snic** %2, align 8
  %8 = getelementptr inbounds %struct.snic, %struct.snic* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i32, i8*, ...) @SNIC_HOST_INFO(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.snic*, %struct.snic** %2, align 8
  %12 = call %struct.snic_req_info* @snic_req_init(%struct.snic* %11, i32 0)
  store %struct.snic_req_info* %12, %struct.snic_req_info** %3, align 8
  %13 = load %struct.snic_req_info*, %struct.snic_req_info** %3, align 8
  %14 = icmp ne %struct.snic_req_info* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load %struct.snic*, %struct.snic** %2, align 8
  %17 = getelementptr inbounds %struct.snic, %struct.snic* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @SNIC_HOST_ERR(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %74

23:                                               ; preds = %1
  %24 = load %struct.snic_req_info*, %struct.snic_req_info** %3, align 8
  %25 = call %struct.snic_host_req* @rqi_to_req(%struct.snic_req_info* %24)
  store %struct.snic_host_req* %25, %struct.snic_host_req** %4, align 8
  %26 = load %struct.snic_host_req*, %struct.snic_host_req** %4, align 8
  %27 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %26, i32 0, i32 1
  %28 = load i32, i32* @SNIC_REQ_EXCH_VER, align 4
  %29 = load i32, i32* @SCSI_NO_TAG, align 4
  %30 = load %struct.snic*, %struct.snic** %2, align 8
  %31 = getelementptr inbounds %struct.snic, %struct.snic* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.snic_req_info*, %struct.snic_req_info** %3, align 8
  %35 = ptrtoint %struct.snic_req_info* %34 to i32
  %36 = call i32 @snic_io_hdr_enc(i32* %27, i32 %28, i32 0, i32 %29, i32 %33, i32 0, i32 %35)
  %37 = load i32, i32* @SNIC_DRV_VERSION, align 4
  %38 = call i32 @snic_ver_enc(i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i8* @cpu_to_le32(i32 %39)
  %41 = load %struct.snic_host_req*, %struct.snic_host_req** %4, align 8
  %42 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i8* %40, i8** %44, align 8
  %45 = load i32, i32* @SNIC_OS_LINUX, align 4
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = load %struct.snic_host_req*, %struct.snic_host_req** %4, align 8
  %48 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i8* %46, i8** %50, align 8
  %51 = load %struct.snic*, %struct.snic** %2, align 8
  %52 = load %struct.snic_req_info*, %struct.snic_req_info** %3, align 8
  %53 = call i32 @snic_handle_untagged_req(%struct.snic* %51, %struct.snic_req_info* %52)
  %54 = load %struct.snic*, %struct.snic** %2, align 8
  %55 = load %struct.snic_host_req*, %struct.snic_host_req** %4, align 8
  %56 = call i32 @snic_queue_wq_desc(%struct.snic* %54, %struct.snic_host_req* %55, i32 24)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %23
  %60 = load %struct.snic*, %struct.snic** %2, align 8
  %61 = load %struct.snic_req_info*, %struct.snic_req_info** %3, align 8
  %62 = call i32 @snic_release_untagged_req(%struct.snic* %60, %struct.snic_req_info* %61)
  %63 = load %struct.snic*, %struct.snic** %2, align 8
  %64 = getelementptr inbounds %struct.snic, %struct.snic* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @SNIC_HOST_ERR(i32 %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %74

68:                                               ; preds = %23
  %69 = load %struct.snic*, %struct.snic** %2, align 8
  %70 = getelementptr inbounds %struct.snic, %struct.snic* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 (i32, i8*, ...) @SNIC_HOST_INFO(i32 %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %68, %59, %15
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @SNIC_HOST_INFO(i32, i8*, ...) #1

declare dso_local %struct.snic_req_info* @snic_req_init(%struct.snic*, i32) #1

declare dso_local i32 @SNIC_HOST_ERR(i32, i8*, i32) #1

declare dso_local %struct.snic_host_req* @rqi_to_req(%struct.snic_req_info*) #1

declare dso_local i32 @snic_io_hdr_enc(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snic_ver_enc(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @snic_handle_untagged_req(%struct.snic*, %struct.snic_req_info*) #1

declare dso_local i32 @snic_queue_wq_desc(%struct.snic*, %struct.snic_host_req*, i32) #1

declare dso_local i32 @snic_release_untagged_req(%struct.snic*, %struct.snic_req_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
