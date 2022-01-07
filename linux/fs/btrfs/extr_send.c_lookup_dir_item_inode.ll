; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_lookup_dir_item_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_lookup_dir_item_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_dir_item = type { i32 }
%struct.btrfs_key = type { i64, i32 }
%struct.btrfs_path = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@BTRFS_ROOT_ITEM_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, i32, i8*, i32, i32*, i32*)* @lookup_dir_item_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_dir_item_inode(%struct.btrfs_root* %0, i32 %1, i8* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.btrfs_dir_item*, align 8
  %16 = alloca %struct.btrfs_key, align 8
  %17 = alloca %struct.btrfs_path*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %18 = call %struct.btrfs_path* (...) @alloc_path_for_send()
  store %struct.btrfs_path* %18, %struct.btrfs_path** %17, align 8
  %19 = load %struct.btrfs_path*, %struct.btrfs_path** %17, align 8
  %20 = icmp ne %struct.btrfs_path* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %76

24:                                               ; preds = %6
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %26 = load %struct.btrfs_path*, %struct.btrfs_path** %17, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call %struct.btrfs_dir_item* @btrfs_lookup_dir_item(i32* null, %struct.btrfs_root* %25, %struct.btrfs_path* %26, i32 %27, i8* %28, i32 %29, i32 0)
  store %struct.btrfs_dir_item* %30, %struct.btrfs_dir_item** %15, align 8
  %31 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %15, align 8
  %32 = call i64 @IS_ERR_OR_NULL(%struct.btrfs_dir_item* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %24
  %35 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %15, align 8
  %36 = icmp ne %struct.btrfs_dir_item* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %15, align 8
  %39 = call i32 @PTR_ERR(%struct.btrfs_dir_item* %38)
  br label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i32 [ %39, %37 ], [ %42, %40 ]
  store i32 %44, i32* %14, align 4
  br label %72

45:                                               ; preds = %24
  %46 = load %struct.btrfs_path*, %struct.btrfs_path** %17, align 8
  %47 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %15, align 8
  %52 = call i32 @btrfs_dir_item_key_to_cpu(i32 %50, %struct.btrfs_dir_item* %51, %struct.btrfs_key* %16)
  %53 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %16, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @BTRFS_ROOT_ITEM_KEY, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load i32, i32* @ENOENT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %14, align 4
  br label %72

60:                                               ; preds = %45
  %61 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %16, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %12, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.btrfs_path*, %struct.btrfs_path** %17, align 8
  %65 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %15, align 8
  %70 = call i32 @btrfs_dir_type(i32 %68, %struct.btrfs_dir_item* %69)
  %71 = load i32*, i32** %13, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %60, %57, %43
  %73 = load %struct.btrfs_path*, %struct.btrfs_path** %17, align 8
  %74 = call i32 @btrfs_free_path(%struct.btrfs_path* %73)
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %72, %21
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local %struct.btrfs_path* @alloc_path_for_send(...) #1

declare dso_local %struct.btrfs_dir_item* @btrfs_lookup_dir_item(i32*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.btrfs_dir_item*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i32 @btrfs_dir_item_key_to_cpu(i32, %struct.btrfs_dir_item*, %struct.btrfs_key*) #1

declare dso_local i32 @btrfs_dir_type(i32, %struct.btrfs_dir_item*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
