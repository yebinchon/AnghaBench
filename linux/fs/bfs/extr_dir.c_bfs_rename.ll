; ModuleID = '/home/carl/AnghaBench/linux/fs/bfs/extr_dir.c_bfs_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/bfs/extr_dir.c_bfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i8*, i8*, i32, i32 }
%struct.dentry = type { i32 }
%struct.buffer_head = type { i32 }
%struct.bfs_dirent = type { i64 }
%struct.bfs_sb_info = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@RENAME_NOREPLACE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @bfs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.bfs_dirent*, align 8
  %17 = alloca %struct.bfs_dirent*, align 8
  %18 = alloca %struct.bfs_sb_info*, align 8
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @RENAME_NOREPLACE, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %130

30:                                               ; preds = %5
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %14, align 8
  %31 = load %struct.dentry*, %struct.dentry** %8, align 8
  %32 = call %struct.inode* @d_inode(%struct.dentry* %31)
  store %struct.inode* %32, %struct.inode** %12, align 8
  %33 = load %struct.inode*, %struct.inode** %12, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @S_ISDIR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %130

41:                                               ; preds = %30
  %42 = load %struct.inode*, %struct.inode** %12, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.bfs_sb_info* @BFS_SB(i32 %44)
  store %struct.bfs_sb_info* %45, %struct.bfs_sb_info** %18, align 8
  %46 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %18, align 8
  %47 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = load %struct.dentry*, %struct.dentry** %8, align 8
  %51 = getelementptr inbounds %struct.dentry, %struct.dentry* %50, i32 0, i32 0
  %52 = call %struct.buffer_head* @bfs_find_entry(%struct.inode* %49, i32* %51, %struct.bfs_dirent** %16)
  store %struct.buffer_head* %52, %struct.buffer_head** %14, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %54 = icmp ne %struct.buffer_head* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %41
  %56 = load %struct.bfs_dirent*, %struct.bfs_dirent** %16, align 8
  %57 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @le16_to_cpu(i64 %58)
  %60 = load %struct.inode*, %struct.inode** %12, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %55, %41
  br label %121

65:                                               ; preds = %55
  %66 = load i32, i32* @EPERM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %19, align 4
  %68 = load %struct.dentry*, %struct.dentry** %10, align 8
  %69 = call %struct.inode* @d_inode(%struct.dentry* %68)
  store %struct.inode* %69, %struct.inode** %13, align 8
  %70 = load %struct.inode*, %struct.inode** %9, align 8
  %71 = load %struct.dentry*, %struct.dentry** %10, align 8
  %72 = getelementptr inbounds %struct.dentry, %struct.dentry* %71, i32 0, i32 0
  %73 = call %struct.buffer_head* @bfs_find_entry(%struct.inode* %70, i32* %72, %struct.bfs_dirent** %17)
  store %struct.buffer_head* %73, %struct.buffer_head** %15, align 8
  %74 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %75 = icmp ne %struct.buffer_head* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %65
  %77 = load %struct.inode*, %struct.inode** %13, align 8
  %78 = icmp ne %struct.inode* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %81 = call i32 @brelse(%struct.buffer_head* %80)
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  br label %82

82:                                               ; preds = %79, %76, %65
  %83 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %84 = icmp ne %struct.buffer_head* %83, null
  br i1 %84, label %97, label %85

85:                                               ; preds = %82
  %86 = load %struct.inode*, %struct.inode** %9, align 8
  %87 = load %struct.dentry*, %struct.dentry** %10, align 8
  %88 = getelementptr inbounds %struct.dentry, %struct.dentry* %87, i32 0, i32 0
  %89 = load %struct.inode*, %struct.inode** %12, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @bfs_add_entry(%struct.inode* %86, i32* %88, i64 %91)
  store i32 %92, i32* %19, align 4
  %93 = load i32, i32* %19, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %121

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %82
  %98 = load %struct.bfs_dirent*, %struct.bfs_dirent** %16, align 8
  %99 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = load %struct.inode*, %struct.inode** %7, align 8
  %101 = call i8* @current_time(%struct.inode* %100)
  %102 = load %struct.inode*, %struct.inode** %7, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = load %struct.inode*, %struct.inode** %7, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 1
  store i8* %101, i8** %105, align 8
  %106 = load %struct.inode*, %struct.inode** %7, align 8
  %107 = call i32 @mark_inode_dirty(%struct.inode* %106)
  %108 = load %struct.inode*, %struct.inode** %13, align 8
  %109 = icmp ne %struct.inode* %108, null
  br i1 %109, label %110, label %117

110:                                              ; preds = %97
  %111 = load %struct.inode*, %struct.inode** %13, align 8
  %112 = call i8* @current_time(%struct.inode* %111)
  %113 = load %struct.inode*, %struct.inode** %13, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load %struct.inode*, %struct.inode** %13, align 8
  %116 = call i32 @inode_dec_link_count(%struct.inode* %115)
  br label %117

117:                                              ; preds = %110, %97
  %118 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %119 = load %struct.inode*, %struct.inode** %7, align 8
  %120 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %118, %struct.inode* %119)
  store i32 0, i32* %19, align 4
  br label %121

121:                                              ; preds = %117, %95, %64
  %122 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %18, align 8
  %123 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %122, i32 0, i32 0
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %126 = call i32 @brelse(%struct.buffer_head* %125)
  %127 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %128 = call i32 @brelse(%struct.buffer_head* %127)
  %129 = load i32, i32* %19, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %121, %38, %27
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.bfs_sb_info* @BFS_SB(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.buffer_head* @bfs_find_entry(%struct.inode*, i32*, %struct.bfs_dirent**) #1

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @bfs_add_entry(%struct.inode*, i32*, i64) #1

declare dso_local i8* @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
