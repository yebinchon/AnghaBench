; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_kbd_backlight_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_kbd_backlight_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.toshiba_acpi_dev = type { i32, i32, i32, i32 }

@SCI_KBD_MODE_FNZ = common dso_local global i32 0, align 4
@SCI_KBD_MODE_AUTO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SCI_KBD_MODE_ON = common dso_local global i32 0, align 4
@SCI_KBD_MODE_OFF = common dso_local global i32 0, align 4
@HCI_MISC_SHIFT = common dso_local global i32 0, align 4
@toshiba_acpi = common dso_local global %struct.TYPE_2__* null, align 8
@kbd_bl_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @kbd_backlight_mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbd_backlight_mode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.toshiba_acpi_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.toshiba_acpi_dev* @dev_get_drvdata(%struct.device* %14)
  store %struct.toshiba_acpi_dev* %15, %struct.toshiba_acpi_dev** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @kstrtoint(i8* %16, i32 0, i32* %11)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %5, align 4
  br label %123

22:                                               ; preds = %4
  %23 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %10, align 8
  %24 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @SCI_KBD_MODE_FNZ, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @SCI_KBD_MODE_AUTO, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %123

38:                                               ; preds = %31, %27
  br label %61

39:                                               ; preds = %22
  %40 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %10, align 8
  %41 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @SCI_KBD_MODE_AUTO, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @SCI_KBD_MODE_ON, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @SCI_KBD_MODE_OFF, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %123

59:                                               ; preds = %52, %48, %44
  br label %60

60:                                               ; preds = %59, %39
  br label %61

61:                                               ; preds = %60, %38
  %62 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %10, align 8
  %63 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %120

67:                                               ; preds = %61
  %68 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %10, align 8
  %69 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @HCI_MISC_SHIFT, align 4
  %72 = shl i32 %70, %71
  store i32 %72, i32* %13, align 4
  %73 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %10, align 8
  %74 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %83

77:                                               ; preds = %67
  %78 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %10, align 8
  %79 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %13, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %13, align 4
  br label %93

83:                                               ; preds = %67
  %84 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %10, align 8
  %85 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %13, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %88, %83
  br label %93

93:                                               ; preds = %92, %77
  %94 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %10, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @toshiba_kbd_illum_status_set(%struct.toshiba_acpi_dev* %94, i32 %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %5, align 4
  br label %123

101:                                              ; preds = %93
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %10, align 8
  %104 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @toshiba_acpi, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %10, align 8
  %109 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %112, label %119

112:                                              ; preds = %101
  %113 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %10, align 8
  %114 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %112
  %118 = call i32 @schedule_work(i32* @kbd_bl_work)
  br label %119

119:                                              ; preds = %117, %112, %101
  br label %120

120:                                              ; preds = %119, %61
  %121 = load i64, i64* %9, align 8
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %120, %99, %56, %35, %20
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local %struct.toshiba_acpi_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @toshiba_kbd_illum_status_set(%struct.toshiba_acpi_dev*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
