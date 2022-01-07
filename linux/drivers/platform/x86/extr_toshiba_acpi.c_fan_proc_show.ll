; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_fan_proc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_fan_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.toshiba_acpi_dev* }
%struct.toshiba_acpi_dev = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"running:                 %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"force_on:                %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @fan_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.toshiba_acpi_dev*, align 8
  %7 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %9, align 8
  store %struct.toshiba_acpi_dev* %10, %struct.toshiba_acpi_dev** %6, align 8
  %11 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %6, align 8
  %12 = call i64 @get_fan_status(%struct.toshiba_acpi_dev* %11, i64* %7)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp sgt i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %24 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %6, align 8
  %25 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %17, %14
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @get_fan_status(%struct.toshiba_acpi_dev*, i64*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
