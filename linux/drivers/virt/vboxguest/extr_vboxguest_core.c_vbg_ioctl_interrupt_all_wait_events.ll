; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_ioctl_interrupt_all_wait_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_ioctl_interrupt_all_wait_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { i32, i32 }
%struct.vbg_session = type { i32 }
%struct.vbg_ioctl_hdr = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vbg_dev*, %struct.vbg_session*, %struct.vbg_ioctl_hdr*)* @vbg_ioctl_interrupt_all_wait_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbg_ioctl_interrupt_all_wait_events(%struct.vbg_dev* %0, %struct.vbg_session* %1, %struct.vbg_ioctl_hdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vbg_dev*, align 8
  %6 = alloca %struct.vbg_session*, align 8
  %7 = alloca %struct.vbg_ioctl_hdr*, align 8
  %8 = alloca i64, align 8
  store %struct.vbg_dev* %0, %struct.vbg_dev** %5, align 8
  store %struct.vbg_session* %1, %struct.vbg_session** %6, align 8
  store %struct.vbg_ioctl_hdr* %2, %struct.vbg_ioctl_hdr** %7, align 8
  %9 = load %struct.vbg_ioctl_hdr*, %struct.vbg_ioctl_hdr** %7, align 8
  %10 = getelementptr inbounds %struct.vbg_ioctl_hdr, %struct.vbg_ioctl_hdr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ne i64 %12, 8
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.vbg_ioctl_hdr*, %struct.vbg_ioctl_hdr** %7, align 8
  %16 = getelementptr inbounds %struct.vbg_ioctl_hdr, %struct.vbg_ioctl_hdr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 8
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %37

23:                                               ; preds = %14
  %24 = load %struct.vbg_dev*, %struct.vbg_dev** %5, align 8
  %25 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.vbg_session*, %struct.vbg_session** %6, align 8
  %29 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.vbg_dev*, %struct.vbg_dev** %5, align 8
  %31 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %30, i32 0, i32 1
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.vbg_dev*, %struct.vbg_dev** %5, align 8
  %35 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %34, i32 0, i32 0
  %36 = call i32 @wake_up(i32* %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %23, %20
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
