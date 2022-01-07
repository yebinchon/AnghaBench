; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_char.c_rpmsg_chrdev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_char.c_rpmsg_chrdev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_device = type { i32 }
%struct.rpmsg_ctrldev = type { %struct.TYPE_3__, %struct.device, %struct.rpmsg_device* }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32, i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rpmsg_class = common dso_local global i32 0, align 4
@rpmsg_ctrldev_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@rpmsg_minor_ida = common dso_local global i32 0, align 4
@RPMSG_DEV_MAX = common dso_local global i32 0, align 4
@rpmsg_major = common dso_local global i32 0, align 4
@rpmsg_ctrl_ida = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"rpmsg_ctrl%d\00", align 1
@rpmsg_ctrldev_release_device = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"device_add failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmsg_device*)* @rpmsg_chrdev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmsg_chrdev_probe(%struct.rpmsg_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpmsg_device*, align 8
  %4 = alloca %struct.rpmsg_ctrldev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.rpmsg_device* %0, %struct.rpmsg_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.rpmsg_ctrldev* @kzalloc(i32 40, i32 %7)
  store %struct.rpmsg_ctrldev* %8, %struct.rpmsg_ctrldev** %4, align 8
  %9 = load %struct.rpmsg_ctrldev*, %struct.rpmsg_ctrldev** %4, align 8
  %10 = icmp ne %struct.rpmsg_ctrldev* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %109

14:                                               ; preds = %1
  %15 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %16 = load %struct.rpmsg_ctrldev*, %struct.rpmsg_ctrldev** %4, align 8
  %17 = getelementptr inbounds %struct.rpmsg_ctrldev, %struct.rpmsg_ctrldev* %16, i32 0, i32 2
  store %struct.rpmsg_device* %15, %struct.rpmsg_device** %17, align 8
  %18 = load %struct.rpmsg_ctrldev*, %struct.rpmsg_ctrldev** %4, align 8
  %19 = getelementptr inbounds %struct.rpmsg_ctrldev, %struct.rpmsg_ctrldev* %18, i32 0, i32 1
  store %struct.device* %19, %struct.device** %5, align 8
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call i32 @device_initialize(%struct.device* %20)
  %22 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %23 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %22, i32 0, i32 0
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 4
  store i32* %23, i32** %25, align 8
  %26 = load i32, i32* @rpmsg_class, align 4
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.rpmsg_ctrldev*, %struct.rpmsg_ctrldev** %4, align 8
  %30 = getelementptr inbounds %struct.rpmsg_ctrldev, %struct.rpmsg_ctrldev* %29, i32 0, i32 0
  %31 = call i32 @cdev_init(%struct.TYPE_3__* %30, i32* @rpmsg_ctrldev_fops)
  %32 = load i32, i32* @THIS_MODULE, align 4
  %33 = load %struct.rpmsg_ctrldev*, %struct.rpmsg_ctrldev** %4, align 8
  %34 = getelementptr inbounds %struct.rpmsg_ctrldev, %struct.rpmsg_ctrldev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* @RPMSG_DEV_MAX, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32 @ida_simple_get(i32* @rpmsg_minor_ida, i32 0, i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %14
  br label %103

42:                                               ; preds = %14
  %43 = load i32, i32* @rpmsg_major, align 4
  %44 = call i32 @MAJOR(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @MKDEV(i32 %44, i32 %45)
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = getelementptr inbounds %struct.device, %struct.device* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i32 @ida_simple_get(i32* @rpmsg_ctrl_ida, i32 0, i32 0, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %97

54:                                               ; preds = %42
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = getelementptr inbounds %struct.device, %struct.device* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.rpmsg_ctrldev*, %struct.rpmsg_ctrldev** %4, align 8
  %59 = getelementptr inbounds %struct.rpmsg_ctrldev, %struct.rpmsg_ctrldev* %58, i32 0, i32 1
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @dev_set_name(%struct.device* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.rpmsg_ctrldev*, %struct.rpmsg_ctrldev** %4, align 8
  %63 = getelementptr inbounds %struct.rpmsg_ctrldev, %struct.rpmsg_ctrldev* %62, i32 0, i32 0
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = getelementptr inbounds %struct.device, %struct.device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @cdev_add(%struct.TYPE_3__* %63, i32 %66, i32 1)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  br label %92

71:                                               ; preds = %54
  %72 = load i32, i32* @rpmsg_ctrldev_release_device, align 4
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = getelementptr inbounds %struct.device, %struct.device* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = call i32 @device_add(%struct.device* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %71
  %80 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %81 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %80, i32 0, i32 0
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load %struct.device*, %struct.device** %5, align 8
  %85 = call i32 @put_device(%struct.device* %84)
  br label %86

86:                                               ; preds = %79, %71
  %87 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %88 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %87, i32 0, i32 0
  %89 = load %struct.rpmsg_ctrldev*, %struct.rpmsg_ctrldev** %4, align 8
  %90 = call i32 @dev_set_drvdata(i32* %88, %struct.rpmsg_ctrldev* %89)
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %2, align 4
  br label %109

92:                                               ; preds = %70
  %93 = load %struct.device*, %struct.device** %5, align 8
  %94 = getelementptr inbounds %struct.device, %struct.device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @ida_simple_remove(i32* @rpmsg_ctrl_ida, i32 %95)
  br label %97

97:                                               ; preds = %92, %53
  %98 = load %struct.device*, %struct.device** %5, align 8
  %99 = getelementptr inbounds %struct.device, %struct.device* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @MINOR(i32 %100)
  %102 = call i32 @ida_simple_remove(i32* @rpmsg_minor_ida, i32 %101)
  br label %103

103:                                              ; preds = %97, %41
  %104 = load %struct.device*, %struct.device** %5, align 8
  %105 = call i32 @put_device(%struct.device* %104)
  %106 = load %struct.rpmsg_ctrldev*, %struct.rpmsg_ctrldev** %4, align 8
  %107 = call i32 @kfree(%struct.rpmsg_ctrldev* %106)
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %103, %86, %11
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.rpmsg_ctrldev* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.device*) #1

declare dso_local i32 @cdev_init(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32) #1

declare dso_local i32 @cdev_add(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @device_add(%struct.device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.rpmsg_ctrldev*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @kfree(%struct.rpmsg_ctrldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
