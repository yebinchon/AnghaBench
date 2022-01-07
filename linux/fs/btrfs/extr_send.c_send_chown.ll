; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_chown.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_chown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.fs_path = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"send_chown %llu uid=%llu, gid=%llu\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_SEND_C_CHOWN = common dso_local global i32 0, align 4
@BTRFS_SEND_A_PATH = common dso_local global i32 0, align 4
@BTRFS_SEND_A_UID = common dso_local global i32 0, align 4
@BTRFS_SEND_A_GID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, i32, i32, i32, i32)* @send_chown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_chown(%struct.send_ctx* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.send_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_fs_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fs_path*, align 8
  store %struct.send_ctx* %0, %struct.send_ctx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.send_ctx*, %struct.send_ctx** %7, align 8
  %16 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  store %struct.btrfs_fs_info* %19, %struct.btrfs_fs_info** %12, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @btrfs_debug(%struct.btrfs_fs_info* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %23)
  %25 = call %struct.fs_path* (...) @fs_path_alloc()
  store %struct.fs_path* %25, %struct.fs_path** %14, align 8
  %26 = load %struct.fs_path*, %struct.fs_path** %14, align 8
  %27 = icmp ne %struct.fs_path* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %67

31:                                               ; preds = %5
  %32 = load %struct.send_ctx*, %struct.send_ctx** %7, align 8
  %33 = load i32, i32* @BTRFS_SEND_C_CHOWN, align 4
  %34 = call i32 @begin_cmd(%struct.send_ctx* %32, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %63

38:                                               ; preds = %31
  %39 = load %struct.send_ctx*, %struct.send_ctx** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.fs_path*, %struct.fs_path** %14, align 8
  %43 = call i32 @get_cur_path(%struct.send_ctx* %39, i32 %40, i32 %41, %struct.fs_path* %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %63

47:                                               ; preds = %38
  %48 = load %struct.send_ctx*, %struct.send_ctx** %7, align 8
  %49 = load i32, i32* @BTRFS_SEND_A_PATH, align 4
  %50 = load %struct.fs_path*, %struct.fs_path** %14, align 8
  %51 = call i32 @TLV_PUT_PATH(%struct.send_ctx* %48, i32 %49, %struct.fs_path* %50)
  %52 = load %struct.send_ctx*, %struct.send_ctx** %7, align 8
  %53 = load i32, i32* @BTRFS_SEND_A_UID, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @TLV_PUT_U64(%struct.send_ctx* %52, i32 %53, i32 %54)
  %56 = load %struct.send_ctx*, %struct.send_ctx** %7, align 8
  %57 = load i32, i32* @BTRFS_SEND_A_GID, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @TLV_PUT_U64(%struct.send_ctx* %56, i32 %57, i32 %58)
  %60 = load %struct.send_ctx*, %struct.send_ctx** %7, align 8
  %61 = call i32 @send_cmd(%struct.send_ctx* %60)
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62, %46, %37
  %64 = load %struct.fs_path*, %struct.fs_path** %14, align 8
  %65 = call i32 @fs_path_free(%struct.fs_path* %64)
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %28
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @btrfs_debug(%struct.btrfs_fs_info*, i8*, i32, i32, i32) #1

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
