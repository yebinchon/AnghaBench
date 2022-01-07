; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_add_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_add_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.inode = type { i64 }
%struct.btrfs_dir_item = type { i32 }
%struct.btrfs_key = type { i32 }
%struct.btrfs_path = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*, %struct.inode*, i8*, i32, i32)* @add_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_link(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.inode* %2, %struct.inode* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_trans_handle*, align 8
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.btrfs_dir_item*, align 8
  %17 = alloca %struct.btrfs_key, align 4
  %18 = alloca %struct.btrfs_path*, align 8
  %19 = alloca %struct.inode*, align 8
  %20 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %9, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %10, align 8
  store %struct.inode* %2, %struct.inode** %11, align 8
  store %struct.inode* %3, %struct.inode** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.inode* null, %struct.inode** %19, align 8
  %21 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %21, %struct.btrfs_path** %18, align 8
  %22 = load %struct.btrfs_path*, %struct.btrfs_path** %18, align 8
  %23 = icmp ne %struct.btrfs_path* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %112

27:                                               ; preds = %7
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %29 = load %struct.btrfs_path*, %struct.btrfs_path** %18, align 8
  %30 = load %struct.inode*, %struct.inode** %11, align 8
  %31 = call i32 @BTRFS_I(%struct.inode* %30)
  %32 = call i32 @btrfs_ino(i32 %31)
  %33 = load i8*, i8** %13, align 8
  %34 = load i32, i32* %14, align 4
  %35 = call %struct.btrfs_dir_item* @btrfs_lookup_dir_item(i32* null, %struct.btrfs_root* %28, %struct.btrfs_path* %29, i32 %32, i8* %33, i32 %34, i32 0)
  store %struct.btrfs_dir_item* %35, %struct.btrfs_dir_item** %16, align 8
  %36 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %16, align 8
  %37 = icmp ne %struct.btrfs_dir_item* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %27
  %39 = load %struct.btrfs_path*, %struct.btrfs_path** %18, align 8
  %40 = call i32 @btrfs_release_path(%struct.btrfs_path* %39)
  br label %96

41:                                               ; preds = %27
  %42 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %16, align 8
  %43 = call i64 @IS_ERR(%struct.btrfs_dir_item* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %16, align 8
  %47 = call i32 @PTR_ERR(%struct.btrfs_dir_item* %46)
  store i32 %47, i32* %20, align 4
  br label %106

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.btrfs_path*, %struct.btrfs_path** %18, align 8
  %51 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %16, align 8
  %56 = call i32 @btrfs_dir_item_key_to_cpu(i32 %54, %struct.btrfs_dir_item* %55, %struct.btrfs_key* %17)
  %57 = load %struct.btrfs_path*, %struct.btrfs_path** %18, align 8
  %58 = call i32 @btrfs_release_path(%struct.btrfs_path* %57)
  %59 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %60 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.inode* @read_one_inode(%struct.btrfs_root* %59, i32 %61)
  store %struct.inode* %62, %struct.inode** %19, align 8
  %63 = load %struct.inode*, %struct.inode** %19, align 8
  %64 = icmp ne %struct.inode* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %49
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %20, align 4
  br label %106

68:                                               ; preds = %49
  %69 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %70 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %71 = load %struct.inode*, %struct.inode** %11, align 8
  %72 = call i32 @BTRFS_I(%struct.inode* %71)
  %73 = load %struct.inode*, %struct.inode** %19, align 8
  %74 = call i32 @BTRFS_I(%struct.inode* %73)
  %75 = load i8*, i8** %13, align 8
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @btrfs_unlink_inode(%struct.btrfs_trans_handle* %69, %struct.btrfs_root* %70, i32 %72, i32 %74, i8* %75, i32 %76)
  store i32 %77, i32* %20, align 4
  %78 = load i32, i32* %20, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  br label %106

81:                                               ; preds = %68
  %82 = load %struct.inode*, %struct.inode** %19, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.inode*, %struct.inode** %19, align 8
  %88 = call i32 @inc_nlink(%struct.inode* %87)
  br label %89

89:                                               ; preds = %86, %81
  %90 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %91 = call i32 @btrfs_run_delayed_items(%struct.btrfs_trans_handle* %90)
  store i32 %91, i32* %20, align 4
  %92 = load i32, i32* %20, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %106

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95, %38
  %97 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %98 = load %struct.inode*, %struct.inode** %11, align 8
  %99 = call i32 @BTRFS_I(%struct.inode* %98)
  %100 = load %struct.inode*, %struct.inode** %12, align 8
  %101 = call i32 @BTRFS_I(%struct.inode* %100)
  %102 = load i8*, i8** %13, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @btrfs_add_link(%struct.btrfs_trans_handle* %97, i32 %99, i32 %101, i8* %102, i32 %103, i32 0, i32 %104)
  store i32 %105, i32* %20, align 4
  br label %106

106:                                              ; preds = %96, %94, %80, %65, %45
  %107 = load %struct.inode*, %struct.inode** %19, align 8
  %108 = call i32 @iput(%struct.inode* %107)
  %109 = load %struct.btrfs_path*, %struct.btrfs_path** %18, align 8
  %110 = call i32 @btrfs_free_path(%struct.btrfs_path* %109)
  %111 = load i32, i32* %20, align 4
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %106, %24
  %113 = load i32, i32* %8, align 4
  ret i32 %113
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local %struct.btrfs_dir_item* @btrfs_lookup_dir_item(i32*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i8*, i32, i32) #1

declare dso_local i32 @btrfs_ino(i32) #1

declare dso_local i32 @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i32 @btrfs_dir_item_key_to_cpu(i32, %struct.btrfs_dir_item*, %struct.btrfs_key*) #1

declare dso_local %struct.inode* @read_one_inode(%struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_unlink_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32, i32, i8*, i32) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @btrfs_run_delayed_items(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_add_link(%struct.btrfs_trans_handle*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
