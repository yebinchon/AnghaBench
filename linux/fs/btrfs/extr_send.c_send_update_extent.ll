; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_update_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_update_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32, i32 }
%struct.fs_path = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_SEND_C_UPDATE_EXTENT = common dso_local global i32 0, align 4
@BTRFS_SEND_A_PATH = common dso_local global i32 0, align 4
@BTRFS_SEND_A_FILE_OFFSET = common dso_local global i32 0, align 4
@BTRFS_SEND_A_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, i32, i32)* @send_update_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_update_extent(%struct.send_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.send_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fs_path*, align 8
  store %struct.send_ctx* %0, %struct.send_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = call %struct.fs_path* (...) @fs_path_alloc()
  store %struct.fs_path* %10, %struct.fs_path** %9, align 8
  %11 = load %struct.fs_path*, %struct.fs_path** %9, align 8
  %12 = icmp ne %struct.fs_path* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %56

16:                                               ; preds = %3
  %17 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %18 = load i32, i32* @BTRFS_SEND_C_UPDATE_EXTENT, align 4
  %19 = call i32 @begin_cmd(%struct.send_ctx* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %52

23:                                               ; preds = %16
  %24 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %25 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fs_path*, %struct.fs_path** %9, align 8
  %32 = call i32 @get_cur_path(%struct.send_ctx* %24, i32 %27, i32 %30, %struct.fs_path* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %52

36:                                               ; preds = %23
  %37 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %38 = load i32, i32* @BTRFS_SEND_A_PATH, align 4
  %39 = load %struct.fs_path*, %struct.fs_path** %9, align 8
  %40 = call i32 @TLV_PUT_PATH(%struct.send_ctx* %37, i32 %38, %struct.fs_path* %39)
  %41 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %42 = load i32, i32* @BTRFS_SEND_A_FILE_OFFSET, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @TLV_PUT_U64(%struct.send_ctx* %41, i32 %42, i32 %43)
  %45 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %46 = load i32, i32* @BTRFS_SEND_A_SIZE, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @TLV_PUT_U64(%struct.send_ctx* %45, i32 %46, i32 %47)
  %49 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %50 = call i32 @send_cmd(%struct.send_ctx* %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51, %35, %22
  %53 = load %struct.fs_path*, %struct.fs_path** %9, align 8
  %54 = call i32 @fs_path_free(%struct.fs_path* %53)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %13
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

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
