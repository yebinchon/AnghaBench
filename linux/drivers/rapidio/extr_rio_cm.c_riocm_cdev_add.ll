; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_cdev_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_cdev_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@riocm_cdev = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@riocm_cdev_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Cannot register a device with error %d\00", align 1
@dev_class = common dso_local global i32 0, align 4
@DEV_NAME = common dso_local global i32 0, align 4
@MPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Added %s cdev(%d:%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @riocm_cdev_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riocm_cdev_add(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i32 @cdev_init(%struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @riocm_cdev, i32 0, i32 1), i32* @riocm_cdev_fops)
  %6 = load i32, i32* @THIS_MODULE, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @riocm_cdev, i32 0, i32 1, i32 0), align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @cdev_add(%struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @riocm_cdev, i32 0, i32 1), i32 %7, i32 1)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @riocm_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %35

15:                                               ; preds = %1
  %16 = load i32, i32* @dev_class, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @DEV_NAME, align 4
  %19 = call i32 @device_create(i32 %16, i32* null, i32 %17, i32* null, i32 %18)
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @riocm_cdev, i32 0, i32 0), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @riocm_cdev, i32 0, i32 0), align 4
  %21 = call i64 @IS_ERR(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = call i32 @cdev_del(%struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @riocm_cdev, i32 0, i32 1))
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @riocm_cdev, i32 0, i32 0), align 4
  %26 = call i32 @PTR_ERR(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %35

27:                                               ; preds = %15
  %28 = load i32, i32* @MPORT, align 4
  %29 = load i32, i32* @DEV_NAME, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @MAJOR(i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @MINOR(i32 %32)
  %34 = call i32 @riocm_debug(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %31, i32 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %27, %23, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @cdev_init(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @cdev_add(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @riocm_error(i8*, i32) #1

declare dso_local i32 @device_create(i32, i32*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @cdev_del(%struct.TYPE_6__*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @riocm_debug(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
