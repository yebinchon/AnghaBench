; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_get_tablet_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_get_tablet_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@tp_features = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@hkey_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"MHKG\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@EIO = common dso_local global i32 0, align 4
@TP_HOTKEY_TABLET_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"GMMS\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"dd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @hotkey_get_tablet_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hotkey_get_tablet_mode(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tp_features, i32 0, i32 0), align 4
  switch i32 %5, label %31 [
    i32 128, label %6
    i32 129, label %20
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @hkey_handle, align 4
  %8 = call i32 (i32, i32*, i8*, i8*, ...) @acpi_evalf(i32 %7, i32* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %33

13:                                               ; preds = %6
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @TP_HOTKEY_TABLET_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = load i32*, i32** %3, align 8
  store i32 %18, i32* %19, align 4
  br label %32

20:                                               ; preds = %1
  %21 = load i32, i32* @hkey_handle, align 4
  %22 = call i32 (i32, i32*, i8*, i8*, ...) @acpi_evalf(i32 %21, i32* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %33

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @hotkey_gmms_get_tablet_mode(i32 %28, i32* null)
  %30 = load i32*, i32** %3, align 8
  store i32 %29, i32* %30, align 4
  br label %32

31:                                               ; preds = %1
  br label %32

32:                                               ; preds = %31, %27, %13
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %24, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @acpi_evalf(i32, i32*, i8*, i8*, ...) #1

declare dso_local i32 @hotkey_gmms_get_tablet_mode(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
