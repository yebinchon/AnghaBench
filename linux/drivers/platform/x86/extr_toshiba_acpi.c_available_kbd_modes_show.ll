; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_available_kbd_modes_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_available_kbd_modes_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.toshiba_acpi_dev = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"0x%x 0x%x\0A\00", align 1
@SCI_KBD_MODE_FNZ = common dso_local global i32 0, align 4
@SCI_KBD_MODE_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"0x%x 0x%x 0x%x\0A\00", align 1
@SCI_KBD_MODE_ON = common dso_local global i32 0, align 4
@SCI_KBD_MODE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @available_kbd_modes_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @available_kbd_modes_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.toshiba_acpi_dev*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.toshiba_acpi_dev* @dev_get_drvdata(%struct.device* %9)
  store %struct.toshiba_acpi_dev* %10, %struct.toshiba_acpi_dev** %8, align 8
  %11 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %8, align 8
  %12 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* @SCI_KBD_MODE_FNZ, align 4
  %18 = load i32, i32* @SCI_KBD_MODE_AUTO, align 4
  %19 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  br label %26

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* @SCI_KBD_MODE_AUTO, align 4
  %23 = load i32, i32* @SCI_KBD_MODE_ON, align 4
  %24 = load i32, i32* @SCI_KBD_MODE_OFF, align 4
  %25 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %20, %15
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.toshiba_acpi_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
