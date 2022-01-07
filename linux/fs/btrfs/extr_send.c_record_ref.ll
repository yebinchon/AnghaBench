; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_record_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_record_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.fs_path = type { i32 }
%struct.list_head = type { i32 }
%struct.send_ctx = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, i32, %struct.fs_path*, i8*, %struct.list_head*)* @record_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record_ref(%struct.btrfs_root* %0, i32 %1, %struct.fs_path* %2, i8* %3, %struct.list_head* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fs_path*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.send_ctx*, align 8
  %14 = alloca %struct.fs_path*, align 8
  %15 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.fs_path* %2, %struct.fs_path** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.list_head* %4, %struct.list_head** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.send_ctx*
  store %struct.send_ctx* %17, %struct.send_ctx** %13, align 8
  %18 = call %struct.fs_path* (...) @fs_path_alloc()
  store %struct.fs_path* %18, %struct.fs_path** %14, align 8
  %19 = load %struct.fs_path*, %struct.fs_path** %14, align 8
  %20 = icmp ne %struct.fs_path* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %61

24:                                               ; preds = %5
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @get_inode_info(%struct.btrfs_root* %25, i32 %26, i32* null, i32* %15, i32* null, i32* null, i32* null, i32* null)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %53

31:                                               ; preds = %24
  %32 = load %struct.send_ctx*, %struct.send_ctx** %13, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load %struct.fs_path*, %struct.fs_path** %14, align 8
  %36 = call i32 @get_cur_path(%struct.send_ctx* %32, i32 %33, i32 %34, %struct.fs_path* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %53

40:                                               ; preds = %31
  %41 = load %struct.fs_path*, %struct.fs_path** %14, align 8
  %42 = load %struct.fs_path*, %struct.fs_path** %9, align 8
  %43 = call i32 @fs_path_add_path(%struct.fs_path* %41, %struct.fs_path* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %53

47:                                               ; preds = %40
  %48 = load %struct.list_head*, %struct.list_head** %11, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.fs_path*, %struct.fs_path** %14, align 8
  %52 = call i32 @__record_ref(%struct.list_head* %48, i32 %49, i32 %50, %struct.fs_path* %51)
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %47, %46, %39, %30
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.fs_path*, %struct.fs_path** %14, align 8
  %58 = call i32 @fs_path_free(%struct.fs_path* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %59, %21
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local %struct.fs_path* @fs_path_alloc(...) #1

declare dso_local i32 @get_inode_info(%struct.btrfs_root*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @get_cur_path(%struct.send_ctx*, i32, i32, %struct.fs_path*) #1

declare dso_local i32 @fs_path_add_path(%struct.fs_path*, %struct.fs_path*) #1

declare dso_local i32 @__record_ref(%struct.list_head*, i32, i32, %struct.fs_path*) #1

declare dso_local i32 @fs_path_free(%struct.fs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
