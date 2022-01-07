; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_arxescsi.c_arxescsi_show_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_arxescsi.c_arxescsi_show_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.arxescsi_info = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"ARXE 16-bit SCSI driver v%s\0A\00", align 1
@VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.Scsi_Host*)* @arxescsi_show_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arxescsi_show_info(%struct.seq_file* %0, %struct.Scsi_Host* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.arxescsi_info*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.Scsi_Host* %1, %struct.Scsi_Host** %4, align 8
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %7 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.arxescsi_info*
  store %struct.arxescsi_info* %9, %struct.arxescsi_info** %5, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load i32, i32* @VERSION, align 4
  %12 = call i32 @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.arxescsi_info*, %struct.arxescsi_info** %5, align 8
  %14 = getelementptr inbounds %struct.arxescsi_info, %struct.arxescsi_info* %13, i32 0, i32 0
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = call i32 @fas216_print_host(i32* %14, %struct.seq_file* %15)
  %17 = load %struct.arxescsi_info*, %struct.arxescsi_info** %5, align 8
  %18 = getelementptr inbounds %struct.arxescsi_info, %struct.arxescsi_info* %17, i32 0, i32 0
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = call i32 @fas216_print_stats(i32* %18, %struct.seq_file* %19)
  %21 = load %struct.arxescsi_info*, %struct.arxescsi_info** %5, align 8
  %22 = getelementptr inbounds %struct.arxescsi_info, %struct.arxescsi_info* %21, i32 0, i32 0
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = call i32 @fas216_print_devices(i32* %22, %struct.seq_file* %23)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @fas216_print_host(i32*, %struct.seq_file*) #1

declare dso_local i32 @fas216_print_stats(i32*, %struct.seq_file*) #1

declare dso_local i32 @fas216_print_devices(i32*, %struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
