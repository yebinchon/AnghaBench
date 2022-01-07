; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_setup_dbgfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_setup_dbgfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_ctx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@perf_dbgfs_topdir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"DebugFS unsupported\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@perf_dbgfs_info = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"run\00", align 1
@perf_dbgfs_run = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"threads_count\00", align 1
@perf_dbgfs_tcnt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"chunk_order\00", align 1
@chunk_order = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"total_order\00", align 1
@total_order = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"use_dma\00", align 1
@use_dma = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_ctx*)* @perf_setup_dbgfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_setup_dbgfs(%struct.perf_ctx* %0) #0 {
  %2 = alloca %struct.perf_ctx*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.perf_ctx* %0, %struct.perf_ctx** %2, align 8
  %4 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %3, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = call i32 @pci_name(%struct.pci_dev* %9)
  %11 = load i32, i32* @perf_dbgfs_topdir, align 4
  %12 = call i32 @debugfs_create_dir(i32 %10, i32 %11)
  %13 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %21 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @dev_warn(i32* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %53

25:                                               ; preds = %1
  %26 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %27 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %30 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 384, i32 %28, %struct.perf_ctx* %29, i32* @perf_dbgfs_info)
  %31 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %35 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 384, i32 %33, %struct.perf_ctx* %34, i32* @perf_dbgfs_run)
  %36 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %37 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %40 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 384, i32 %38, %struct.perf_ctx* %39, i32* @perf_dbgfs_tcnt)
  %41 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %42 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 320, i32 %43, i32* @chunk_order)
  %45 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %46 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 320, i32 %47, i32* @total_order)
  %49 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %50 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 320, i32 %51, i32* @use_dma)
  br label %53

53:                                               ; preds = %25, %19
  ret void
}

declare dso_local i32 @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.perf_ctx*, i32*) #1

declare dso_local i32 @debugfs_create_u8(i8*, i32, i32, i32*) #1

declare dso_local i32 @debugfs_create_bool(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
