; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_truncate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.fs_path = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"send_truncate %llu size=%llu\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_SEND_C_TRUNCATE = common dso_local global i32 0, align 4
@BTRFS_SEND_A_PATH = common dso_local global i32 0, align 4
@BTRFS_SEND_A_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, i32, i32, i32)* @send_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_truncate(%struct.send_ctx* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.send_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_fs_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fs_path*, align 8
  store %struct.send_ctx* %0, %struct.send_ctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %14 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  store %struct.btrfs_fs_info* %17, %struct.btrfs_fs_info** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @btrfs_debug(%struct.btrfs_fs_info* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = call %struct.fs_path* (...) @fs_path_alloc()
  store %struct.fs_path* %22, %struct.fs_path** %12, align 8
  %23 = load %struct.fs_path*, %struct.fs_path** %12, align 8
  %24 = icmp ne %struct.fs_path* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %60

28:                                               ; preds = %4
  %29 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %30 = load i32, i32* @BTRFS_SEND_C_TRUNCATE, align 4
  %31 = call i32 @begin_cmd(%struct.send_ctx* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %56

35:                                               ; preds = %28
  %36 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.fs_path*, %struct.fs_path** %12, align 8
  %40 = call i32 @get_cur_path(%struct.send_ctx* %36, i32 %37, i32 %38, %struct.fs_path* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %56

44:                                               ; preds = %35
  %45 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %46 = load i32, i32* @BTRFS_SEND_A_PATH, align 4
  %47 = load %struct.fs_path*, %struct.fs_path** %12, align 8
  %48 = call i32 @TLV_PUT_PATH(%struct.send_ctx* %45, i32 %46, %struct.fs_path* %47)
  %49 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %50 = load i32, i32* @BTRFS_SEND_A_SIZE, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @TLV_PUT_U64(%struct.send_ctx* %49, i32 %50, i32 %51)
  %53 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %54 = call i32 @send_cmd(%struct.send_ctx* %53)
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %43, %34
  %57 = load %struct.fs_path*, %struct.fs_path** %12, align 8
  %58 = call i32 @fs_path_free(%struct.fs_path* %57)
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %25
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @btrfs_debug(%struct.btrfs_fs_info*, i8*, i32, i32) #1

declare dso_local %struct.fs_path* @fs_path_alloc(...) #1

declare dso_local i32 @begin_cmd(%struct.send_ctx*, i32) #1

declare dso_local i32 @get_cur_path(%struct.send_ctx*, i32, i32, %struct.fs_path*) #1

declare dso_local i32 @TLV_PUT_PATH(%struct.send_ctx*, i32, %struct.fs_path*) #1

declare dso_local i32 @TLV_PUT_U64(%struct.send_ctx*, i32, i32) #1

declare dso_local i32 @send_cmd(%struct.send_ctx*) #1

declare dso_local i32 @fs_path_free(%struct.fs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
