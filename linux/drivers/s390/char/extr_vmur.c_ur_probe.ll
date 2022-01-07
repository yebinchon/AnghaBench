; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmur.c_ur_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmur.c_ur_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32, i32 }
%struct.urdev = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"ur_probe: cdev=%p\0A\00", align 1
@vmur_mutex = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ur_int_handler = common dso_local global i32 0, align 4
@DEV_CLASS_UR_I = common dso_local global i32 0, align 4
@DEV_CLASS_UR_O = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*)* @ur_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ur_probe(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.urdev*, align 8
  %5 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %6 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %7 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.ccw_device* %6)
  %8 = call i32 @mutex_lock(i32* @vmur_mutex)
  %9 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %10 = call %struct.urdev* @urdev_alloc(%struct.ccw_device* %9)
  store %struct.urdev* %10, %struct.urdev** %4, align 8
  %11 = load %struct.urdev*, %struct.urdev** %4, align 8
  %12 = icmp ne %struct.urdev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %75

16:                                               ; preds = %1
  %17 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %18 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %17, i32 0, i32 0
  %19 = call i32 @ur_create_attributes(i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %72

25:                                               ; preds = %16
  %26 = load i32, i32* @ur_int_handler, align 4
  %27 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %28 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.urdev*, %struct.urdev** %4, align 8
  %30 = call i32 @get_urd_class(%struct.urdev* %29)
  %31 = load %struct.urdev*, %struct.urdev** %4, align 8
  %32 = getelementptr inbounds %struct.urdev, %struct.urdev* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.urdev*, %struct.urdev** %4, align 8
  %34 = getelementptr inbounds %struct.urdev, %struct.urdev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %25
  %38 = load %struct.urdev*, %struct.urdev** %4, align 8
  %39 = getelementptr inbounds %struct.urdev, %struct.urdev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  br label %68

41:                                               ; preds = %25
  %42 = load %struct.urdev*, %struct.urdev** %4, align 8
  %43 = getelementptr inbounds %struct.urdev, %struct.urdev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DEV_CLASS_UR_I, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load %struct.urdev*, %struct.urdev** %4, align 8
  %49 = getelementptr inbounds %struct.urdev, %struct.urdev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DEV_CLASS_UR_O, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @EOPNOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %68

56:                                               ; preds = %47, %41
  %57 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %58 = call i32 @get_ccwdev_lock(%struct.ccw_device* %57)
  %59 = call i32 @spin_lock_irq(i32 %58)
  %60 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %61 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %60, i32 0, i32 0
  %62 = load %struct.urdev*, %struct.urdev** %4, align 8
  %63 = call i32 @dev_set_drvdata(i32* %61, %struct.urdev* %62)
  %64 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %65 = call i32 @get_ccwdev_lock(%struct.ccw_device* %64)
  %66 = call i32 @spin_unlock_irq(i32 %65)
  %67 = call i32 @mutex_unlock(i32* @vmur_mutex)
  store i32 0, i32* %2, align 4
  br label %78

68:                                               ; preds = %53, %37
  %69 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %70 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %69, i32 0, i32 0
  %71 = call i32 @ur_remove_attributes(i32* %70)
  br label %72

72:                                               ; preds = %68, %22
  %73 = load %struct.urdev*, %struct.urdev** %4, align 8
  %74 = call i32 @urdev_put(%struct.urdev* %73)
  br label %75

75:                                               ; preds = %72, %13
  %76 = call i32 @mutex_unlock(i32* @vmur_mutex)
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %75, %56
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @TRACE(i8*, %struct.ccw_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.urdev* @urdev_alloc(%struct.ccw_device*) #1

declare dso_local i32 @ur_create_attributes(i32*) #1

declare dso_local i32 @get_urd_class(%struct.urdev*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @get_ccwdev_lock(%struct.ccw_device*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.urdev*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ur_remove_attributes(i32*) #1

declare dso_local i32 @urdev_put(%struct.urdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
