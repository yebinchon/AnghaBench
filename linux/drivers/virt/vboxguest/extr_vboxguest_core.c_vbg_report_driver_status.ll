; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_report_driver_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_report_driver_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { i32 }
%struct.vmmdev_guest_status = type { i64, i32, i32 }

@VMMDEVREQ_REPORT_GUEST_STATUS = common dso_local global i32 0, align 4
@VBG_KERNEL_REQUEST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VBOXGUEST_FACILITY_TYPE_VBOXGUEST_DRIVER = common dso_local global i32 0, align 4
@VBOXGUEST_FACILITY_STATUS_ACTIVE = common dso_local global i32 0, align 4
@VBOXGUEST_FACILITY_STATUS_INACTIVE = common dso_local global i32 0, align 4
@VERR_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@VINF_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vbg_dev*, i32)* @vbg_report_driver_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbg_report_driver_status(%struct.vbg_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vbg_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmmdev_guest_status*, align 8
  %7 = alloca i32, align 4
  store %struct.vbg_dev* %0, %struct.vbg_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @VMMDEVREQ_REPORT_GUEST_STATUS, align 4
  %9 = load i32, i32* @VBG_KERNEL_REQUEST, align 4
  %10 = call %struct.vmmdev_guest_status* @vbg_req_alloc(i32 16, i32 %8, i32 %9)
  store %struct.vmmdev_guest_status* %10, %struct.vmmdev_guest_status** %6, align 8
  %11 = load %struct.vmmdev_guest_status*, %struct.vmmdev_guest_status** %6, align 8
  %12 = icmp ne %struct.vmmdev_guest_status* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %46

16:                                               ; preds = %2
  %17 = load i32, i32* @VBOXGUEST_FACILITY_TYPE_VBOXGUEST_DRIVER, align 4
  %18 = load %struct.vmmdev_guest_status*, %struct.vmmdev_guest_status** %6, align 8
  %19 = getelementptr inbounds %struct.vmmdev_guest_status, %struct.vmmdev_guest_status* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @VBOXGUEST_FACILITY_STATUS_ACTIVE, align 4
  %24 = load %struct.vmmdev_guest_status*, %struct.vmmdev_guest_status** %6, align 8
  %25 = getelementptr inbounds %struct.vmmdev_guest_status, %struct.vmmdev_guest_status* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  br label %30

26:                                               ; preds = %16
  %27 = load i32, i32* @VBOXGUEST_FACILITY_STATUS_INACTIVE, align 4
  %28 = load %struct.vmmdev_guest_status*, %struct.vmmdev_guest_status** %6, align 8
  %29 = getelementptr inbounds %struct.vmmdev_guest_status, %struct.vmmdev_guest_status* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = load %struct.vmmdev_guest_status*, %struct.vmmdev_guest_status** %6, align 8
  %32 = getelementptr inbounds %struct.vmmdev_guest_status, %struct.vmmdev_guest_status* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %34 = load %struct.vmmdev_guest_status*, %struct.vmmdev_guest_status** %6, align 8
  %35 = call i32 @vbg_req_perform(%struct.vbg_dev* %33, %struct.vmmdev_guest_status* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @VERR_NOT_IMPLEMENTED, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @VINF_SUCCESS, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %39, %30
  %42 = load %struct.vmmdev_guest_status*, %struct.vmmdev_guest_status** %6, align 8
  %43 = call i32 @vbg_req_free(%struct.vmmdev_guest_status* %42, i32 16)
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @vbg_status_code_to_errno(i32 %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %41, %13
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.vmmdev_guest_status* @vbg_req_alloc(i32, i32, i32) #1

declare dso_local i32 @vbg_req_perform(%struct.vbg_dev*, %struct.vmmdev_guest_status*) #1

declare dso_local i32 @vbg_req_free(%struct.vmmdev_guest_status*, i32) #1

declare dso_local i32 @vbg_status_code_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
