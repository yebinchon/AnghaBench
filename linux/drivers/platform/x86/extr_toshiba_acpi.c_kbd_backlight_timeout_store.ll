; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_kbd_backlight_timeout_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_kbd_backlight_timeout_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.toshiba_acpi_dev = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HCI_MISC_SHIFT = common dso_local global i32 0, align 4
@SCI_KBD_MODE_FNZ = common dso_local global i32 0, align 4
@SCI_KBD_MODE_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @kbd_backlight_timeout_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbd_backlight_timeout_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.toshiba_acpi_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.toshiba_acpi_dev* @dev_get_drvdata(%struct.device* %13)
  store %struct.toshiba_acpi_dev* %14, %struct.toshiba_acpi_dev** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @kstrtoint(i8* %15, i32 0, i32* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %97

21:                                               ; preds = %4
  %22 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %10, align 8
  %23 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %11, align 4
  %31 = icmp sgt i32 %30, 60
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %97

35:                                               ; preds = %29
  br label %52

36:                                               ; preds = %21
  %37 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %10, align 8
  %38 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = icmp sgt i32 %45, 60
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %97

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %36
  br label %52

52:                                               ; preds = %51, %35
  %53 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %10, align 8
  %54 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %94

58:                                               ; preds = %52
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @HCI_MISC_SHIFT, align 4
  %61 = shl i32 %59, %60
  store i32 %61, i32* %11, align 4
  %62 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %10, align 8
  %63 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load i32, i32* @SCI_KBD_MODE_FNZ, align 4
  %68 = load i32, i32* %11, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %11, align 4
  br label %80

70:                                               ; preds = %58
  %71 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %10, align 8
  %72 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @SCI_KBD_MODE_AUTO, align 4
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %75, %70
  br label %80

80:                                               ; preds = %79, %66
  %81 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @toshiba_kbd_illum_status_set(%struct.toshiba_acpi_dev* %81, i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %5, align 4
  br label %97

88:                                               ; preds = %80
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @HCI_MISC_SHIFT, align 4
  %91 = ashr i32 %89, %90
  %92 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %10, align 8
  %93 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %88, %52
  %95 = load i64, i64* %9, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %94, %86, %47, %32, %19
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.toshiba_acpi_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @toshiba_kbd_illum_status_set(%struct.toshiba_acpi_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
