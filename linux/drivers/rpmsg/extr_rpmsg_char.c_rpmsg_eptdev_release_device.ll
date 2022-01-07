; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_char.c_rpmsg_eptdev_release_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_char.c_rpmsg_eptdev_release_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rpmsg_eptdev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@rpmsg_ept_ida = common dso_local global i32 0, align 4
@rpmsg_minor_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @rpmsg_eptdev_release_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpmsg_eptdev_release_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.rpmsg_eptdev*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.rpmsg_eptdev* @dev_to_eptdev(%struct.device* %4)
  store %struct.rpmsg_eptdev* %5, %struct.rpmsg_eptdev** %3, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ida_simple_remove(i32* @rpmsg_ept_ida, i32 %8)
  %10 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %3, align 8
  %11 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @MINOR(i32 %13)
  %15 = call i32 @ida_simple_remove(i32* @rpmsg_minor_ida, i32 %14)
  %16 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %3, align 8
  %17 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %16, i32 0, i32 0
  %18 = call i32 @cdev_del(i32* %17)
  %19 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %3, align 8
  %20 = call i32 @kfree(%struct.rpmsg_eptdev* %19)
  ret void
}

declare dso_local %struct.rpmsg_eptdev* @dev_to_eptdev(%struct.device*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @kfree(%struct.rpmsg_eptdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
