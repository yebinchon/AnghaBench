; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.fs_path = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"send_link %s -> %s\00", align 1
@BTRFS_SEND_C_LINK = common dso_local global i32 0, align 4
@BTRFS_SEND_A_PATH = common dso_local global i32 0, align 4
@BTRFS_SEND_A_PATH_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, %struct.fs_path*, %struct.fs_path*)* @send_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_link(%struct.send_ctx* %0, %struct.fs_path* %1, %struct.fs_path* %2) #0 {
  %4 = alloca %struct.send_ctx*, align 8
  %5 = alloca %struct.fs_path*, align 8
  %6 = alloca %struct.fs_path*, align 8
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca i32, align 4
  store %struct.send_ctx* %0, %struct.send_ctx** %4, align 8
  store %struct.fs_path* %1, %struct.fs_path** %5, align 8
  store %struct.fs_path* %2, %struct.fs_path** %6, align 8
  %9 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  store %struct.btrfs_fs_info* %13, %struct.btrfs_fs_info** %7, align 8
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %15 = load %struct.fs_path*, %struct.fs_path** %5, align 8
  %16 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.fs_path*, %struct.fs_path** %6, align 8
  %19 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @btrfs_debug(%struct.btrfs_fs_info* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %23 = load i32, i32* @BTRFS_SEND_C_LINK, align 4
  %24 = call i32 @begin_cmd(%struct.send_ctx* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %40

28:                                               ; preds = %3
  %29 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %30 = load i32, i32* @BTRFS_SEND_A_PATH, align 4
  %31 = load %struct.fs_path*, %struct.fs_path** %5, align 8
  %32 = call i32 @TLV_PUT_PATH(%struct.send_ctx* %29, i32 %30, %struct.fs_path* %31)
  %33 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %34 = load i32, i32* @BTRFS_SEND_A_PATH_LINK, align 4
  %35 = load %struct.fs_path*, %struct.fs_path** %6, align 8
  %36 = call i32 @TLV_PUT_PATH(%struct.send_ctx* %33, i32 %34, %struct.fs_path* %35)
  %37 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %38 = call i32 @send_cmd(%struct.send_ctx* %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %27
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

declare dso_local i32 @btrfs_debug(%struct.btrfs_fs_info*, i8*, i32, i32) #1

declare dso_local i32 @begin_cmd(%struct.send_ctx*, i32) #1

declare dso_local i32 @TLV_PUT_PATH(%struct.send_ctx*, i32, %struct.fs_path*) #1

declare dso_local i32 @send_cmd(%struct.send_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
