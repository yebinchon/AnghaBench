; ModuleID = '/home/carl/AnghaBench/linux/fs/bfs/extr_dir.c_bfs_find_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/bfs/extr_dir.c_bfs_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64, i64 }
%struct.inode = type { i64, i32 }
%struct.qstr = type { i8*, i32 }
%struct.bfs_dirent = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@BFS_NAMELEN = common dso_local global i32 0, align 4
@BFS_BSIZE = common dso_local global i64 0, align 8
@BFS_DIRENT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*, %struct.qstr*, %struct.bfs_dirent**)* @bfs_find_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @bfs_find_entry(%struct.inode* %0, %struct.qstr* %1, %struct.bfs_dirent** %2) #0 {
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.bfs_dirent**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.bfs_dirent*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store %struct.bfs_dirent** %2, %struct.bfs_dirent*** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  %14 = load %struct.qstr*, %struct.qstr** %6, align 8
  %15 = getelementptr inbounds %struct.qstr, %struct.qstr* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %12, align 8
  %17 = load %struct.qstr*, %struct.qstr** %6, align 8
  %18 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %13, align 4
  %20 = load %struct.bfs_dirent**, %struct.bfs_dirent*** %7, align 8
  store %struct.bfs_dirent* null, %struct.bfs_dirent** %20, align 8
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @BFS_NAMELEN, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %98

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %90, %89, %52, %25
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @BFS_BSIZE, align 8
  %29 = mul i64 %27, %28
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %29, %30
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %95

36:                                               ; preds = %26
  %37 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %38 = icmp ne %struct.buffer_head* %37, null
  br i1 %38, label %56, label %39

39:                                               ; preds = %36
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = call %struct.TYPE_2__* @BFS_I(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %46, %47
  %49 = call %struct.buffer_head* @sb_bread(i32 %42, i64 %48)
  store %struct.buffer_head* %49, %struct.buffer_head** %10, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %51 = icmp ne %struct.buffer_head* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %39
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %8, align 8
  br label %26

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55, %36
  %57 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %58 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %59, %60
  %62 = inttoptr i64 %61 to %struct.bfs_dirent*
  store %struct.bfs_dirent* %62, %struct.bfs_dirent** %11, align 8
  %63 = load i64, i64* @BFS_DIRENT_SIZE, align 8
  %64 = load i64, i64* %9, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %9, align 8
  %66 = load %struct.bfs_dirent*, %struct.bfs_dirent** %11, align 8
  %67 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @le16_to_cpu(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %56
  %72 = load i32, i32* %13, align 4
  %73 = load i8*, i8** %12, align 8
  %74 = load %struct.bfs_dirent*, %struct.bfs_dirent** %11, align 8
  %75 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @bfs_namecmp(i32 %72, i8* %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load %struct.bfs_dirent*, %struct.bfs_dirent** %11, align 8
  %81 = load %struct.bfs_dirent**, %struct.bfs_dirent*** %7, align 8
  store %struct.bfs_dirent* %80, %struct.bfs_dirent** %81, align 8
  %82 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %82, %struct.buffer_head** %4, align 8
  br label %98

83:                                               ; preds = %71, %56
  %84 = load i64, i64* %9, align 8
  %85 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %86 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ult i64 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %26

90:                                               ; preds = %83
  %91 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %92 = call i32 @brelse(%struct.buffer_head* %91)
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  store i64 0, i64* %9, align 8
  %93 = load i64, i64* %8, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %8, align 8
  br label %26

95:                                               ; preds = %26
  %96 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %97 = call i32 @brelse(%struct.buffer_head* %96)
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %98

98:                                               ; preds = %95, %79, %24
  %99 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  ret %struct.buffer_head* %99
}

declare dso_local %struct.buffer_head* @sb_bread(i32, i64) #1

declare dso_local %struct.TYPE_2__* @BFS_I(%struct.inode*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @bfs_namecmp(i32, i8*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
