; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_debugfs.c_rsi_sdio_stats_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_debugfs.c_rsi_sdio_stats_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.rsi_common* }
%struct.rsi_common = type { %struct.rsi_hw* }
%struct.rsi_hw = type { i64 }
%struct.rsi_91x_sdiodev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"total_sdio_interrupts: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"sdio_msdu_pending_intr_count: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"sdio_buff_full_count : %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"sdio_buf_semi_full_count %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"sdio_unknown_intr_count: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"BUFFER FULL STATUS  : %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"SEMI BUFFER FULL STATUS  : %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"MGMT BUFFER FULL STATUS  : %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"BUFFER FULL COUNTER  : %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"BUFFER SEMI FULL COUNTER  : %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"MGMT BUFFER FULL COUNTER  : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @rsi_sdio_stats_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsi_sdio_stats_read(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rsi_common*, align 8
  %6 = alloca %struct.rsi_hw*, align 8
  %7 = alloca %struct.rsi_91x_sdiodev*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.rsi_common*, %struct.rsi_common** %9, align 8
  store %struct.rsi_common* %10, %struct.rsi_common** %5, align 8
  %11 = load %struct.rsi_common*, %struct.rsi_common** %5, align 8
  %12 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %11, i32 0, i32 0
  %13 = load %struct.rsi_hw*, %struct.rsi_hw** %12, align 8
  store %struct.rsi_hw* %13, %struct.rsi_hw** %6, align 8
  %14 = load %struct.rsi_hw*, %struct.rsi_hw** %6, align 8
  %15 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.rsi_91x_sdiodev*
  store %struct.rsi_91x_sdiodev* %17, %struct.rsi_91x_sdiodev** %7, align 8
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %7, align 8
  %20 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %7, align 8
  %26 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %7, align 8
  %32 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %7, align 8
  %38 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %7, align 8
  %44 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  %48 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %49 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %7, align 8
  %50 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %52)
  %54 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %55 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %7, align 8
  %56 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @seq_printf(%struct.seq_file* %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %58)
  %60 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %61 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %7, align 8
  %62 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %64)
  %66 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %67 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %7, align 8
  %68 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %70)
  %72 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %73 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %7, align 8
  %74 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @seq_printf(%struct.seq_file* %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %76)
  %78 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %79 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %7, align 8
  %80 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @seq_printf(%struct.seq_file* %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %82)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
