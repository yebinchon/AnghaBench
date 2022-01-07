; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_storvsc_drv.c_storvsc_host_reset_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_storvsc_drv.c_storvsc_host_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.hv_host_device = type { %struct.hv_device* }
%struct.hv_device = type { i32 }
%struct.storvsc_device = type { %struct.storvsc_cmd_request, i32 }
%struct.storvsc_cmd_request = type { i32, %struct.vstor_packet }
%struct.vstor_packet = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@VSTOR_OPERATION_RESET_BUS = common dso_local global i32 0, align 4
@REQUEST_COMPLETION_FLAG = common dso_local global i32 0, align 4
@vmscsi_size_delta = common dso_local global i64 0, align 8
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@TIMEOUT_ERROR = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @storvsc_host_reset_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storvsc_host_reset_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.hv_host_device*, align 8
  %5 = alloca %struct.hv_device*, align 8
  %6 = alloca %struct.storvsc_device*, align 8
  %7 = alloca %struct.storvsc_cmd_request*, align 8
  %8 = alloca %struct.vstor_packet*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.hv_host_device* @shost_priv(i32 %15)
  store %struct.hv_host_device* %16, %struct.hv_host_device** %4, align 8
  %17 = load %struct.hv_host_device*, %struct.hv_host_device** %4, align 8
  %18 = getelementptr inbounds %struct.hv_host_device, %struct.hv_host_device* %17, i32 0, i32 0
  %19 = load %struct.hv_device*, %struct.hv_device** %18, align 8
  store %struct.hv_device* %19, %struct.hv_device** %5, align 8
  %20 = load %struct.hv_device*, %struct.hv_device** %5, align 8
  %21 = call %struct.storvsc_device* @get_out_stor_device(%struct.hv_device* %20)
  store %struct.storvsc_device* %21, %struct.storvsc_device** %6, align 8
  %22 = load %struct.storvsc_device*, %struct.storvsc_device** %6, align 8
  %23 = icmp ne %struct.storvsc_device* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @FAILED, align 4
  store i32 %25, i32* %2, align 4
  br label %76

26:                                               ; preds = %1
  %27 = load %struct.storvsc_device*, %struct.storvsc_device** %6, align 8
  %28 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %27, i32 0, i32 0
  store %struct.storvsc_cmd_request* %28, %struct.storvsc_cmd_request** %7, align 8
  %29 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %7, align 8
  %30 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %29, i32 0, i32 1
  store %struct.vstor_packet* %30, %struct.vstor_packet** %8, align 8
  %31 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %7, align 8
  %32 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %31, i32 0, i32 0
  %33 = call i32 @init_completion(i32* %32)
  %34 = load i32, i32* @VSTOR_OPERATION_RESET_BUS, align 4
  %35 = load %struct.vstor_packet*, %struct.vstor_packet** %8, align 8
  %36 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @REQUEST_COMPLETION_FLAG, align 4
  %38 = load %struct.vstor_packet*, %struct.vstor_packet** %8, align 8
  %39 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.storvsc_device*, %struct.storvsc_device** %6, align 8
  %41 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.vstor_packet*, %struct.vstor_packet** %8, align 8
  %44 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.hv_device*, %struct.hv_device** %5, align 8
  %47 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.vstor_packet*, %struct.vstor_packet** %8, align 8
  %50 = load i64, i64* @vmscsi_size_delta, align 8
  %51 = sub i64 12, %50
  %52 = load %struct.storvsc_device*, %struct.storvsc_device** %6, align 8
  %53 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %52, i32 0, i32 0
  %54 = ptrtoint %struct.storvsc_cmd_request* %53 to i64
  %55 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %56 = load i32, i32* @VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED, align 4
  %57 = call i32 @vmbus_sendpacket(i32 %48, %struct.vstor_packet* %49, i64 %51, i64 %54, i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %26
  %61 = load i32, i32* @FAILED, align 4
  store i32 %61, i32* %2, align 4
  br label %76

62:                                               ; preds = %26
  %63 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %7, align 8
  %64 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %63, i32 0, i32 0
  %65 = load i32, i32* @HZ, align 4
  %66 = mul nsw i32 5, %65
  %67 = call i32 @wait_for_completion_timeout(i32* %64, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* @TIMEOUT_ERROR, align 4
  store i32 %71, i32* %2, align 4
  br label %76

72:                                               ; preds = %62
  %73 = load %struct.storvsc_device*, %struct.storvsc_device** %6, align 8
  %74 = call i32 @storvsc_wait_to_drain(%struct.storvsc_device* %73)
  %75 = load i32, i32* @SUCCESS, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %70, %60, %24
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.hv_host_device* @shost_priv(i32) #1

declare dso_local %struct.storvsc_device* @get_out_stor_device(%struct.hv_device*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.vstor_packet*, i64, i64, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @storvsc_wait_to_drain(%struct.storvsc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
