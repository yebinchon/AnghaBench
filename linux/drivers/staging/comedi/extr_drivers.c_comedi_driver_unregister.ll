; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_drivers.c_comedi_driver_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_drivers.c_comedi_driver_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_driver = type { %struct.comedi_driver* }
%struct.comedi_device = type { i32, i64, i32, %struct.comedi_driver*, i64 }

@comedi_drivers_list_lock = common dso_local global i32 0, align 4
@comedi_drivers = common dso_local global %struct.comedi_driver* null, align 8
@COMEDI_NUM_BOARD_MINORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"BUG! detaching device with use_count=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comedi_driver_unregister(%struct.comedi_driver* %0) #0 {
  %2 = alloca %struct.comedi_driver*, align 8
  %3 = alloca %struct.comedi_driver*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_driver* %0, %struct.comedi_driver** %2, align 8
  %6 = call i32 @mutex_lock(i32* @comedi_drivers_list_lock)
  %7 = load %struct.comedi_driver*, %struct.comedi_driver** @comedi_drivers, align 8
  %8 = load %struct.comedi_driver*, %struct.comedi_driver** %2, align 8
  %9 = icmp eq %struct.comedi_driver* %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.comedi_driver*, %struct.comedi_driver** %2, align 8
  %12 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %11, i32 0, i32 0
  %13 = load %struct.comedi_driver*, %struct.comedi_driver** %12, align 8
  store %struct.comedi_driver* %13, %struct.comedi_driver** @comedi_drivers, align 8
  br label %39

14:                                               ; preds = %1
  %15 = load %struct.comedi_driver*, %struct.comedi_driver** @comedi_drivers, align 8
  store %struct.comedi_driver* %15, %struct.comedi_driver** %3, align 8
  br label %16

16:                                               ; preds = %34, %14
  %17 = load %struct.comedi_driver*, %struct.comedi_driver** %3, align 8
  %18 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %17, i32 0, i32 0
  %19 = load %struct.comedi_driver*, %struct.comedi_driver** %18, align 8
  %20 = icmp ne %struct.comedi_driver* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %16
  %22 = load %struct.comedi_driver*, %struct.comedi_driver** %3, align 8
  %23 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %22, i32 0, i32 0
  %24 = load %struct.comedi_driver*, %struct.comedi_driver** %23, align 8
  %25 = load %struct.comedi_driver*, %struct.comedi_driver** %2, align 8
  %26 = icmp eq %struct.comedi_driver* %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.comedi_driver*, %struct.comedi_driver** %2, align 8
  %29 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %28, i32 0, i32 0
  %30 = load %struct.comedi_driver*, %struct.comedi_driver** %29, align 8
  %31 = load %struct.comedi_driver*, %struct.comedi_driver** %3, align 8
  %32 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %31, i32 0, i32 0
  store %struct.comedi_driver* %30, %struct.comedi_driver** %32, align 8
  br label %38

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.comedi_driver*, %struct.comedi_driver** %3, align 8
  %36 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %35, i32 0, i32 0
  %37 = load %struct.comedi_driver*, %struct.comedi_driver** %36, align 8
  store %struct.comedi_driver* %37, %struct.comedi_driver** %3, align 8
  br label %16

38:                                               ; preds = %27, %16
  br label %39

39:                                               ; preds = %38, %10
  %40 = call i32 @mutex_unlock(i32* @comedi_drivers_list_lock)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %87, %39
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @COMEDI_NUM_BOARD_MINORS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %90

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = call %struct.comedi_device* @comedi_dev_get_from_minor(i32 %46)
  store %struct.comedi_device* %47, %struct.comedi_device** %5, align 8
  %48 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %49 = icmp ne %struct.comedi_device* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %87

51:                                               ; preds = %45
  %52 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %53 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 0
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %56 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %51
  %60 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 3
  %62 = load %struct.comedi_driver*, %struct.comedi_driver** %61, align 8
  %63 = load %struct.comedi_driver*, %struct.comedi_driver** %2, align 8
  %64 = icmp eq %struct.comedi_driver* %62, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %59
  %66 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %67 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %72 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @dev_warn(i32 %73, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %76)
  br label %78

78:                                               ; preds = %70, %65
  %79 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %80 = call i32 @comedi_device_detach(%struct.comedi_device* %79)
  br label %81

81:                                               ; preds = %78, %59, %51
  %82 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %83 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %86 = call i32 @comedi_dev_put(%struct.comedi_device* %85)
  br label %87

87:                                               ; preds = %81, %50
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %41

90:                                               ; preds = %41
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.comedi_device* @comedi_dev_get_from_minor(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i64) #1

declare dso_local i32 @comedi_device_detach(%struct.comedi_device*) #1

declare dso_local i32 @comedi_dev_put(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
