; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_print_supported_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_print_supported_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toshiba_acpi_dev = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"Supported laptop features:\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" hotkeys\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" backlight\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" video-out\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" fan\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c" transflective-backlight\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c" illumination\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c" keyboard-backlight\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c" touchpad\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c" eco-led\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c" accelerometer-axes\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c" usb-sleep-charge\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c" usb-rapid-charge\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c" usb-sleep-music\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c" special-function-keys\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c" panel-power-on\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c" usb3\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c" wwan\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c" cooling-method\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.toshiba_acpi_dev*)* @print_supported_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_supported_features(%struct.toshiba_acpi_dev* %0) #0 {
  %2 = alloca %struct.toshiba_acpi_dev*, align 8
  store %struct.toshiba_acpi_dev* %0, %struct.toshiba_acpi_dev** %2, align 8
  %3 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %5 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %4, i32 0, i32 17
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @pr_cont(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %12 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %11, i32 0, i32 16
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @pr_cont(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %10
  %18 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %19 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %18, i32 0, i32 15
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @pr_cont(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  %25 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %26 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %25, i32 0, i32 14
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %24
  %32 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %33 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %32, i32 0, i32 13
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @pr_cont(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  %39 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %40 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %39, i32 0, i32 12
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @pr_cont(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %38
  %46 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %47 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %46, i32 0, i32 11
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 @pr_cont(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %45
  %53 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %54 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %53, i32 0, i32 10
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %52
  %60 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %61 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %60, i32 0, i32 9
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 @pr_cont(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %59
  %67 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %68 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %67, i32 0, i32 8
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = call i32 @pr_cont(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %66
  %74 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %75 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %74, i32 0, i32 7
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 @pr_cont(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %73
  %81 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %82 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %81, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = call i32 @pr_cont(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %80
  %88 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %89 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = call i32 @pr_cont(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %87
  %95 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %96 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = call i32 @pr_cont(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %94
  %102 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %103 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = call i32 @pr_cont(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %101
  %109 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %110 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = call i32 @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %108
  %116 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %117 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = call i32 @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %115
  %123 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %124 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = call i32 @pr_cont(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %122
  %130 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pr_cont(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
