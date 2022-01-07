; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.fs_path = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"send_unlink %s\00", align 1
@BTRFS_SEND_C_UNLINK = common dso_local global i32 0, align 4
@BTRFS_SEND_A_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, %struct.fs_path*)* @send_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_unlink(%struct.send_ctx* %0, %struct.fs_path* %1) #0 {
  %3 = alloca %struct.send_ctx*, align 8
  %4 = alloca %struct.fs_path*, align 8
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca i32, align 4
  store %struct.send_ctx* %0, %struct.send_ctx** %3, align 8
  store %struct.fs_path* %1, %struct.fs_path** %4, align 8
  %7 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  store %struct.btrfs_fs_info* %11, %struct.btrfs_fs_info** %5, align 8
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %13 = load %struct.fs_path*, %struct.fs_path** %4, align 8
  %14 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @btrfs_debug(%struct.btrfs_fs_info* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %18 = load i32, i32* @BTRFS_SEND_C_UNLINK, align 4
  %19 = call i32 @begin_cmd(%struct.send_ctx* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %31

23:                                               ; preds = %2
  %24 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %25 = load i32, i32* @BTRFS_SEND_A_PATH, align 4
  %26 = load %struct.fs_path*, %struct.fs_path** %4, align 8
  %27 = call i32 @TLV_PUT_PATH(%struct.send_ctx* %24, i32 %25, %struct.fs_path* %26)
  %28 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %29 = call i32 @send_cmd(%struct.send_ctx* %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %22
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @btrfs_debug(%struct.btrfs_fs_info*, i8*, i32) #1

declare dso_local i32 @begin_cmd(%struct.send_ctx*, i32) #1

declare dso_local i32 @TLV_PUT_PATH(%struct.send_ctx*, i32, %struct.fs_path*) #1

declare dso_local i32 @send_cmd(%struct.send_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
