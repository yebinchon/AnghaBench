; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_lcd_proc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_lcd_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.toshiba_acpi_dev* }
%struct.toshiba_acpi_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error reading LCD brightness\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"brightness:              %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"brightness_levels:       %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @lcd_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcd_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.toshiba_acpi_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %10, align 8
  store %struct.toshiba_acpi_dev* %11, %struct.toshiba_acpi_dev** %6, align 8
  %12 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %6, align 8
  %13 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %43

19:                                               ; preds = %2
  %20 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %6, align 8
  %21 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %6, align 8
  %28 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = call i32 @get_lcd_brightness(%struct.TYPE_4__* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %43

36:                                               ; preds = %19
  %37 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %36, %33, %16
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @get_lcd_brightness(%struct.TYPE_4__*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
