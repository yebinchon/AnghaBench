; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_ioctl_check_balloon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_ioctl_check_balloon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vbg_ioctl_check_balloon = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vbg_dev*, %struct.vbg_ioctl_check_balloon*)* @vbg_ioctl_check_balloon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbg_ioctl_check_balloon(%struct.vbg_dev* %0, %struct.vbg_ioctl_check_balloon* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vbg_dev*, align 8
  %5 = alloca %struct.vbg_ioctl_check_balloon*, align 8
  store %struct.vbg_dev* %0, %struct.vbg_dev** %4, align 8
  store %struct.vbg_ioctl_check_balloon* %1, %struct.vbg_ioctl_check_balloon** %5, align 8
  %6 = load %struct.vbg_ioctl_check_balloon*, %struct.vbg_ioctl_check_balloon** %5, align 8
  %7 = getelementptr inbounds %struct.vbg_ioctl_check_balloon, %struct.vbg_ioctl_check_balloon* %6, i32 0, i32 1
  %8 = call i64 @vbg_ioctl_chk(i32* %7, i32 0, i32 8)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.vbg_dev*, %struct.vbg_dev** %4, align 8
  %15 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vbg_ioctl_check_balloon*, %struct.vbg_ioctl_check_balloon** %5, align 8
  %19 = getelementptr inbounds %struct.vbg_ioctl_check_balloon, %struct.vbg_ioctl_check_balloon* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i32 %17, i32* %21, align 4
  %22 = load %struct.vbg_ioctl_check_balloon*, %struct.vbg_ioctl_check_balloon** %5, align 8
  %23 = getelementptr inbounds %struct.vbg_ioctl_check_balloon, %struct.vbg_ioctl_check_balloon* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %13, %10
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @vbg_ioctl_chk(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
