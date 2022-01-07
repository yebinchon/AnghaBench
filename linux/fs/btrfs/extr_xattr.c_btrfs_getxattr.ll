; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_xattr.c_btrfs_getxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_xattr.c_btrfs_getxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_dir_item = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.TYPE_3__ = type { %struct.btrfs_root* }

@ENOMEM = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_getxattr(%struct.inode* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.btrfs_dir_item*, align 8
  %11 = alloca %struct.btrfs_root*, align 8
  %12 = alloca %struct.btrfs_path*, align 8
  %13 = alloca %struct.extent_buffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  store %struct.btrfs_root* %19, %struct.btrfs_root** %11, align 8
  store i32 0, i32* %14, align 4
  %20 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %20, %struct.btrfs_path** %12, align 8
  %21 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %22 = icmp ne %struct.btrfs_path* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %96

26:                                               ; preds = %4
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %28 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %29)
  %31 = call i32 @btrfs_ino(%struct.TYPE_3__* %30)
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = call %struct.btrfs_dir_item* @btrfs_lookup_xattr(i32* null, %struct.btrfs_root* %27, %struct.btrfs_path* %28, i32 %31, i8* %32, i32 %34, i32 0)
  store %struct.btrfs_dir_item* %35, %struct.btrfs_dir_item** %10, align 8
  %36 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %37 = icmp ne %struct.btrfs_dir_item* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* @ENODATA, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %14, align 4
  br label %92

41:                                               ; preds = %26
  %42 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %43 = call i64 @IS_ERR(%struct.btrfs_dir_item* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %47 = call i32 @PTR_ERR(%struct.btrfs_dir_item* %46)
  store i32 %47, i32* %14, align 4
  br label %92

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %51 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %50, i32 0, i32 0
  %52 = load %struct.extent_buffer**, %struct.extent_buffer*** %51, align 8
  %53 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %52, i64 0
  %54 = load %struct.extent_buffer*, %struct.extent_buffer** %53, align 8
  store %struct.extent_buffer* %54, %struct.extent_buffer** %13, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %49
  %58 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %59 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %60 = call i64 @btrfs_dir_data_len(%struct.extent_buffer* %58, %struct.btrfs_dir_item* %59)
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %14, align 4
  br label %92

62:                                               ; preds = %49
  %63 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %64 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %65 = call i64 @btrfs_dir_data_len(%struct.extent_buffer* %63, %struct.btrfs_dir_item* %64)
  %66 = load i64, i64* %9, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @ERANGE, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %14, align 4
  br label %92

71:                                               ; preds = %62
  %72 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %73 = getelementptr inbounds %struct.btrfs_dir_item, %struct.btrfs_dir_item* %72, i64 1
  %74 = bitcast %struct.btrfs_dir_item* %73 to i8*
  %75 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %76 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %77 = call i32 @btrfs_dir_name_len(%struct.extent_buffer* %75, %struct.btrfs_dir_item* %76)
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %74, i64 %78
  %80 = ptrtoint i8* %79 to i64
  store i64 %80, i64* %15, align 8
  %81 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load i64, i64* %15, align 8
  %84 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %85 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %86 = call i64 @btrfs_dir_data_len(%struct.extent_buffer* %84, %struct.btrfs_dir_item* %85)
  %87 = call i32 @read_extent_buffer(%struct.extent_buffer* %81, i8* %82, i64 %83, i64 %86)
  %88 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %89 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %90 = call i64 @btrfs_dir_data_len(%struct.extent_buffer* %88, %struct.btrfs_dir_item* %89)
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %71, %68, %57, %45, %38
  %93 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %94 = call i32 @btrfs_free_path(%struct.btrfs_path* %93)
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %92, %23
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.TYPE_3__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local %struct.btrfs_dir_item* @btrfs_lookup_xattr(i32*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i8*, i32, i32) #1

declare dso_local i32 @btrfs_ino(%struct.TYPE_3__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i64 @btrfs_dir_data_len(%struct.extent_buffer*, %struct.btrfs_dir_item*) #1

declare dso_local i32 @btrfs_dir_name_len(%struct.extent_buffer*, %struct.btrfs_dir_item*) #1

declare dso_local i32 @read_extent_buffer(%struct.extent_buffer*, i8*, i64, i64) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
