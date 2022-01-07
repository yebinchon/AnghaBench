; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_scsi_debug_show_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_scsi_debug_show_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdebug_queue = type { i32 }
%struct.seq_file = type { i32 }
%struct.Scsi_Host = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"scsi_debug adapter driver, version %s [%s]\0A\00", align 1
@SDEBUG_VERSION = common dso_local global i32 0, align 4
@sdebug_version_date = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"num_tgts=%d, %ssize=%d MB, opts=0x%x, every_nth=%d\0A\00", align 1
@sdebug_num_tgts = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"shared (ram) \00", align 1
@sdebug_dev_size_mb = common dso_local global i32 0, align 4
@sdebug_opts = common dso_local global i32 0, align 4
@sdebug_every_nth = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"delay=%d, ndelay=%d, max_luns=%d, sector_size=%d %s\0A\00", align 1
@sdebug_jdelay = common dso_local global i32 0, align 4
@sdebug_ndelay = common dso_local global i32 0, align 4
@sdebug_max_luns = common dso_local global i32 0, align 4
@sdebug_sector_size = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"cylinders=%d, heads=%d, sectors=%d, command aborts=%d\0A\00", align 1
@sdebug_cylinders_per = common dso_local global i32 0, align 4
@sdebug_heads = common dso_local global i32 0, align 4
@sdebug_sectors_per = common dso_local global i32 0, align 4
@num_aborts = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"RESETs: device=%d, target=%d, bus=%d, host=%d\0A\00", align 1
@num_dev_resets = common dso_local global i32 0, align 4
@num_target_resets = common dso_local global i32 0, align 4
@num_bus_resets = common dso_local global i32 0, align 4
@num_host_resets = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"dix_reads=%d, dix_writes=%d, dif_errors=%d\0A\00", align 1
@dix_reads = common dso_local global i8* null, align 8
@dix_writes = common dso_local global i32 0, align 4
@dif_errors = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"usec_in_jiffy=%lu, statistics=%d\0A\00", align 1
@TICK_NSEC = common dso_local global i32 0, align 4
@sdebug_statistics = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [48 x i8] c"cmnd_count=%d, completions=%d, %s=%d, a_tsf=%d\0A\00", align 1
@sdebug_cmnd_count = common dso_local global i32 0, align 4
@sdebug_completions = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"miss_cpus\00", align 1
@sdebug_miss_cpus = common dso_local global i32 0, align 4
@sdebug_a_tsf = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"submit_queues=%d\0A\00", align 1
@submit_queues = common dso_local global i32 0, align 4
@sdebug_q_arr = common dso_local global %struct.sdebug_queue* null, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"  queue %d:\0A\00", align 1
@sdebug_max_queue = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"    in_use_bm BUSY: %s: %d,%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"first,last bits\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.Scsi_Host*)* @scsi_debug_show_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_debug_show_info(%struct.seq_file* %0, %struct.Scsi_Host* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sdebug_queue*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.Scsi_Host* %1, %struct.Scsi_Host** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = load i32, i32* @SDEBUG_VERSION, align 4
  %11 = load i32, i32* @sdebug_version_date, align 4
  %12 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = load i32, i32* @sdebug_num_tgts, align 4
  %15 = load i32, i32* @sdebug_dev_size_mb, align 4
  %16 = load i32, i32* @sdebug_opts, align 4
  %17 = load i32, i32* @sdebug_every_nth, align 4
  %18 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %15, i32 %16, i32 %17)
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = load i32, i32* @sdebug_jdelay, align 4
  %21 = load i32, i32* @sdebug_ndelay, align 4
  %22 = load i32, i32* @sdebug_max_luns, align 4
  %23 = load i32, i32* @sdebug_sector_size, align 4
  %24 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %20, i32 %21, i32 %22, i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = load i32, i32* @sdebug_cylinders_per, align 4
  %27 = load i32, i32* @sdebug_heads, align 4
  %28 = load i32, i32* @sdebug_sectors_per, align 4
  %29 = load i32, i32* @num_aborts, align 4
  %30 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = load i32, i32* @num_dev_resets, align 4
  %33 = load i32, i32* @num_target_resets, align 4
  %34 = load i32, i32* @num_bus_resets, align 4
  %35 = load i32, i32* @num_host_resets, align 4
  %36 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = load i8*, i8** @dix_reads, align 8
  %39 = load i32, i32* @dix_writes, align 4
  %40 = load i32, i32* @dif_errors, align 4
  %41 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8* %38, i32 %39, i32 %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = load i32, i32* @TICK_NSEC, align 4
  %44 = sdiv i32 %43, 1000
  %45 = load i32, i32* @sdebug_statistics, align 4
  %46 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %48 = call i32 @atomic_read(i32* @sdebug_cmnd_count)
  %49 = call i32 @atomic_read(i32* @sdebug_completions)
  %50 = call i32 @atomic_read(i32* @sdebug_miss_cpus)
  %51 = call i32 @atomic_read(i32* @sdebug_a_tsf)
  %52 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %47, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 %48, i32 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = load i32, i32* @submit_queues, align 4
  %55 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %54)
  store i32 0, i32* %6, align 4
  %56 = load %struct.sdebug_queue*, %struct.sdebug_queue** @sdebug_q_arr, align 8
  store %struct.sdebug_queue* %56, %struct.sdebug_queue** %8, align 8
  br label %57

57:                                               ; preds = %84, %2
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @submit_queues, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %89

61:                                               ; preds = %57
  %62 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %63)
  %65 = load %struct.sdebug_queue*, %struct.sdebug_queue** %8, align 8
  %66 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @sdebug_max_queue, align 4
  %69 = call i32 @find_first_bit(i32 %67, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @sdebug_max_queue, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %61
  %74 = load %struct.sdebug_queue*, %struct.sdebug_queue** %8, align 8
  %75 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @sdebug_max_queue, align 4
  %78 = call i32 @find_last_bit(i32 %76, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %73, %61
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  %87 = load %struct.sdebug_queue*, %struct.sdebug_queue** %8, align 8
  %88 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %87, i32 1
  store %struct.sdebug_queue* %88, %struct.sdebug_queue** %8, align 8
  br label %57

89:                                               ; preds = %57
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @find_last_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
