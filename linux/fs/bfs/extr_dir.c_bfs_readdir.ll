; ModuleID = '/home/carl/AnghaBench/linux/fs/bfs/extr_dir.c_bfs_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/bfs/extr_dir.c_bfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dir_context = type { i32 }
%struct.inode = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.bfs_dirent = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@BFS_DIRENT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Bad f_pos=%08lx for %s:%08lx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BFS_BSIZE = common dso_local global i32 0, align 4
@BFS_BSIZE_BITS = common dso_local global i32 0, align 4
@BFS_NAMELEN = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @bfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfs_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.bfs_dirent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call %struct.inode* @file_inode(%struct.file* %12)
  store %struct.inode* %13, %struct.inode** %6, align 8
  %14 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %15 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BFS_DIRENT_SIZE, align 4
  %18 = sub nsw i32 %17, 1
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %23 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %25, i32 %30, i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %140

37:                                               ; preds = %2
  br label %38

38:                                               ; preds = %136, %70, %37
  %39 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %40 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %139

46:                                               ; preds = %38
  %47 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %48 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BFS_BSIZE, align 4
  %51 = sub nsw i32 %50, 1
  %52 = and i32 %49, %51
  store i32 %52, i32* %9, align 4
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = call %struct.TYPE_4__* @BFS_I(%struct.inode* %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %58 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @BFS_BSIZE_BITS, align 4
  %61 = ashr i32 %59, %60
  %62 = add nsw i32 %56, %61
  store i32 %62, i32* %10, align 4
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call %struct.buffer_head* @sb_bread(%struct.TYPE_3__* %65, i32 %66)
  store %struct.buffer_head* %67, %struct.buffer_head** %7, align 8
  %68 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %69 = icmp ne %struct.buffer_head* %68, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %46
  %71 = load i32, i32* @BFS_BSIZE, align 4
  %72 = load i32, i32* %9, align 4
  %73 = sub i32 %71, %72
  %74 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %75 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %38

78:                                               ; preds = %46
  br label %79

79:                                               ; preds = %134, %78
  %80 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %81 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = zext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = inttoptr i64 %85 to %struct.bfs_dirent*
  store %struct.bfs_dirent* %86, %struct.bfs_dirent** %8, align 8
  %87 = load %struct.bfs_dirent*, %struct.bfs_dirent** %8, align 8
  %88 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %79
  %92 = load %struct.bfs_dirent*, %struct.bfs_dirent** %8, align 8
  %93 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @BFS_NAMELEN, align 4
  %96 = call i32 @strnlen(i32 %94, i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %98 = load %struct.bfs_dirent*, %struct.bfs_dirent** %8, align 8
  %99 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.bfs_dirent*, %struct.bfs_dirent** %8, align 8
  %103 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @le16_to_cpu(i64 %104)
  %106 = load i32, i32* @DT_UNKNOWN, align 4
  %107 = call i32 @dir_emit(%struct.dir_context* %97, i32 %100, i32 %101, i32 %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %91
  %110 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %111 = call i32 @brelse(%struct.buffer_head* %110)
  store i32 0, i32* %3, align 4
  br label %140

112:                                              ; preds = %91
  br label %113

113:                                              ; preds = %112, %79
  %114 = load i32, i32* @BFS_DIRENT_SIZE, align 4
  %115 = load i32, i32* %9, align 4
  %116 = add i32 %115, %114
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* @BFS_DIRENT_SIZE, align 4
  %118 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %119 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %113
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @BFS_BSIZE, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %128 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.inode*, %struct.inode** %6, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br label %134

134:                                              ; preds = %126, %122
  %135 = phi i1 [ false, %122 ], [ %133, %126 ]
  br i1 %135, label %79, label %136

136:                                              ; preds = %134
  %137 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %138 = call i32 @brelse(%struct.buffer_head* %137)
  br label %38

139:                                              ; preds = %38
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %139, %109, %21
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @printf(i8*, i64, i32, i32) #1

declare dso_local %struct.TYPE_4__* @BFS_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @strnlen(i32, i32) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
