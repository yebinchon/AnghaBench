; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_char.c_rpmsg_eptdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_char.c_rpmsg_eptdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.rpmsg_eptdev* }
%struct.rpmsg_eptdev = type { %struct.rpmsg_endpoint*, %struct.TYPE_2__, %struct.device, %struct.rpmsg_device* }
%struct.rpmsg_endpoint = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.rpmsg_device = type { i32 }

@rpmsg_ept_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"failed to open %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @rpmsg_eptdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmsg_eptdev_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.rpmsg_eptdev*, align 8
  %7 = alloca %struct.rpmsg_endpoint*, align 8
  %8 = alloca %struct.rpmsg_device*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.rpmsg_eptdev* @cdev_to_eptdev(i32 %12)
  store %struct.rpmsg_eptdev* %13, %struct.rpmsg_eptdev** %6, align 8
  %14 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %6, align 8
  %15 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %14, i32 0, i32 3
  %16 = load %struct.rpmsg_device*, %struct.rpmsg_device** %15, align 8
  store %struct.rpmsg_device* %16, %struct.rpmsg_device** %8, align 8
  %17 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %6, align 8
  %18 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %17, i32 0, i32 2
  store %struct.device* %18, %struct.device** %9, align 8
  %19 = load %struct.device*, %struct.device** %9, align 8
  %20 = call i32 @get_device(%struct.device* %19)
  %21 = load %struct.rpmsg_device*, %struct.rpmsg_device** %8, align 8
  %22 = load i32, i32* @rpmsg_ept_cb, align 4
  %23 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %6, align 8
  %24 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %6, align 8
  %25 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.rpmsg_endpoint* @rpmsg_create_ept(%struct.rpmsg_device* %21, i32 %22, %struct.rpmsg_eptdev* %23, i32 %27)
  store %struct.rpmsg_endpoint* %28, %struct.rpmsg_endpoint** %7, align 8
  %29 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %7, align 8
  %30 = icmp ne %struct.rpmsg_endpoint* %29, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %2
  %32 = load %struct.device*, %struct.device** %9, align 8
  %33 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %6, align 8
  %34 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.device*, %struct.device** %9, align 8
  %39 = call i32 @put_device(%struct.device* %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %49

42:                                               ; preds = %2
  %43 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %7, align 8
  %44 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %6, align 8
  %45 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %44, i32 0, i32 0
  store %struct.rpmsg_endpoint* %43, %struct.rpmsg_endpoint** %45, align 8
  %46 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %6, align 8
  %47 = load %struct.file*, %struct.file** %5, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  store %struct.rpmsg_eptdev* %46, %struct.rpmsg_eptdev** %48, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %42, %31
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.rpmsg_eptdev* @cdev_to_eptdev(i32) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local %struct.rpmsg_endpoint* @rpmsg_create_ept(%struct.rpmsg_device*, i32, %struct.rpmsg_eptdev*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
