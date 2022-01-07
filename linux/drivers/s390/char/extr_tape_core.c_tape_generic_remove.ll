; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_core.c_tape_generic_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_core.c_tape_generic_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.tape_device = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"(%08x): tape_generic_remove(%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"(%08x): Drive in use vanished!\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"%s: A tape unit was detached while in use\0A\00", align 1
@tape_attr_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tape_generic_remove(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.tape_device*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %4 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %4, i32 0, i32 0
  %6 = call %struct.tape_device* @dev_get_drvdata(%struct.TYPE_5__* %5)
  store %struct.tape_device* %6, %struct.tape_device** %3, align 8
  %7 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %8 = icmp ne %struct.tape_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %81

10:                                               ; preds = %1
  %11 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %12 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %15 = call i32 @DBF_LH(i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %13, %struct.ccw_device* %14)
  %16 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %17 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = call i32 @get_ccwdev_lock(%struct.TYPE_4__* %18)
  %20 = call i32 @spin_lock_irq(i32 %19)
  %21 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %22 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %43 [
    i32 130, label %24
    i32 129, label %27
    i32 128, label %33
  ]

24:                                               ; preds = %10
  %25 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %26 = call i32 @tape_state_set(%struct.tape_device* %25, i32 129)
  br label %27

27:                                               ; preds = %10, %24
  %28 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %29 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = call i32 @get_ccwdev_lock(%struct.TYPE_4__* %30)
  %32 = call i32 @spin_unlock_irq(i32 %31)
  br label %65

33:                                               ; preds = %10
  %34 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %35 = call i32 @tape_state_set(%struct.tape_device* %34, i32 129)
  %36 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %37 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = call i32 @get_ccwdev_lock(%struct.TYPE_4__* %38)
  %40 = call i32 @spin_unlock_irq(i32 %39)
  %41 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %42 = call i32 @tape_cleanup_device(%struct.tape_device* %41)
  br label %65

43:                                               ; preds = %10
  %44 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %45 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @DBF_EVENT(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %49 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @dev_name(i32* %51)
  %53 = call i32 @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %55 = call i32 @tape_state_set(%struct.tape_device* %54, i32 129)
  %56 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %57 = call i32 @__tape_discard_requests(%struct.tape_device* %56)
  %58 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %59 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = call i32 @get_ccwdev_lock(%struct.TYPE_4__* %60)
  %62 = call i32 @spin_unlock_irq(i32 %61)
  %63 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %64 = call i32 @tape_cleanup_device(%struct.tape_device* %63)
  br label %65

65:                                               ; preds = %43, %33, %27
  %66 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %67 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %66, i32 0, i32 0
  %68 = call %struct.tape_device* @dev_get_drvdata(%struct.TYPE_5__* %67)
  store %struct.tape_device* %68, %struct.tape_device** %3, align 8
  %69 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %70 = icmp ne %struct.tape_device* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %73 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = call i32 @sysfs_remove_group(i32* %74, i32* @tape_attr_group)
  %76 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %77 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %76, i32 0, i32 0
  %78 = call i32 @dev_set_drvdata(%struct.TYPE_5__* %77, i32* null)
  %79 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %80 = call i32 @tape_put_device(%struct.tape_device* %79)
  br label %81

81:                                               ; preds = %9, %71, %65
  ret void
}

declare dso_local %struct.tape_device* @dev_get_drvdata(%struct.TYPE_5__*) #1

declare dso_local i32 @DBF_LH(i32, i8*, i32, %struct.ccw_device*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @get_ccwdev_lock(%struct.TYPE_4__*) #1

declare dso_local i32 @tape_state_set(%struct.tape_device*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @tape_cleanup_device(%struct.tape_device*) #1

declare dso_local i32 @DBF_EVENT(i32, i8*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @__tape_discard_requests(%struct.tape_device*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @tape_put_device(%struct.tape_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
