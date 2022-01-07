; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.fs_path = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"send_write offset=%llu, len=%d\00", align 1
@BTRFS_SEND_C_WRITE = common dso_local global i32 0, align 4
@BTRFS_SEND_A_PATH = common dso_local global i32 0, align 4
@BTRFS_SEND_A_FILE_OFFSET = common dso_local global i32 0, align 4
@BTRFS_SEND_A_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, i32, i32)* @send_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_write(%struct.send_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.send_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fs_path*, align 8
  %11 = alloca i32, align 4
  store %struct.send_ctx* %0, %struct.send_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %15, align 8
  store %struct.btrfs_fs_info* %16, %struct.btrfs_fs_info** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %17 = call %struct.fs_path* (...) @fs_path_alloc()
  store %struct.fs_path* %17, %struct.fs_path** %10, align 8
  %18 = load %struct.fs_path*, %struct.fs_path** %10, align 8
  %19 = icmp ne %struct.fs_path* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %88

23:                                               ; preds = %3
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @btrfs_debug(%struct.btrfs_fs_info* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @fill_read_buf(%struct.send_ctx* %28, i32 %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %23
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %37, %34
  br label %79

40:                                               ; preds = %23
  %41 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %42 = load i32, i32* @BTRFS_SEND_C_WRITE, align 4
  %43 = call i32 @begin_cmd(%struct.send_ctx* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %79

47:                                               ; preds = %40
  %48 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %49 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %50 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fs_path*, %struct.fs_path** %10, align 8
  %56 = call i32 @get_cur_path(%struct.send_ctx* %48, i32 %51, i32 %54, %struct.fs_path* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %79

60:                                               ; preds = %47
  %61 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %62 = load i32, i32* @BTRFS_SEND_A_PATH, align 4
  %63 = load %struct.fs_path*, %struct.fs_path** %10, align 8
  %64 = call i32 @TLV_PUT_PATH(%struct.send_ctx* %61, i32 %62, %struct.fs_path* %63)
  %65 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %66 = load i32, i32* @BTRFS_SEND_A_FILE_OFFSET, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @TLV_PUT_U64(%struct.send_ctx* %65, i32 %66, i32 %67)
  %69 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %70 = load i32, i32* @BTRFS_SEND_A_DATA, align 4
  %71 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %72 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @TLV_PUT(%struct.send_ctx* %69, i32 %70, i32 %73, i32 %74)
  %76 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %77 = call i32 @send_cmd(%struct.send_ctx* %76)
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %60
  br label %79

79:                                               ; preds = %78, %59, %46, %39
  %80 = load %struct.fs_path*, %struct.fs_path** %10, align 8
  %81 = call i32 @fs_path_free(%struct.fs_path* %80)
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %4, align 4
  br label %88

86:                                               ; preds = %79
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %84, %20
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.fs_path* @fs_path_alloc(...) #1

declare dso_local i32 @btrfs_debug(%struct.btrfs_fs_info*, i8*, i32, i32) #1

declare dso_local i32 @fill_read_buf(%struct.send_ctx*, i32, i32) #1

declare dso_local i32 @begin_cmd(%struct.send_ctx*, i32) #1

declare dso_local i32 @get_cur_path(%struct.send_ctx*, i32, i32, %struct.fs_path*) #1

declare dso_local i32 @TLV_PUT_PATH(%struct.send_ctx*, i32, %struct.fs_path*) #1

declare dso_local i32 @TLV_PUT_U64(%struct.send_ctx*, i32, i32) #1

declare dso_local i32 @TLV_PUT(%struct.send_ctx*, i32, i32, i32) #1

declare dso_local i32 @send_cmd(%struct.send_ctx*) #1

declare dso_local i32 @fs_path_free(%struct.fs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
