; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_char.c_rpmsg_chrdev_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_char.c_rpmsg_chrdev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_device = type { i32 }
%struct.rpmsg_ctrldev = type { i32 }

@rpmsg_eptdev_destroy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to nuke endpoints: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpmsg_device*)* @rpmsg_chrdev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpmsg_chrdev_remove(%struct.rpmsg_device* %0) #0 {
  %2 = alloca %struct.rpmsg_device*, align 8
  %3 = alloca %struct.rpmsg_ctrldev*, align 8
  %4 = alloca i32, align 4
  store %struct.rpmsg_device* %0, %struct.rpmsg_device** %2, align 8
  %5 = load %struct.rpmsg_device*, %struct.rpmsg_device** %2, align 8
  %6 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %5, i32 0, i32 0
  %7 = call %struct.rpmsg_ctrldev* @dev_get_drvdata(i32* %6)
  store %struct.rpmsg_ctrldev* %7, %struct.rpmsg_ctrldev** %3, align 8
  %8 = load %struct.rpmsg_ctrldev*, %struct.rpmsg_ctrldev** %3, align 8
  %9 = getelementptr inbounds %struct.rpmsg_ctrldev, %struct.rpmsg_ctrldev* %8, i32 0, i32 0
  %10 = load i32, i32* @rpmsg_eptdev_destroy, align 4
  %11 = call i32 @device_for_each_child(i32* %9, i32* null, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.rpmsg_device*, %struct.rpmsg_device** %2, align 8
  %16 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %15, i32 0, i32 0
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @dev_warn(i32* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.rpmsg_ctrldev*, %struct.rpmsg_ctrldev** %3, align 8
  %21 = getelementptr inbounds %struct.rpmsg_ctrldev, %struct.rpmsg_ctrldev* %20, i32 0, i32 0
  %22 = call i32 @device_del(i32* %21)
  %23 = load %struct.rpmsg_ctrldev*, %struct.rpmsg_ctrldev** %3, align 8
  %24 = getelementptr inbounds %struct.rpmsg_ctrldev, %struct.rpmsg_ctrldev* %23, i32 0, i32 0
  %25 = call i32 @put_device(i32* %24)
  ret void
}

declare dso_local %struct.rpmsg_ctrldev* @dev_get_drvdata(i32*) #1

declare dso_local i32 @device_for_each_child(i32*, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
