; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_csmi_ioctl_done_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_csmi_ioctl_done_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_request = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.atto_csmi = type { i32, i32 }
%union.atto_ioctl_csmi = type { %struct.atto_csmi_get_driver_info }
%struct.atto_csmi_get_driver_info = type { i32, i32, i32, i32, i32 }
%struct.atto_csmi_get_scsi_addr = type { i32, i32 }

@esas2r_buffered_ioctl = common dso_local global i64 0, align 8
@ESAS2R_VERSION_STR = common dso_local global i32 0, align 4
@ESAS2R_MAJOR_REV = common dso_local global i32 0, align 4
@ESAS2R_MINOR_REV = common dso_local global i32 0, align 4
@CSMI_STS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, %struct.esas2r_request*, i8*)* @csmi_ioctl_done_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csmi_ioctl_done_callback(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1, i8* %2) #0 {
  %4 = alloca %struct.esas2r_adapter*, align 8
  %5 = alloca %struct.esas2r_request*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.atto_csmi*, align 8
  %8 = alloca %union.atto_ioctl_csmi*, align 8
  %9 = alloca %struct.atto_csmi_get_driver_info*, align 8
  %10 = alloca %struct.atto_csmi_get_scsi_addr*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %4, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.atto_csmi*
  store %struct.atto_csmi* %12, %struct.atto_csmi** %7, align 8
  %13 = load i64, i64* @esas2r_buffered_ioctl, align 8
  %14 = inttoptr i64 %13 to %union.atto_ioctl_csmi*
  store %union.atto_ioctl_csmi* %14, %union.atto_ioctl_csmi** %8, align 8
  %15 = load %struct.atto_csmi*, %struct.atto_csmi** %7, align 8
  %16 = getelementptr inbounds %struct.atto_csmi, %struct.atto_csmi* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %57 [
    i32 129, label %18
    i32 128, label %36
  ]

18:                                               ; preds = %3
  %19 = load %union.atto_ioctl_csmi*, %union.atto_ioctl_csmi** %8, align 8
  %20 = bitcast %union.atto_ioctl_csmi* %19 to %struct.atto_csmi_get_driver_info*
  store %struct.atto_csmi_get_driver_info* %20, %struct.atto_csmi_get_driver_info** %9, align 8
  %21 = load %struct.atto_csmi_get_driver_info*, %struct.atto_csmi_get_driver_info** %9, align 8
  %22 = getelementptr inbounds %struct.atto_csmi_get_driver_info, %struct.atto_csmi_get_driver_info* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ESAS2R_VERSION_STR, align 4
  %25 = call i32 @strcpy(i32 %23, i32 %24)
  %26 = load i32, i32* @ESAS2R_MAJOR_REV, align 4
  %27 = load %struct.atto_csmi_get_driver_info*, %struct.atto_csmi_get_driver_info** %9, align 8
  %28 = getelementptr inbounds %struct.atto_csmi_get_driver_info, %struct.atto_csmi_get_driver_info* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @ESAS2R_MINOR_REV, align 4
  %30 = load %struct.atto_csmi_get_driver_info*, %struct.atto_csmi_get_driver_info** %9, align 8
  %31 = getelementptr inbounds %struct.atto_csmi_get_driver_info, %struct.atto_csmi_get_driver_info* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.atto_csmi_get_driver_info*, %struct.atto_csmi_get_driver_info** %9, align 8
  %33 = getelementptr inbounds %struct.atto_csmi_get_driver_info, %struct.atto_csmi_get_driver_info* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.atto_csmi_get_driver_info*, %struct.atto_csmi_get_driver_info** %9, align 8
  %35 = getelementptr inbounds %struct.atto_csmi_get_driver_info, %struct.atto_csmi_get_driver_info* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  br label %57

36:                                               ; preds = %3
  %37 = load %union.atto_ioctl_csmi*, %union.atto_ioctl_csmi** %8, align 8
  %38 = bitcast %union.atto_ioctl_csmi* %37 to %struct.atto_csmi_get_scsi_addr*
  store %struct.atto_csmi_get_scsi_addr* %38, %struct.atto_csmi_get_scsi_addr** %10, align 8
  %39 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %40 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le32_to_cpu(i32 %44)
  %46 = load i32, i32* @CSMI_STS_SUCCESS, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %36
  %49 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %50 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.atto_csmi_get_scsi_addr*, %struct.atto_csmi_get_scsi_addr** %10, align 8
  %53 = getelementptr inbounds %struct.atto_csmi_get_scsi_addr, %struct.atto_csmi_get_scsi_addr* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.atto_csmi_get_scsi_addr*, %struct.atto_csmi_get_scsi_addr** %10, align 8
  %55 = getelementptr inbounds %struct.atto_csmi_get_scsi_addr, %struct.atto_csmi_get_scsi_addr* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %48, %36
  br label %57

57:                                               ; preds = %3, %56, %18
  %58 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %59 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le32_to_cpu(i32 %63)
  %65 = load %struct.atto_csmi*, %struct.atto_csmi** %7, align 8
  %66 = getelementptr inbounds %struct.atto_csmi, %struct.atto_csmi* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  ret void
}

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
