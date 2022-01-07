; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_gmms_get_tablet_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_gmms_get_tablet_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TP_ACPI_MULTI_MODE_INVALID = common dso_local global i32 0, align 4
@TP_ACPI_MULTI_MODE_LAPTOP = common dso_local global i32 0, align 4
@TP_ACPI_MULTI_MODE_TABLET = common dso_local global i32 0, align 4
@TP_ACPI_MULTI_MODE_STAND_TENT = common dso_local global i32 0, align 4
@TP_ACPI_MULTI_MODE_FLAT = common dso_local global i32 0, align 4
@TP_ACPI_MULTI_MODE_STAND = common dso_local global i32 0, align 4
@TP_ACPI_MULTI_MODE_TENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"Unknown multi mode status type %d with value 0x%04X, please report this to %s\0A\00", align 1
@TPACPI_MAIL = common dso_local global i32 0, align 4
@TP_ACPI_MULTI_MODE_TABLET_LIKE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Multi mode status is undetected, assuming laptop\0A\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"Unknown/reserved multi mode value 0x%04X for type %d, please report this to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @hotkey_gmms_get_tablet_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hotkey_gmms_get_tablet_mode(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 16
  %12 = and i32 %11, 65535
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 65535
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @TP_ACPI_MULTI_MODE_INVALID, align 4
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %52 [
    i32 1, label %22
    i32 2, label %28
    i32 3, label %38
    i32 4, label %42
    i32 5, label %42
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @TP_ACPI_MULTI_MODE_LAPTOP, align 4
  %24 = load i32, i32* @TP_ACPI_MULTI_MODE_TABLET, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @TP_ACPI_MULTI_MODE_STAND_TENT, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %9, align 4
  br label %57

28:                                               ; preds = %20
  %29 = load i32, i32* @TP_ACPI_MULTI_MODE_LAPTOP, align 4
  %30 = load i32, i32* @TP_ACPI_MULTI_MODE_FLAT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @TP_ACPI_MULTI_MODE_TABLET, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @TP_ACPI_MULTI_MODE_STAND, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @TP_ACPI_MULTI_MODE_TENT, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %9, align 4
  br label %57

38:                                               ; preds = %20
  %39 = load i32, i32* @TP_ACPI_MULTI_MODE_LAPTOP, align 4
  %40 = load i32, i32* @TP_ACPI_MULTI_MODE_FLAT, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %9, align 4
  br label %57

42:                                               ; preds = %20, %20
  %43 = load i32, i32* @TP_ACPI_MULTI_MODE_LAPTOP, align 4
  %44 = load i32, i32* @TP_ACPI_MULTI_MODE_FLAT, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @TP_ACPI_MULTI_MODE_TABLET, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @TP_ACPI_MULTI_MODE_STAND, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @TP_ACPI_MULTI_MODE_TENT, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %9, align 4
  br label %57

52:                                               ; preds = %20
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @TPACPI_MAIL, align 4
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i32 %55)
  store i32 0, i32* %3, align 4
  br label %112

57:                                               ; preds = %42, %38, %28, %22
  %58 = load i32*, i32** %5, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @TP_ACPI_MULTI_MODE_TABLET_LIKE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32*, i32** %5, align 8
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %65, %60, %57
  %68 = load i32, i32* %7, align 4
  switch i32 %68, label %85 [
    i32 1, label %69
    i32 2, label %71
    i32 3, label %73
    i32 4, label %75
    i32 5, label %83
  ]

69:                                               ; preds = %67
  %70 = load i32, i32* @TP_ACPI_MULTI_MODE_LAPTOP, align 4
  store i32 %70, i32* %8, align 4
  br label %94

71:                                               ; preds = %67
  %72 = load i32, i32* @TP_ACPI_MULTI_MODE_FLAT, align 4
  store i32 %72, i32* %8, align 4
  br label %94

73:                                               ; preds = %67
  %74 = load i32, i32* @TP_ACPI_MULTI_MODE_TABLET, align 4
  store i32 %74, i32* %8, align 4
  br label %94

75:                                               ; preds = %67
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* @TP_ACPI_MULTI_MODE_STAND_TENT, align 4
  store i32 %79, i32* %8, align 4
  br label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @TP_ACPI_MULTI_MODE_STAND, align 4
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %80, %78
  br label %94

83:                                               ; preds = %67
  %84 = load i32, i32* @TP_ACPI_MULTI_MODE_TENT, align 4
  store i32 %84, i32* %8, align 4
  br label %94

85:                                               ; preds = %67
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 5
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, 65535
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %112

93:                                               ; preds = %88, %85
  br label %94

94:                                               ; preds = %93, %83, %82, %73, %71, %69
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @TPACPI_MAIL, align 4
  %103 = call i32 @pr_err(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i32 %100, i32 %101, i32 %102)
  store i32 0, i32* %3, align 4
  br label %112

104:                                              ; preds = %94
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @TP_ACPI_MULTI_MODE_TABLET_LIKE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %104, %99, %91, %52
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
