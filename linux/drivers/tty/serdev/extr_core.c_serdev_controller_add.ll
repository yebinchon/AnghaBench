; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_core.c_serdev_controller_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_core.c_serdev_controller_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_controller = type { i32, i32 }

@is_registered = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"no devices registered: of:%d acpi:%d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"serdev%d registered: dev:%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serdev_controller_add(%struct.serdev_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serdev_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.serdev_controller* %0, %struct.serdev_controller** %3, align 8
  %7 = load i32, i32* @is_registered, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EAGAIN, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %63

16:                                               ; preds = %1
  %17 = load %struct.serdev_controller*, %struct.serdev_controller** %3, align 8
  %18 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %17, i32 0, i32 0
  %19 = call i32 @device_add(i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %63

24:                                               ; preds = %16
  %25 = load %struct.serdev_controller*, %struct.serdev_controller** %3, align 8
  %26 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %25, i32 0, i32 0
  %27 = call i32 @pm_runtime_enable(i32* %26)
  %28 = load %struct.serdev_controller*, %struct.serdev_controller** %3, align 8
  %29 = call i32 @of_serdev_register_devices(%struct.serdev_controller* %28)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.serdev_controller*, %struct.serdev_controller** %3, align 8
  %31 = call i32 @acpi_serdev_register_devices(%struct.serdev_controller* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %24
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load %struct.serdev_controller*, %struct.serdev_controller** %3, align 8
  %39 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %38, i32 0, i32 0
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dev_dbg(i32* %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %55

45:                                               ; preds = %34, %24
  %46 = load %struct.serdev_controller*, %struct.serdev_controller** %3, align 8
  %47 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %46, i32 0, i32 0
  %48 = load %struct.serdev_controller*, %struct.serdev_controller** %3, align 8
  %49 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.serdev_controller*, %struct.serdev_controller** %3, align 8
  %52 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %51, i32 0, i32 0
  %53 = ptrtoint i32* %52 to i32
  %54 = call i32 @dev_dbg(i32* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %53)
  store i32 0, i32* %2, align 4
  br label %63

55:                                               ; preds = %37
  %56 = load %struct.serdev_controller*, %struct.serdev_controller** %3, align 8
  %57 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %56, i32 0, i32 0
  %58 = call i32 @pm_runtime_disable(i32* %57)
  %59 = load %struct.serdev_controller*, %struct.serdev_controller** %3, align 8
  %60 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %59, i32 0, i32 0
  %61 = call i32 @device_del(i32* %60)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %55, %45, %22, %13
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @of_serdev_register_devices(%struct.serdev_controller*) #1

declare dso_local i32 @acpi_serdev_register_devices(%struct.serdev_controller*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @device_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
