; ModuleID = '/home/carl/AnghaBench/linux/fs/bfs/extr_dir.c_bfs_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/bfs/extr_dir.c_bfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.TYPE_3__*, i32*, i32*, i64, i32, i32, i32, %struct.super_block* }
%struct.TYPE_3__ = type { i32* }
%struct.super_block = type { i32 }
%struct.dentry = type { i32 }
%struct.bfs_sb_info = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@bfs_file_inops = common dso_local global i32 0, align 4
@bfs_file_operations = common dso_local global i32 0, align 4
@bfs_aops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"create\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @bfs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca %struct.bfs_sb_info*, align 8
  %14 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 8
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %12, align 8
  %18 = load %struct.super_block*, %struct.super_block** %12, align 8
  %19 = call %struct.bfs_sb_info* @BFS_SB(%struct.super_block* %18)
  store %struct.bfs_sb_info* %19, %struct.bfs_sb_info** %13, align 8
  %20 = load %struct.super_block*, %struct.super_block** %12, align 8
  %21 = call %struct.inode* @new_inode(%struct.super_block* %20)
  store %struct.inode* %21, %struct.inode** %11, align 8
  %22 = load %struct.inode*, %struct.inode** %11, align 8
  %23 = icmp ne %struct.inode* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %129

27:                                               ; preds = %4
  %28 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %29 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %32 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %35 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  %38 = call i64 @find_first_zero_bit(i32 %33, i32 %37)
  store i64 %38, i64* %14, align 8
  %39 = load i64, i64* %14, align 8
  %40 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %41 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ugt i64 %39, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %27
  %46 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %47 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %46, i32 0, i32 1
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.inode*, %struct.inode** %11, align 8
  %50 = call i32 @iput(%struct.inode* %49)
  %51 = load i32, i32* @ENOSPC, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %129

53:                                               ; preds = %27
  %54 = load i64, i64* %14, align 8
  %55 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %56 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @set_bit(i64 %54, i32 %57)
  %59 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %60 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 4
  %63 = load %struct.inode*, %struct.inode** %11, align 8
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @inode_init_owner(%struct.inode* %63, %struct.inode* %64, i32 %65)
  %67 = load %struct.inode*, %struct.inode** %11, align 8
  %68 = call i32 @current_time(%struct.inode* %67)
  %69 = load %struct.inode*, %struct.inode** %11, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 8
  %71 = load %struct.inode*, %struct.inode** %11, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 6
  store i32 %68, i32* %72, align 4
  %73 = load %struct.inode*, %struct.inode** %11, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 7
  store i32 %68, i32* %74, align 8
  %75 = load %struct.inode*, %struct.inode** %11, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 4
  store i64 0, i64* %76, align 8
  %77 = load %struct.inode*, %struct.inode** %11, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 3
  store i32* @bfs_file_inops, i32** %78, align 8
  %79 = load %struct.inode*, %struct.inode** %11, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 2
  store i32* @bfs_file_operations, i32** %80, align 8
  %81 = load %struct.inode*, %struct.inode** %11, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i32* @bfs_aops, i32** %84, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load %struct.inode*, %struct.inode** %11, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load i64, i64* %14, align 8
  %89 = load %struct.inode*, %struct.inode** %11, align 8
  %90 = call %struct.TYPE_4__* @BFS_I(%struct.inode* %89)
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i64 %88, i64* %91, align 8
  %92 = load %struct.inode*, %struct.inode** %11, align 8
  %93 = call %struct.TYPE_4__* @BFS_I(%struct.inode* %92)
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  store i64 0, i64* %94, align 8
  %95 = load %struct.inode*, %struct.inode** %11, align 8
  %96 = call %struct.TYPE_4__* @BFS_I(%struct.inode* %95)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = load %struct.inode*, %struct.inode** %11, align 8
  %99 = call i32 @insert_inode_hash(%struct.inode* %98)
  %100 = load %struct.inode*, %struct.inode** %11, align 8
  %101 = call i32 @mark_inode_dirty(%struct.inode* %100)
  %102 = load %struct.super_block*, %struct.super_block** %12, align 8
  %103 = call i32 @bfs_dump_imap(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.super_block* %102)
  %104 = load %struct.inode*, %struct.inode** %6, align 8
  %105 = load %struct.dentry*, %struct.dentry** %7, align 8
  %106 = getelementptr inbounds %struct.dentry, %struct.dentry* %105, i32 0, i32 0
  %107 = load %struct.inode*, %struct.inode** %11, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @bfs_add_entry(%struct.inode* %104, i32* %106, i64 %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %53
  %114 = load %struct.inode*, %struct.inode** %11, align 8
  %115 = call i32 @inode_dec_link_count(%struct.inode* %114)
  %116 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %117 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %116, i32 0, i32 1
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load %struct.inode*, %struct.inode** %11, align 8
  %120 = call i32 @iput(%struct.inode* %119)
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %5, align 4
  br label %129

122:                                              ; preds = %53
  %123 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %124 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %123, i32 0, i32 1
  %125 = call i32 @mutex_unlock(i32* %124)
  %126 = load %struct.dentry*, %struct.dentry** %7, align 8
  %127 = load %struct.inode*, %struct.inode** %11, align 8
  %128 = call i32 @d_instantiate(%struct.dentry* %126, %struct.inode* %127)
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %122, %113, %45, %24
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local %struct.bfs_sb_info* @BFS_SB(%struct.super_block*) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @inode_init_owner(%struct.inode*, %struct.inode*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @BFS_I(%struct.inode*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @bfs_dump_imap(i8*, %struct.super_block*) #1

declare dso_local i32 @bfs_add_entry(%struct.inode*, i32*, i64) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
