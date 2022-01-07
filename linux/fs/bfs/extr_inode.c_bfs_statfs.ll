; ModuleID = '/home/carl/AnghaBench/linux/fs/bfs/extr_inode.c_bfs_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/bfs/extr_inode.c_bfs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.kstatfs = type { i32, %struct.TYPE_4__, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i8** }
%struct.bfs_sb_info = type { i32, i64, i32, i32 }

@BFS_MAGIC = common dso_local global i32 0, align 4
@BFS_ROOT_INO = common dso_local global i64 0, align 8
@BFS_NAMELEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @bfs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfs_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.bfs_sb_info*, align 8
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %5, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = call %struct.bfs_sb_info* @BFS_SB(%struct.super_block* %11)
  store %struct.bfs_sb_info* %12, %struct.bfs_sb_info** %6, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @huge_encode_dev(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @BFS_MAGIC, align 4
  %20 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %21 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 8
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %26 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %6, align 8
  %28 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %31 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %6, align 8
  %33 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %36 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %38 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %37, i32 0, i32 5
  store i32 %34, i32* %38, align 4
  %39 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %6, align 8
  %40 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  %43 = load i64, i64* @BFS_ROOT_INO, align 8
  %44 = sub nsw i64 %42, %43
  %45 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %46 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %45, i32 0, i32 3
  store i64 %44, i64* %46, align 8
  %47 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %6, align 8
  %48 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %51 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %56 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  store i8* %54, i8** %59, align 8
  %60 = load i32, i32* %7, align 4
  %61 = ashr i32 %60, 32
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %65 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 1
  store i8* %63, i8** %68, align 8
  %69 = load i32, i32* @BFS_NAMELEN, align 4
  %70 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %71 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  ret i32 0
}

declare dso_local %struct.bfs_sb_info* @BFS_SB(%struct.super_block*) #1

declare dso_local i32 @huge_encode_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
