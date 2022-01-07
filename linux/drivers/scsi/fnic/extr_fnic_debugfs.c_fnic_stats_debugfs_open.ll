; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_debugfs.c_fnic_stats_debugfs_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_debugfs.c_fnic_stats_debugfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.fnic* }
%struct.fnic = type { %struct.fnic_stats }
%struct.fnic_stats = type { i32 }
%struct.file = type { %struct.stats_debug_info* }
%struct.stats_debug_info = type { i32, i32, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @fnic_stats_debugfs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnic_stats_debugfs_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.fnic*, align 8
  %7 = alloca %struct.fnic_stats*, align 8
  %8 = alloca %struct.stats_debug_info*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.fnic*, %struct.fnic** %11, align 8
  store %struct.fnic* %12, %struct.fnic** %6, align 8
  %13 = load %struct.fnic*, %struct.fnic** %6, align 8
  %14 = getelementptr inbounds %struct.fnic, %struct.fnic* %13, i32 0, i32 0
  store %struct.fnic_stats* %14, %struct.fnic_stats** %7, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = mul nsw i32 2, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.stats_debug_info* @kzalloc(i32 16, i32 %17)
  store %struct.stats_debug_info* %18, %struct.stats_debug_info** %8, align 8
  %19 = load %struct.stats_debug_info*, %struct.stats_debug_info** %8, align 8
  %20 = icmp ne %struct.stats_debug_info* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %56

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @vmalloc(i32 %25)
  %27 = load %struct.stats_debug_info*, %struct.stats_debug_info** %8, align 8
  %28 = getelementptr inbounds %struct.stats_debug_info, %struct.stats_debug_info* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load %struct.stats_debug_info*, %struct.stats_debug_info** %8, align 8
  %30 = getelementptr inbounds %struct.stats_debug_info, %struct.stats_debug_info* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %24
  %34 = load %struct.stats_debug_info*, %struct.stats_debug_info** %8, align 8
  %35 = call i32 @kfree(%struct.stats_debug_info* %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %56

38:                                               ; preds = %24
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.stats_debug_info*, %struct.stats_debug_info** %8, align 8
  %41 = getelementptr inbounds %struct.stats_debug_info, %struct.stats_debug_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.stats_debug_info*, %struct.stats_debug_info** %8, align 8
  %43 = getelementptr inbounds %struct.stats_debug_info, %struct.stats_debug_info* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @memset(i8* %45, i32 0, i32 %46)
  %48 = load %struct.stats_debug_info*, %struct.stats_debug_info** %8, align 8
  %49 = load %struct.fnic_stats*, %struct.fnic_stats** %7, align 8
  %50 = call i32 @fnic_get_stats_data(%struct.stats_debug_info* %48, %struct.fnic_stats* %49)
  %51 = load %struct.stats_debug_info*, %struct.stats_debug_info** %8, align 8
  %52 = getelementptr inbounds %struct.stats_debug_info, %struct.stats_debug_info* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.stats_debug_info*, %struct.stats_debug_info** %8, align 8
  %54 = load %struct.file*, %struct.file** %5, align 8
  %55 = getelementptr inbounds %struct.file, %struct.file* %54, i32 0, i32 0
  store %struct.stats_debug_info* %53, %struct.stats_debug_info** %55, align 8
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %38, %33, %21
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.stats_debug_info* @kzalloc(i32, i32) #1

declare dso_local i64 @vmalloc(i32) #1

declare dso_local i32 @kfree(%struct.stats_debug_info*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fnic_get_stats_data(%struct.stats_debug_info*, %struct.fnic_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
