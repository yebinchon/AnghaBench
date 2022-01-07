; ModuleID = '/home/carl/AnghaBench/linux/fs/bfs/extr_dir.c_bfs_add_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/bfs/extr_dir.c_bfs_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i8*, i8*, i32 }
%struct.qstr = type { i8*, i32 }
%struct.buffer_head = type { i64 }
%struct.bfs_dirent = type { i8*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"name=%s, namelen=%d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@BFS_NAMELEN = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BFS_BSIZE = common dso_local global i32 0, align 4
@BFS_DIRENT_SIZE = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.qstr*, i32)* @bfs_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfs_add_entry(%struct.inode* %0, %struct.qstr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.bfs_dirent*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.qstr*, %struct.qstr** %6, align 8
  %19 = getelementptr inbounds %struct.qstr, %struct.qstr* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  %21 = load %struct.qstr*, %struct.qstr** %6, align 8
  %22 = getelementptr inbounds %struct.qstr, %struct.qstr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %167

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @BFS_NAMELEN, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @ENAMETOOLONG, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %167

39:                                               ; preds = %32
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = call %struct.TYPE_2__* @BFS_I(%struct.inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %13, align 4
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = call %struct.TYPE_2__* @BFS_I(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %161, %39
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %164

53:                                               ; preds = %49
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call %struct.buffer_head* @sb_bread(i32 %56, i32 %57)
  store %struct.buffer_head* %58, %struct.buffer_head** %10, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %60 = icmp ne %struct.buffer_head* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %167

64:                                               ; preds = %53
  store i32 0, i32* %15, align 4
  br label %65

65:                                               ; preds = %152, %64
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* @BFS_BSIZE, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %158

69:                                               ; preds = %65
  %70 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %71 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = inttoptr i64 %75 to %struct.bfs_dirent*
  store %struct.bfs_dirent* %76, %struct.bfs_dirent** %11, align 8
  %77 = load %struct.bfs_dirent*, %struct.bfs_dirent** %11, align 8
  %78 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %151, label %81

81:                                               ; preds = %69
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %13, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load i32, i32* @BFS_BSIZE, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %86, %87
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load %struct.inode*, %struct.inode** %5, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp sge i32 %89, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %81
  %95 = load i64, i64* @BFS_DIRENT_SIZE, align 8
  %96 = load %struct.inode*, %struct.inode** %5, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %95
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %97, align 8
  %102 = load %struct.inode*, %struct.inode** %5, align 8
  %103 = call i8* @current_time(%struct.inode* %102)
  %104 = load %struct.inode*, %struct.inode** %5, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %94, %81
  %107 = load %struct.inode*, %struct.inode** %5, align 8
  %108 = call i8* @current_time(%struct.inode* %107)
  %109 = load %struct.inode*, %struct.inode** %5, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  %111 = load %struct.inode*, %struct.inode** %5, align 8
  %112 = call i32 @mark_inode_dirty(%struct.inode* %111)
  %113 = load i32, i32* %7, align 4
  %114 = call i64 @cpu_to_le16(i32 %113)
  %115 = load %struct.bfs_dirent*, %struct.bfs_dirent** %11, align 8
  %116 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  store i32 0, i32* %17, align 4
  br label %117

117:                                              ; preds = %142, %106
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* @BFS_NAMELEN, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %145

121:                                              ; preds = %117
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = load i8*, i8** %8, align 8
  %127 = load i32, i32* %17, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  br label %133

132:                                              ; preds = %121
  br label %133

133:                                              ; preds = %132, %125
  %134 = phi i32 [ %131, %125 ], [ 0, %132 ]
  %135 = trunc i32 %134 to i8
  %136 = load %struct.bfs_dirent*, %struct.bfs_dirent** %11, align 8
  %137 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = load i32, i32* %17, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  store i8 %135, i8* %141, align 1
  br label %142

142:                                              ; preds = %133
  %143 = load i32, i32* %17, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %17, align 4
  br label %117

145:                                              ; preds = %117
  %146 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %147 = load %struct.inode*, %struct.inode** %5, align 8
  %148 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %146, %struct.inode* %147)
  %149 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %150 = call i32 @brelse(%struct.buffer_head* %149)
  store i32 0, i32* %4, align 4
  br label %167

151:                                              ; preds = %69
  br label %152

152:                                              ; preds = %151
  %153 = load i64, i64* @BFS_DIRENT_SIZE, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %153
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %15, align 4
  br label %65

158:                                              ; preds = %65
  %159 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %160 = call i32 @brelse(%struct.buffer_head* %159)
  br label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %12, align 4
  br label %49

164:                                              ; preds = %49
  %165 = load i32, i32* @ENOSPC, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %164, %145, %61, %36, %29
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i32 @dprintf(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_2__* @BFS_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @sb_bread(i32, i32) #1

declare dso_local i8* @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
