; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_ioctl_vmmrequest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_ioctl_vmmrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { i32 }
%struct.vbg_session = type { i32 }
%struct.vbg_ioctl_hdr = type { i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@VMMDEV_MAX_VMMDEVREQ_SIZE = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@VBG_IOCTL_HDR_TYPE_DEFAULT = common dso_local global i64 0, align 8
@VINF_HGCM_ASYNC_EXECUTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vbg_dev*, %struct.vbg_session*, i8*)* @vbg_ioctl_vmmrequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbg_ioctl_vmmrequest(%struct.vbg_dev* %0, %struct.vbg_session* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vbg_dev*, align 8
  %6 = alloca %struct.vbg_session*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vbg_ioctl_hdr*, align 8
  %9 = alloca i32, align 4
  store %struct.vbg_dev* %0, %struct.vbg_dev** %5, align 8
  store %struct.vbg_session* %1, %struct.vbg_session** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.vbg_ioctl_hdr*
  store %struct.vbg_ioctl_hdr* %11, %struct.vbg_ioctl_hdr** %8, align 8
  %12 = load %struct.vbg_ioctl_hdr*, %struct.vbg_ioctl_hdr** %8, align 8
  %13 = getelementptr inbounds %struct.vbg_ioctl_hdr, %struct.vbg_ioctl_hdr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.vbg_ioctl_hdr*, %struct.vbg_ioctl_hdr** %8, align 8
  %16 = getelementptr inbounds %struct.vbg_ioctl_hdr, %struct.vbg_ioctl_hdr* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %60

22:                                               ; preds = %3
  %23 = load %struct.vbg_ioctl_hdr*, %struct.vbg_ioctl_hdr** %8, align 8
  %24 = getelementptr inbounds %struct.vbg_ioctl_hdr, %struct.vbg_ioctl_hdr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VMMDEV_MAX_VMMDEVREQ_SIZE, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @E2BIG, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %60

31:                                               ; preds = %22
  %32 = load %struct.vbg_ioctl_hdr*, %struct.vbg_ioctl_hdr** %8, align 8
  %33 = getelementptr inbounds %struct.vbg_ioctl_hdr, %struct.vbg_ioctl_hdr* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VBG_IOCTL_HDR_TYPE_DEFAULT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %60

40:                                               ; preds = %31
  %41 = load %struct.vbg_dev*, %struct.vbg_dev** %5, align 8
  %42 = load %struct.vbg_session*, %struct.vbg_session** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @vbg_req_allowed(%struct.vbg_dev* %41, %struct.vbg_session* %42, i8* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %60

49:                                               ; preds = %40
  %50 = load %struct.vbg_dev*, %struct.vbg_dev** %5, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @vbg_req_perform(%struct.vbg_dev* %50, i8* %51)
  %53 = load %struct.vbg_ioctl_hdr*, %struct.vbg_ioctl_hdr** %8, align 8
  %54 = getelementptr inbounds %struct.vbg_ioctl_hdr, %struct.vbg_ioctl_hdr* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @VINF_HGCM_ASYNC_EXECUTE, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @WARN_ON(i32 %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %49, %47, %37, %28, %19
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @vbg_req_allowed(%struct.vbg_dev*, %struct.vbg_session*, i8*) #1

declare dso_local i32 @vbg_req_perform(%struct.vbg_dev*, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
