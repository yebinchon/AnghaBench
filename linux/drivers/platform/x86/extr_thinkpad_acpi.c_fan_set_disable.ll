; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_fan_set_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_fan_set_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@fan_control_allowed = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@fan_mutex = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@fan_control_access_mode = common dso_local global i32 0, align 4
@fan_status_offset = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@fan_control_desired_level = common dso_local global i32 0, align 4
@tp_features = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@sfan_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"vd\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@TPACPI_DBG_FAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"fan control: set fan control register to 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fan_set_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_set_disable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @fan_control_allowed, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @EPERM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %1, align 4
  br label %46

8:                                                ; preds = %0
  %9 = call i64 @mutex_lock_killable(i32* @fan_mutex)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* @ERESTARTSYS, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %1, align 4
  br label %46

14:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  %15 = load i32, i32* @fan_control_access_mode, align 4
  switch i32 %15, label %34 [
    i32 130, label %16
    i32 128, label %16
    i32 129, label %25
  ]

16:                                               ; preds = %14, %14
  %17 = load i32, i32* @fan_status_offset, align 4
  %18 = call i32 @acpi_ec_write(i32 %17, i32 0)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %16
  store i32 0, i32* @fan_control_desired_level, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tp_features, i32 0, i32 0), align 4
  br label %24

24:                                               ; preds = %23, %20
  br label %37

25:                                               ; preds = %14
  %26 = load i32, i32* @sfan_handle, align 4
  %27 = call i32 @acpi_evalf(i32 %26, i32* null, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 0)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %25
  store i32 0, i32* @fan_control_desired_level, align 4
  br label %33

33:                                               ; preds = %32, %29
  br label %37

34:                                               ; preds = %14
  %35 = load i32, i32* @ENXIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %33, %24
  %38 = load i32, i32* %2, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @TPACPI_DBG_FAN, align 4
  %42 = call i32 @vdbg_printk(i32 %41, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %37
  %44 = call i32 @mutex_unlock(i32* @fan_mutex)
  %45 = load i32, i32* %2, align 4
  store i32 %45, i32* %1, align 4
  br label %46

46:                                               ; preds = %43, %11, %5
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

declare dso_local i64 @mutex_lock_killable(i32*) #1

declare dso_local i32 @acpi_ec_write(i32, i32) #1

declare dso_local i32 @acpi_evalf(i32, i32*, i32*, i8*, i32) #1

declare dso_local i32 @vdbg_printk(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
