; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_cumana_2.c_cumanascsi_2_show_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_cumana_2.c_cumanascsi_2_show_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.cumanascsi2_info = type { i32, i64 }

@.str = private unnamed_addr constant [27 x i8] c"Cumana SCSI II driver v%s\0A\00", align 1
@VERSION = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Term    : o%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ff\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.Scsi_Host*)* @cumanascsi_2_show_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cumanascsi_2_show_info(%struct.seq_file* %0, %struct.Scsi_Host* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.cumanascsi2_info*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.Scsi_Host* %1, %struct.Scsi_Host** %4, align 8
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %7 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.cumanascsi2_info*
  store %struct.cumanascsi2_info* %9, %struct.cumanascsi2_info** %5, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load i8*, i8** @VERSION, align 8
  %12 = call i32 @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %5, align 8
  %14 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %13, i32 0, i32 0
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = call i32 @fas216_print_host(i32* %14, %struct.seq_file* %15)
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %5, align 8
  %19 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %24 = call i32 @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %5, align 8
  %26 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %25, i32 0, i32 0
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = call i32 @fas216_print_stats(i32* %26, %struct.seq_file* %27)
  %29 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %5, align 8
  %30 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %29, i32 0, i32 0
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = call i32 @fas216_print_devices(i32* %30, %struct.seq_file* %31)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

declare dso_local i32 @fas216_print_host(i32*, %struct.seq_file*) #1

declare dso_local i32 @fas216_print_stats(i32*, %struct.seq_file*) #1

declare dso_local i32 @fas216_print_devices(i32*, %struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
