; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-inode.c_btrfs_insert_delayed_dir_index.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-inode.c_btrfs_insert_delayed_dir_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32, i32 }
%struct.btrfs_inode = type { i32 }
%struct.btrfs_disk_key = type { i32 }
%struct.btrfs_delayed_node = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.btrfs_delayed_item = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.btrfs_dir_item = type { %struct.btrfs_disk_key }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_DIR_INDEX_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [129 x i8] c"err add delayed dir index item(name: %.*s) into the insertion tree of the delayed node(root id: %llu, inode id: %llu, errno: %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_insert_delayed_dir_index(%struct.btrfs_trans_handle* %0, i8* %1, i32 %2, %struct.btrfs_inode* %3, %struct.btrfs_disk_key* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_trans_handle*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_inode*, align 8
  %13 = alloca %struct.btrfs_disk_key*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.btrfs_delayed_node*, align 8
  %17 = alloca %struct.btrfs_delayed_item*, align 8
  %18 = alloca %struct.btrfs_dir_item*, align 8
  %19 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.btrfs_inode* %3, %struct.btrfs_inode** %12, align 8
  store %struct.btrfs_disk_key* %4, %struct.btrfs_disk_key** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load %struct.btrfs_inode*, %struct.btrfs_inode** %12, align 8
  %21 = call %struct.btrfs_delayed_node* @btrfs_get_or_create_delayed_node(%struct.btrfs_inode* %20)
  store %struct.btrfs_delayed_node* %21, %struct.btrfs_delayed_node** %16, align 8
  %22 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %16, align 8
  %23 = call i64 @IS_ERR(%struct.btrfs_delayed_node* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %7
  %26 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %16, align 8
  %27 = call i32 @PTR_ERR(%struct.btrfs_delayed_node* %26)
  store i32 %27, i32* %8, align 4
  br label %124

28:                                               ; preds = %7
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = call %struct.btrfs_delayed_item* @btrfs_alloc_delayed_item(i32 %32)
  store %struct.btrfs_delayed_item* %33, %struct.btrfs_delayed_item** %17, align 8
  %34 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %17, align 8
  %35 = icmp ne %struct.btrfs_delayed_item* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %19, align 4
  br label %120

39:                                               ; preds = %28
  %40 = load %struct.btrfs_inode*, %struct.btrfs_inode** %12, align 8
  %41 = call i32 @btrfs_ino(%struct.btrfs_inode* %40)
  %42 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %17, align 8
  %43 = getelementptr inbounds %struct.btrfs_delayed_item, %struct.btrfs_delayed_item* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* @BTRFS_DIR_INDEX_KEY, align 4
  %46 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %17, align 8
  %47 = getelementptr inbounds %struct.btrfs_delayed_item, %struct.btrfs_delayed_item* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %17, align 8
  %51 = getelementptr inbounds %struct.btrfs_delayed_item, %struct.btrfs_delayed_item* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %17, align 8
  %54 = getelementptr inbounds %struct.btrfs_delayed_item, %struct.btrfs_delayed_item* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.btrfs_dir_item*
  store %struct.btrfs_dir_item* %56, %struct.btrfs_dir_item** %18, align 8
  %57 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %18, align 8
  %58 = getelementptr inbounds %struct.btrfs_dir_item, %struct.btrfs_dir_item* %57, i32 0, i32 0
  %59 = load %struct.btrfs_disk_key*, %struct.btrfs_disk_key** %13, align 8
  %60 = bitcast %struct.btrfs_disk_key* %58 to i8*
  %61 = bitcast %struct.btrfs_disk_key* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 4, i1 false)
  %62 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %18, align 8
  %63 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %64 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @btrfs_set_stack_dir_transid(%struct.btrfs_dir_item* %62, i32 %65)
  %67 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %18, align 8
  %68 = call i32 @btrfs_set_stack_dir_data_len(%struct.btrfs_dir_item* %67, i32 0)
  %69 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %18, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @btrfs_set_stack_dir_name_len(%struct.btrfs_dir_item* %69, i32 %70)
  %72 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %18, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @btrfs_set_stack_dir_type(%struct.btrfs_dir_item* %72, i32 %73)
  %75 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %18, align 8
  %76 = getelementptr inbounds %struct.btrfs_dir_item, %struct.btrfs_dir_item* %75, i64 1
  %77 = bitcast %struct.btrfs_dir_item* %76 to i8*
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @memcpy(i8* %77, i8* %78, i32 %79)
  %81 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %82 = load %struct.btrfs_inode*, %struct.btrfs_inode** %12, align 8
  %83 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %17, align 8
  %86 = call i32 @btrfs_delayed_item_reserve_metadata(%struct.btrfs_trans_handle* %81, i32 %84, %struct.btrfs_delayed_item* %85)
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %19, align 4
  %88 = call i32 @BUG_ON(i32 %87)
  %89 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %16, align 8
  %90 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %89, i32 0, i32 0
  %91 = call i32 @mutex_lock(i32* %90)
  %92 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %16, align 8
  %93 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %17, align 8
  %94 = call i32 @__btrfs_add_delayed_insertion_item(%struct.btrfs_delayed_node* %92, %struct.btrfs_delayed_item* %93)
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %19, align 4
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %39
  %99 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %100 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i8*, i8** %10, align 8
  %104 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %16, align 8
  %105 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %104, i32 0, i32 2
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %16, align 8
  %111 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %19, align 4
  %114 = call i32 @btrfs_err(i32 %101, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str, i64 0, i64 0), i32 %102, i8* %103, i32 %109, i32 %112, i32 %113)
  %115 = call i32 (...) @BUG()
  br label %116

116:                                              ; preds = %98, %39
  %117 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %16, align 8
  %118 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %117, i32 0, i32 0
  %119 = call i32 @mutex_unlock(i32* %118)
  br label %120

120:                                              ; preds = %116, %36
  %121 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %16, align 8
  %122 = call i32 @btrfs_release_delayed_node(%struct.btrfs_delayed_node* %121)
  %123 = load i32, i32* %19, align 4
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %120, %25
  %125 = load i32, i32* %8, align 4
  ret i32 %125
}

declare dso_local %struct.btrfs_delayed_node* @btrfs_get_or_create_delayed_node(%struct.btrfs_inode*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_delayed_node*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_delayed_node*) #1

declare dso_local %struct.btrfs_delayed_item* @btrfs_alloc_delayed_item(i32) #1

declare dso_local i32 @btrfs_ino(%struct.btrfs_inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @btrfs_set_stack_dir_transid(%struct.btrfs_dir_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_dir_data_len(%struct.btrfs_dir_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_dir_name_len(%struct.btrfs_dir_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_dir_type(%struct.btrfs_dir_item*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @btrfs_delayed_item_reserve_metadata(%struct.btrfs_trans_handle*, i32, %struct.btrfs_delayed_item*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__btrfs_add_delayed_insertion_item(%struct.btrfs_delayed_node*, %struct.btrfs_delayed_item*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @btrfs_err(i32, i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @btrfs_release_delayed_node(%struct.btrfs_delayed_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
