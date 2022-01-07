; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/extr_tee_core.c_tee_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/extr_tee_core.c_tee_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_device = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@TEE_DEVICE_FLAG_REGISTERED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"attempt to register twice\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"unable to cdev_add() %s, major %d, minor %d, err=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"unable to device_add() %s, major %d, minor %d, err=%d\0A\00", align 1
@tee_dev_group = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"failed to create sysfs attributes, err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tee_device_register(%struct.tee_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tee_device*, align 8
  %4 = alloca i32, align 4
  store %struct.tee_device* %0, %struct.tee_device** %3, align 8
  %5 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %6 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TEE_DEVICE_FLAG_REGISTERED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %13 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %12, i32 0, i32 2
  %14 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %97

17:                                               ; preds = %1
  %18 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %19 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %18, i32 0, i32 1
  %20 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %21 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cdev_add(i32* %19, i32 %23, i32 1)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %17
  %28 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %29 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %28, i32 0, i32 2
  %30 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %31 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %34 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @MAJOR(i32 %36)
  %38 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %39 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @MINOR(i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %29, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %37, i32 %42, i32 %43)
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %97

46:                                               ; preds = %17
  %47 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %48 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %47, i32 0, i32 2
  %49 = call i32 @device_add(%struct.TYPE_4__* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %46
  %53 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %54 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %53, i32 0, i32 2
  %55 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %56 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %59 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @MAJOR(i32 %61)
  %63 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %64 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @MINOR(i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %54, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %62, i32 %67, i32 %68)
  br label %92

70:                                               ; preds = %46
  %71 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %72 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i32 @sysfs_create_group(i32* %73, i32* @tee_dev_group)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %79 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %78, i32 0, i32 2
  %80 = load i32, i32* %4, align 4
  %81 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %79, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  br label %88

82:                                               ; preds = %70
  %83 = load i32, i32* @TEE_DEVICE_FLAG_REGISTERED, align 4
  %84 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %85 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  store i32 0, i32* %2, align 4
  br label %97

88:                                               ; preds = %77
  %89 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %90 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %89, i32 0, i32 2
  %91 = call i32 @device_del(%struct.TYPE_4__* %90)
  br label %92

92:                                               ; preds = %88, %52
  %93 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %94 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %93, i32 0, i32 1
  %95 = call i32 @cdev_del(i32* %94)
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %92, %82, %27, %11
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @cdev_add(i32*, i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @device_add(%struct.TYPE_4__*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @device_del(%struct.TYPE_4__*) #1

declare dso_local i32 @cdev_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
