; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_init_tablet_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_init_tablet_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@hkey_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"GMMS\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"qdd\00", align 1
@TP_HOTKEY_TABLET_USES_GMMS = common dso_local global i32 0, align 4
@tp_features = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"MHKG\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"qd\00", align 1
@TP_HOTKEY_TABLET_USES_MHKG = common dso_local global i32 0, align 4
@TP_HOTKEY_TABLET_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"Tablet mode switch found (type: %s), currently in %s mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"tablet\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"laptop\00", align 1
@hotkey_dev_attributes = common dso_local global i32 0, align 4
@dev_attr_hotkey_tablet_mode = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @hotkey_init_tablet_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hotkey_init_tablet_mode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i8* null, i8** %4, align 8
  %6 = load i32, i32* @hkey_handle, align 4
  %7 = call i64 (i32, i32*, i8*, i8*, ...) @acpi_evalf(i32 %6, i32* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %0
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @hotkey_gmms_get_tablet_mode(i32 %10, i32* %5)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @TP_HOTKEY_TABLET_USES_GMMS, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tp_features, i32 0, i32 0), align 4
  br label %16

16:                                               ; preds = %14, %9
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %31

17:                                               ; preds = %0
  %18 = load i32, i32* @hkey_handle, align 4
  %19 = call i64 (i32, i32*, i8*, i8*, ...) @acpi_evalf(i32 %18, i32* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load i32, i32* @TP_HOTKEY_TABLET_USES_MHKG, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tp_features, i32 0, i32 0), align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @TP_HOTKEY_TABLET_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %2, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %30

30:                                               ; preds = %21, %17
  br label %31

31:                                               ; preds = %30, %16
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tp_features, i32 0, i32 0), align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32 0, i32* %1, align 4
  br label %49

35:                                               ; preds = %31
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %2, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i8* %36, i8* %40)
  %42 = load i32, i32* @hotkey_dev_attributes, align 4
  %43 = call i32 @add_to_attr_set(i32 %42, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev_attr_hotkey_tablet_mode, i32 0, i32 0))
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store i32 -1, i32* %1, align 4
  br label %49

47:                                               ; preds = %35
  %48 = load i32, i32* %2, align 4
  store i32 %48, i32* %1, align 4
  br label %49

49:                                               ; preds = %47, %46, %34
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i64 @acpi_evalf(i32, i32*, i8*, i8*, ...) #1

declare dso_local i32 @hotkey_gmms_get_tablet_mode(i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i8*, i8*) #1

declare dso_local i32 @add_to_attr_set(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
