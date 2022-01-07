; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_storvsc_drv.c_storvsc_handle_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_storvsc_drv.c_storvsc_handle_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmscsi_request = type { i32, i32, i32 }
%struct.scsi_cmnd = type { i32* }
%struct.Scsi_Host = type { i32 }
%struct.storvsc_scan_work = type { i32, i32, i32, %struct.Scsi_Host* }
%struct.work_struct = type opaque
%struct.hv_host_device = type { i32 }
%struct.work_struct.2 = type opaque
%struct.work_struct.0 = type opaque
%struct.work_struct.1 = type opaque

@SRB_STATUS_AUTOSENSE_VALID = common dso_local global i32 0, align 4
@DID_PASSTHROUGH = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@DID_REQUEUE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DID_TARGET_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmscsi_request*, %struct.scsi_cmnd*, %struct.Scsi_Host*, i32, i32)* @storvsc_handle_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storvsc_handle_error(%struct.vmscsi_request* %0, %struct.scsi_cmnd* %1, %struct.Scsi_Host* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vmscsi_request*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.storvsc_scan_work*, align 8
  %12 = alloca void (%struct.work_struct*)*, align 8
  %13 = alloca %struct.hv_host_device*, align 8
  %14 = alloca i32, align 4
  store %struct.vmscsi_request* %0, %struct.vmscsi_request** %6, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %7, align 8
  store %struct.Scsi_Host* %2, %struct.Scsi_Host** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %16 = call %struct.hv_host_device* @shost_priv(%struct.Scsi_Host* %15)
  store %struct.hv_host_device* %16, %struct.hv_host_device** %13, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.vmscsi_request*, %struct.vmscsi_request** %6, align 8
  %18 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @SRB_STATUS(i32 %19)
  switch i32 %20, label %67 [
    i32 130, label %21
    i32 129, label %45
    i32 131, label %49
  ]

21:                                               ; preds = %5
  %22 = load %struct.vmscsi_request*, %struct.vmscsi_request** %6, align 8
  %23 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SRB_STATUS_AUTOSENSE_VALID, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %67

29:                                               ; preds = %21
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %40 [
    i32 132, label %35
    i32 133, label %35
    i32 128, label %39
  ]

35:                                               ; preds = %29, %29
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %37 = load i32, i32* @DID_PASSTHROUGH, align 4
  %38 = call i32 @set_host_byte(%struct.scsi_cmnd* %36, i32 %37)
  br label %44

39:                                               ; preds = %29
  br label %44

40:                                               ; preds = %29
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %42 = load i32, i32* @DID_ERROR, align 4
  %43 = call i32 @set_host_byte(%struct.scsi_cmnd* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %39, %35
  br label %67

45:                                               ; preds = %5
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %47 = load i32, i32* @DID_NO_CONNECT, align 4
  %48 = call i32 @set_host_byte(%struct.scsi_cmnd* %46, i32 %47)
  store i32 1, i32* %14, align 4
  store void (%struct.work_struct*)* bitcast (void (%struct.work_struct.0*)* @storvsc_remove_lun to void (%struct.work_struct*)*), void (%struct.work_struct*)** %12, align 8
  br label %67

49:                                               ; preds = %5
  %50 = load %struct.vmscsi_request*, %struct.vmscsi_request** %6, align 8
  %51 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SRB_STATUS_AUTOSENSE_VALID, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 42
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 9
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  store i32 1, i32* %14, align 4
  store void (%struct.work_struct*)* bitcast (void (%struct.work_struct.1*)* @storvsc_device_scan to void (%struct.work_struct*)*), void (%struct.work_struct*)** %12, align 8
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %64 = load i32, i32* @DID_REQUEUE, align 4
  %65 = call i32 @set_host_byte(%struct.scsi_cmnd* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %59, %56, %49
  br label %67

67:                                               ; preds = %5, %66, %45, %44, %28
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  br label %105

71:                                               ; preds = %67
  %72 = load i32, i32* @GFP_ATOMIC, align 4
  %73 = call %struct.storvsc_scan_work* @kmalloc(i32 24, i32 %72)
  store %struct.storvsc_scan_work* %73, %struct.storvsc_scan_work** %11, align 8
  %74 = load %struct.storvsc_scan_work*, %struct.storvsc_scan_work** %11, align 8
  %75 = icmp ne %struct.storvsc_scan_work* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %78 = load i32, i32* @DID_TARGET_FAILURE, align 4
  %79 = call i32 @set_host_byte(%struct.scsi_cmnd* %77, i32 %78)
  br label %105

80:                                               ; preds = %71
  %81 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %82 = load %struct.storvsc_scan_work*, %struct.storvsc_scan_work** %11, align 8
  %83 = getelementptr inbounds %struct.storvsc_scan_work, %struct.storvsc_scan_work* %82, i32 0, i32 3
  store %struct.Scsi_Host* %81, %struct.Scsi_Host** %83, align 8
  %84 = load %struct.vmscsi_request*, %struct.vmscsi_request** %6, align 8
  %85 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.storvsc_scan_work*, %struct.storvsc_scan_work** %11, align 8
  %88 = getelementptr inbounds %struct.storvsc_scan_work, %struct.storvsc_scan_work* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.vmscsi_request*, %struct.vmscsi_request** %6, align 8
  %90 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.storvsc_scan_work*, %struct.storvsc_scan_work** %11, align 8
  %93 = getelementptr inbounds %struct.storvsc_scan_work, %struct.storvsc_scan_work* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.storvsc_scan_work*, %struct.storvsc_scan_work** %11, align 8
  %95 = getelementptr inbounds %struct.storvsc_scan_work, %struct.storvsc_scan_work* %94, i32 0, i32 0
  %96 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %12, align 8
  %97 = bitcast void (%struct.work_struct*)* %96 to void (%struct.work_struct.2*)*
  %98 = call i32 @INIT_WORK(i32* %95, void (%struct.work_struct.2*)* %97)
  %99 = load %struct.hv_host_device*, %struct.hv_host_device** %13, align 8
  %100 = getelementptr inbounds %struct.hv_host_device, %struct.hv_host_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.storvsc_scan_work*, %struct.storvsc_scan_work** %11, align 8
  %103 = getelementptr inbounds %struct.storvsc_scan_work, %struct.storvsc_scan_work* %102, i32 0, i32 0
  %104 = call i32 @queue_work(i32 %101, i32* %103)
  br label %105

105:                                              ; preds = %80, %76, %70
  ret void
}

declare dso_local %struct.hv_host_device* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @SRB_STATUS(i32) #1

declare dso_local i32 @set_host_byte(%struct.scsi_cmnd*, i32) #1

declare dso_local void @storvsc_remove_lun(%struct.work_struct.0*) #1

declare dso_local void @storvsc_device_scan(%struct.work_struct.1*) #1

declare dso_local %struct.storvsc_scan_work* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, void (%struct.work_struct.2*)*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
