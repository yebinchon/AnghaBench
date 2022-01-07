; ModuleID = '/home/carl/AnghaBench/linux/fs/bfs/extr_inode.c_bfs_write_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/bfs/extr_inode.c_bfs_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, i64, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.writeback_control = type { i64 }
%struct.bfs_sb_info = type { i32 }
%struct.bfs_inode = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8* }
%struct.buffer_head = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"ino=%08x\0A\00", align 1
@BFS_ROOT_INO = common dso_local global i32 0, align 4
@BFS_VDIR = common dso_local global i64 0, align 8
@BFS_VREG = common dso_local global i64 0, align 8
@BFS_BSIZE = common dso_local global i64 0, align 8
@WB_SYNC_ALL = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.writeback_control*)* @bfs_write_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfs_write_inode(%struct.inode* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.bfs_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.bfs_inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.bfs_sb_info* @BFS_SB(i32 %14)
  store %struct.bfs_sb_info* %15, %struct.bfs_sb_info** %6, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @dprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.bfs_inode* @find_inode(i32 %23, i32 %24, %struct.buffer_head** %10)
  store %struct.bfs_inode* %25, %struct.bfs_inode** %9, align 8
  %26 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %27 = call i64 @IS_ERR(%struct.bfs_inode* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %31 = call i32 @PTR_ERR(%struct.bfs_inode* %30)
  store i32 %31, i32* %3, align 4
  br label %151

32:                                               ; preds = %2
  %33 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %6, align 8
  %34 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @BFS_ROOT_INO, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i64, i64* @BFS_VDIR, align 8
  %41 = call i8* @cpu_to_le32(i64 %40)
  %42 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %43 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %42, i32 0, i32 11
  store i8* %41, i8** %43, align 8
  br label %49

44:                                               ; preds = %32
  %45 = load i64, i64* @BFS_VREG, align 8
  %46 = call i8* @cpu_to_le32(i64 %45)
  %47 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %48 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %47, i32 0, i32 11
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @cpu_to_le16(i32 %50)
  %52 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %53 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %52, i32 0, i32 10
  store i32 %51, i32* %53, align 8
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i8* @cpu_to_le32(i64 %56)
  %58 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %59 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %58, i32 0, i32 9
  store i8* %57, i8** %59, align 8
  %60 = load %struct.inode*, %struct.inode** %4, align 8
  %61 = call i64 @i_uid_read(%struct.inode* %60)
  %62 = call i8* @cpu_to_le32(i64 %61)
  %63 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %64 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %63, i32 0, i32 8
  store i8* %62, i8** %64, align 8
  %65 = load %struct.inode*, %struct.inode** %4, align 8
  %66 = call i64 @i_gid_read(%struct.inode* %65)
  %67 = call i8* @cpu_to_le32(i64 %66)
  %68 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %69 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %68, i32 0, i32 7
  store i8* %67, i8** %69, align 8
  %70 = load %struct.inode*, %struct.inode** %4, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i8* @cpu_to_le32(i64 %72)
  %74 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %75 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %74, i32 0, i32 6
  store i8* %73, i8** %75, align 8
  %76 = load %struct.inode*, %struct.inode** %4, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i8* @cpu_to_le32(i64 %79)
  %81 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %82 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %81, i32 0, i32 5
  store i8* %80, i8** %82, align 8
  %83 = load %struct.inode*, %struct.inode** %4, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i8* @cpu_to_le32(i64 %86)
  %88 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %89 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load %struct.inode*, %struct.inode** %4, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i8* @cpu_to_le32(i64 %93)
  %95 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %96 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = load %struct.inode*, %struct.inode** %4, align 8
  %98 = call %struct.TYPE_8__* @BFS_I(%struct.inode* %97)
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %8, align 8
  %101 = load i64, i64* %8, align 8
  %102 = call i8* @cpu_to_le32(i64 %101)
  %103 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %104 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = load %struct.inode*, %struct.inode** %4, align 8
  %106 = call %struct.TYPE_8__* @BFS_I(%struct.inode* %105)
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i8* @cpu_to_le32(i64 %108)
  %110 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %111 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* @BFS_BSIZE, align 8
  %114 = mul i64 %112, %113
  %115 = load %struct.inode*, %struct.inode** %4, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %114, %117
  %119 = sub i64 %118, 1
  %120 = call i8* @cpu_to_le32(i64 %119)
  %121 = load %struct.bfs_inode*, %struct.bfs_inode** %9, align 8
  %122 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  %123 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %124 = call i32 @mark_buffer_dirty(%struct.buffer_head* %123)
  %125 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %126 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @WB_SYNC_ALL, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %49
  %131 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %132 = call i32 @sync_dirty_buffer(%struct.buffer_head* %131)
  %133 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %134 = call i64 @buffer_req(%struct.buffer_head* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %130
  %137 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %138 = call i32 @buffer_uptodate(%struct.buffer_head* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* @EIO, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %140, %136, %130
  br label %144

144:                                              ; preds = %143, %49
  %145 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %146 = call i32 @brelse(%struct.buffer_head* %145)
  %147 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %6, align 8
  %148 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %147, i32 0, i32 0
  %149 = call i32 @mutex_unlock(i32* %148)
  %150 = load i32, i32* %11, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %144, %29
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.bfs_sb_info* @BFS_SB(i32) #1

declare dso_local i32 @dprintf(i8*, i32) #1

declare dso_local %struct.bfs_inode* @find_inode(i32, i32, %struct.buffer_head**) #1

declare dso_local i64 @IS_ERR(%struct.bfs_inode*) #1

declare dso_local i32 @PTR_ERR(%struct.bfs_inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @i_uid_read(%struct.inode*) #1

declare dso_local i64 @i_gid_read(%struct.inode*) #1

declare dso_local %struct.TYPE_8__* @BFS_I(%struct.inode*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_req(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
