; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_ioctl_change_filter_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_ioctl_change_filter_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { i32 }
%struct.vbg_session = type { i32 }
%struct.vbg_ioctl_change_filter = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VMMDEV_EVENT_VALID_EVENT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vbg_dev*, %struct.vbg_session*, %struct.vbg_ioctl_change_filter*)* @vbg_ioctl_change_filter_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbg_ioctl_change_filter_mask(%struct.vbg_dev* %0, %struct.vbg_session* %1, %struct.vbg_ioctl_change_filter* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vbg_dev*, align 8
  %6 = alloca %struct.vbg_session*, align 8
  %7 = alloca %struct.vbg_ioctl_change_filter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vbg_dev* %0, %struct.vbg_dev** %5, align 8
  store %struct.vbg_session* %1, %struct.vbg_session** %6, align 8
  store %struct.vbg_ioctl_change_filter* %2, %struct.vbg_ioctl_change_filter** %7, align 8
  %10 = load %struct.vbg_ioctl_change_filter*, %struct.vbg_ioctl_change_filter** %7, align 8
  %11 = getelementptr inbounds %struct.vbg_ioctl_change_filter, %struct.vbg_ioctl_change_filter* %10, i32 0, i32 1
  %12 = call i64 @vbg_ioctl_chk(i32* %11, i32 8, i32 0)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %44

17:                                               ; preds = %3
  %18 = load %struct.vbg_ioctl_change_filter*, %struct.vbg_ioctl_change_filter** %7, align 8
  %19 = getelementptr inbounds %struct.vbg_ioctl_change_filter, %struct.vbg_ioctl_change_filter* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.vbg_ioctl_change_filter*, %struct.vbg_ioctl_change_filter** %7, align 8
  %24 = getelementptr inbounds %struct.vbg_ioctl_change_filter, %struct.vbg_ioctl_change_filter* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @VMMDEV_EVENT_VALID_EVENT_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %17
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %44

38:                                               ; preds = %17
  %39 = load %struct.vbg_dev*, %struct.vbg_dev** %5, align 8
  %40 = load %struct.vbg_session*, %struct.vbg_session** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @vbg_set_session_event_filter(%struct.vbg_dev* %39, %struct.vbg_session* %40, i32 %41, i32 %42, i32 0)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %35, %14
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @vbg_ioctl_chk(i32*, i32, i32) #1

declare dso_local i32 @vbg_set_session_event_filter(%struct.vbg_dev*, %struct.vbg_session*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
