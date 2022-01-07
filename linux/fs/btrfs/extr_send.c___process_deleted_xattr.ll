; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c___process_deleted_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c___process_deleted_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_key = type { i32 }
%struct.send_ctx = type { i32, i32 }
%struct.fs_path = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.btrfs_key*, i8*, i32, i8*, i32, i32, i8*)* @__process_deleted_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__process_deleted_xattr(i32 %0, %struct.btrfs_key* %1, i8* %2, i32 %3, i8* %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.btrfs_key*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.send_ctx*, align 8
  %20 = alloca %struct.fs_path*, align 8
  store i32 %0, i32* %10, align 4
  store %struct.btrfs_key* %1, %struct.btrfs_key** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %21 = load i8*, i8** %17, align 8
  %22 = bitcast i8* %21 to %struct.send_ctx*
  store %struct.send_ctx* %22, %struct.send_ctx** %19, align 8
  %23 = call %struct.fs_path* (...) @fs_path_alloc()
  store %struct.fs_path* %23, %struct.fs_path** %20, align 8
  %24 = load %struct.fs_path*, %struct.fs_path** %20, align 8
  %25 = icmp ne %struct.fs_path* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %8
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %52

29:                                               ; preds = %8
  %30 = load %struct.send_ctx*, %struct.send_ctx** %19, align 8
  %31 = load %struct.send_ctx*, %struct.send_ctx** %19, align 8
  %32 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.send_ctx*, %struct.send_ctx** %19, align 8
  %35 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fs_path*, %struct.fs_path** %20, align 8
  %38 = call i32 @get_cur_path(%struct.send_ctx* %30, i32 %33, i32 %36, %struct.fs_path* %37)
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %18, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %48

42:                                               ; preds = %29
  %43 = load %struct.send_ctx*, %struct.send_ctx** %19, align 8
  %44 = load %struct.fs_path*, %struct.fs_path** %20, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @send_remove_xattr(%struct.send_ctx* %43, %struct.fs_path* %44, i8* %45, i32 %46)
  store i32 %47, i32* %18, align 4
  br label %48

48:                                               ; preds = %42, %41
  %49 = load %struct.fs_path*, %struct.fs_path** %20, align 8
  %50 = call i32 @fs_path_free(%struct.fs_path* %49)
  %51 = load i32, i32* %18, align 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %48, %26
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

declare dso_local %struct.fs_path* @fs_path_alloc(...) #1

declare dso_local i32 @get_cur_path(%struct.send_ctx*, i32, i32, %struct.fs_path*) #1

declare dso_local i32 @send_remove_xattr(%struct.send_ctx*, %struct.fs_path*, i8*, i32) #1

declare dso_local i32 @fs_path_free(%struct.fs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
