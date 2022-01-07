; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_ioctl_change_guest_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_ioctl_change_guest_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { i32 }
%struct.vbg_session = type { i32 }
%struct.vbg_ioctl_set_guest_caps = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VMMDEV_EVENT_VALID_EVENT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vbg_dev*, %struct.vbg_session*, %struct.vbg_ioctl_set_guest_caps*)* @vbg_ioctl_change_guest_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbg_ioctl_change_guest_capabilities(%struct.vbg_dev* %0, %struct.vbg_session* %1, %struct.vbg_ioctl_set_guest_caps* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vbg_dev*, align 8
  %6 = alloca %struct.vbg_session*, align 8
  %7 = alloca %struct.vbg_ioctl_set_guest_caps*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vbg_dev* %0, %struct.vbg_dev** %5, align 8
  store %struct.vbg_session* %1, %struct.vbg_session** %6, align 8
  store %struct.vbg_ioctl_set_guest_caps* %2, %struct.vbg_ioctl_set_guest_caps** %7, align 8
  %11 = load %struct.vbg_ioctl_set_guest_caps*, %struct.vbg_ioctl_set_guest_caps** %7, align 8
  %12 = getelementptr inbounds %struct.vbg_ioctl_set_guest_caps, %struct.vbg_ioctl_set_guest_caps* %11, i32 0, i32 1
  %13 = call i64 @vbg_ioctl_chk(i32* %12, i32 8, i32 8)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %64

18:                                               ; preds = %3
  %19 = load %struct.vbg_ioctl_set_guest_caps*, %struct.vbg_ioctl_set_guest_caps** %7, align 8
  %20 = getelementptr inbounds %struct.vbg_ioctl_set_guest_caps, %struct.vbg_ioctl_set_guest_caps* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.vbg_ioctl_set_guest_caps*, %struct.vbg_ioctl_set_guest_caps** %7, align 8
  %25 = getelementptr inbounds %struct.vbg_ioctl_set_guest_caps, %struct.vbg_ioctl_set_guest_caps* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @VMMDEV_EVENT_VALID_EVENT_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %18
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %64

39:                                               ; preds = %18
  %40 = load %struct.vbg_dev*, %struct.vbg_dev** %5, align 8
  %41 = load %struct.vbg_session*, %struct.vbg_session** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @vbg_set_session_capabilities(%struct.vbg_dev* %40, %struct.vbg_session* %41, i32 %42, i32 %43, i32 0)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %64

49:                                               ; preds = %39
  %50 = load %struct.vbg_session*, %struct.vbg_session** %6, align 8
  %51 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vbg_ioctl_set_guest_caps*, %struct.vbg_ioctl_set_guest_caps** %7, align 8
  %54 = getelementptr inbounds %struct.vbg_ioctl_set_guest_caps, %struct.vbg_ioctl_set_guest_caps* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  %57 = load %struct.vbg_dev*, %struct.vbg_dev** %5, align 8
  %58 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.vbg_ioctl_set_guest_caps*, %struct.vbg_ioctl_set_guest_caps** %7, align 8
  %61 = getelementptr inbounds %struct.vbg_ioctl_set_guest_caps, %struct.vbg_ioctl_set_guest_caps* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 4
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %49, %47, %36, %15
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @vbg_ioctl_chk(i32*, i32, i32) #1

declare dso_local i32 @vbg_set_session_capabilities(%struct.vbg_dev*, %struct.vbg_session*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
