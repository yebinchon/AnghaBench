; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_storvsc_drv.c_storvsc_execute_vstor_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_storvsc_drv.c_storvsc_execute_vstor_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.storvsc_cmd_request = type { i32, %struct.vstor_packet }
%struct.vstor_packet = type { i64, i64, i32 }

@REQUEST_COMPLETION_FLAG = common dso_local global i32 0, align 4
@vmscsi_size_delta = common dso_local global i64 0, align 8
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@VSTOR_OPERATION_COMPLETE_IO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*, %struct.storvsc_cmd_request*, i32)* @storvsc_execute_vstor_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storvsc_execute_vstor_op(%struct.hv_device* %0, %struct.storvsc_cmd_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hv_device*, align 8
  %6 = alloca %struct.storvsc_cmd_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vstor_packet*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %5, align 8
  store %struct.storvsc_cmd_request* %1, %struct.storvsc_cmd_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %6, align 8
  %12 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %11, i32 0, i32 1
  store %struct.vstor_packet* %12, %struct.vstor_packet** %8, align 8
  %13 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %6, align 8
  %14 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %13, i32 0, i32 0
  %15 = call i32 @init_completion(i32* %14)
  %16 = load i32, i32* @REQUEST_COMPLETION_FLAG, align 4
  %17 = load %struct.vstor_packet*, %struct.vstor_packet** %8, align 8
  %18 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.hv_device*, %struct.hv_device** %5, align 8
  %20 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vstor_packet*, %struct.vstor_packet** %8, align 8
  %23 = load i64, i64* @vmscsi_size_delta, align 8
  %24 = sub i64 24, %23
  %25 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %6, align 8
  %26 = ptrtoint %struct.storvsc_cmd_request* %25 to i64
  %27 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %28 = load i32, i32* @VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED, align 4
  %29 = call i32 @vmbus_sendpacket(i32 %21, %struct.vstor_packet* %22, i64 %24, i64 %26, i32 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %66

34:                                               ; preds = %3
  %35 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %6, align 8
  %36 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %35, i32 0, i32 0
  %37 = load i32, i32* @HZ, align 4
  %38 = mul nsw i32 5, %37
  %39 = call i32 @wait_for_completion_timeout(i32* %36, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %66

45:                                               ; preds = %34
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %66

50:                                               ; preds = %45
  %51 = load %struct.vstor_packet*, %struct.vstor_packet** %8, align 8
  %52 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @VSTOR_OPERATION_COMPLETE_IO, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = load %struct.vstor_packet*, %struct.vstor_packet** %8, align 8
  %58 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %50
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %61, %48, %42, %32
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.vstor_packet*, i64, i64, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
