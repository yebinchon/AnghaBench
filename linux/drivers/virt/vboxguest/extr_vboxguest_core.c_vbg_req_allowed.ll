; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_req_allowed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_req_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { i32 }
%struct.vbg_session = type { i32 }
%struct.vmmdev_request_header = type { i32 }
%struct.vmmdev_guest_status = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"Denying userspace vmm report guest cap. call facility %#08x\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Denying userspace vmm call type %#08x\0A\00", align 1
@VMMDEV_REQUESTOR_USER_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"Denying userspace vmm call type %#08x through vboxuser device node\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vbg_dev*, %struct.vbg_session*, %struct.vmmdev_request_header*)* @vbg_req_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbg_req_allowed(%struct.vbg_dev* %0, %struct.vbg_session* %1, %struct.vmmdev_request_header* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vbg_dev*, align 8
  %6 = alloca %struct.vbg_session*, align 8
  %7 = alloca %struct.vmmdev_request_header*, align 8
  %8 = alloca %struct.vmmdev_guest_status*, align 8
  %9 = alloca i32, align 4
  store %struct.vbg_dev* %0, %struct.vbg_dev** %5, align 8
  store %struct.vbg_session* %1, %struct.vbg_session** %6, align 8
  store %struct.vmmdev_request_header* %2, %struct.vmmdev_request_header** %7, align 8
  %10 = load %struct.vmmdev_request_header*, %struct.vmmdev_request_header** %7, align 8
  %11 = getelementptr inbounds %struct.vmmdev_request_header, %struct.vmmdev_request_header* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %32 [
    i32 145, label %13
    i32 143, label %13
    i32 144, label %13
    i32 134, label %13
    i32 128, label %13
    i32 160, label %13
    i32 138, label %13
    i32 163, label %13
    i32 152, label %13
    i32 161, label %13
    i32 141, label %13
    i32 139, label %13
    i32 149, label %13
    i32 153, label %14
    i32 137, label %14
    i32 136, label %14
    i32 154, label %14
    i32 147, label %14
    i32 155, label %14
    i32 135, label %14
    i32 164, label %14
    i32 162, label %14
    i32 140, label %14
    i32 159, label %14
    i32 133, label %14
    i32 156, label %14
    i32 158, label %14
    i32 132, label %14
    i32 131, label %14
    i32 130, label %14
    i32 129, label %14
    i32 157, label %14
    i32 151, label %14
    i32 148, label %14
    i32 146, label %14
    i32 150, label %14
    i32 142, label %15
  ]

13:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  store i32 1, i32* %9, align 4
  br label %39

14:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  store i32 0, i32* %9, align 4
  br label %39

15:                                               ; preds = %3
  %16 = load %struct.vmmdev_request_header*, %struct.vmmdev_request_header** %7, align 8
  %17 = bitcast %struct.vmmdev_request_header* %16 to %struct.vmmdev_guest_status*
  store %struct.vmmdev_guest_status* %17, %struct.vmmdev_guest_status** %8, align 8
  %18 = load %struct.vmmdev_guest_status*, %struct.vmmdev_guest_status** %8, align 8
  %19 = getelementptr inbounds %struct.vmmdev_guest_status, %struct.vmmdev_guest_status* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %30 [
    i32 170, label %21
    i32 167, label %21
    i32 166, label %28
    i32 165, label %29
    i32 168, label %29
    i32 169, label %29
  ]

21:                                               ; preds = %15, %15
  %22 = load %struct.vmmdev_guest_status*, %struct.vmmdev_guest_status** %8, align 8
  %23 = getelementptr inbounds %struct.vmmdev_guest_status, %struct.vmmdev_guest_status* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @vbg_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EPERM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %57

28:                                               ; preds = %15
  store i32 1, i32* %9, align 4
  br label %31

29:                                               ; preds = %15, %15, %15
  br label %30

30:                                               ; preds = %15, %29
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %30, %28
  br label %39

32:                                               ; preds = %3
  %33 = load %struct.vmmdev_request_header*, %struct.vmmdev_request_header** %7, align 8
  %34 = getelementptr inbounds %struct.vmmdev_request_header, %struct.vmmdev_request_header* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @vbg_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %57

39:                                               ; preds = %31, %14, %13
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = load %struct.vbg_session*, %struct.vbg_session** %6, align 8
  %44 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @VMMDEV_REQUESTOR_USER_DEVICE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.vmmdev_request_header*, %struct.vmmdev_request_header** %7, align 8
  %51 = getelementptr inbounds %struct.vmmdev_request_header, %struct.vmmdev_request_header* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @vbg_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EPERM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %57

56:                                               ; preds = %42, %39
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %49, %32, %21
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @vbg_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
