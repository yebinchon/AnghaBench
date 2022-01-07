; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_video_proc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_video_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.toshiba_acpi_dev* }
%struct.toshiba_acpi_dev = type { i32 }

@EIO = common dso_local global i32 0, align 4
@HCI_VIDEO_OUT_LCD = common dso_local global i32 0, align 4
@HCI_VIDEO_OUT_CRT = common dso_local global i32 0, align 4
@HCI_VIDEO_OUT_TV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"lcd_out:                 %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"crt_out:                 %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"tv_out:                  %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @video_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.toshiba_acpi_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %12, align 8
  store %struct.toshiba_acpi_dev* %13, %struct.toshiba_acpi_dev** %6, align 8
  %14 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %6, align 8
  %15 = call i64 @get_video_status(%struct.toshiba_acpi_dev* %14, i32* %10)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %48

20:                                               ; preds = %2
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @HCI_VIDEO_OUT_LCD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @HCI_VIDEO_OUT_CRT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @HCI_VIDEO_OUT_TV, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  store i32 %38, i32* %9, align 4
  %39 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %20, %17
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @get_video_status(%struct.toshiba_acpi_dev*, i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
