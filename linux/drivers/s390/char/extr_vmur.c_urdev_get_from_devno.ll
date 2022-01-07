; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmur.c_urdev_get_from_devno.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmur.c_urdev_get_from_devno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urdev = type { i32 }
%struct.ccw_device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"0.0.%04x\00", align 1
@ur_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urdev* (i32)* @urdev_get_from_devno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urdev* @urdev_get_from_devno(i32 %0) #0 {
  %2 = alloca %struct.urdev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [16 x i8], align 16
  %5 = alloca %struct.ccw_device*, align 8
  %6 = alloca %struct.urdev*, align 8
  store i32 %0, i32* %3, align 4
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @sprintf(i8* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %11 = call %struct.ccw_device* @get_ccwdev_by_busid(i32* @ur_driver, i8* %10)
  store %struct.ccw_device* %11, %struct.ccw_device** %5, align 8
  %12 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %13 = icmp ne %struct.ccw_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.urdev* null, %struct.urdev** %2, align 8
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %17 = call %struct.urdev* @urdev_get_from_cdev(%struct.ccw_device* %16)
  store %struct.urdev* %17, %struct.urdev** %6, align 8
  %18 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %19 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %18, i32 0, i32 0
  %20 = call i32 @put_device(i32* %19)
  %21 = load %struct.urdev*, %struct.urdev** %6, align 8
  store %struct.urdev* %21, %struct.urdev** %2, align 8
  br label %22

22:                                               ; preds = %15, %14
  %23 = load %struct.urdev*, %struct.urdev** %2, align 8
  ret %struct.urdev* %23
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.ccw_device* @get_ccwdev_by_busid(i32*, i8*) #1

declare dso_local %struct.urdev* @urdev_get_from_cdev(%struct.ccw_device*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
