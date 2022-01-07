; ModuleID = '/home/carl/AnghaBench/linux/fs/affs/extr_inode.c_affs_evict_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/affs/extr_inode.c_affs_evict_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32*, i32* }

@.str = private unnamed_addr constant [32 x i8] c"evict_inode(ino=%lu, nlink=%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"freeing ext cache\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @affs_evict_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = getelementptr inbounds %struct.inode, %struct.inode* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %9)
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 4
  %13 = call i32 @truncate_inode_pages_final(i32* %12)
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = call i32 @affs_truncate(%struct.inode* %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  %25 = call i32 @invalidate_inode_buffers(%struct.inode* %24)
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = call i32 @clear_inode(%struct.inode* %26)
  %28 = load %struct.inode*, %struct.inode** %2, align 8
  %29 = call i32 @affs_free_prealloc(%struct.inode* %28)
  %30 = load %struct.inode*, %struct.inode** %2, align 8
  %31 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = ptrtoint i32* %33 to i64
  store i64 %34, i64* %3, align 8
  %35 = load i64, i64* %3, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %23
  %38 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.inode*, %struct.inode** %2, align 8
  %40 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  store i32* null, i32** %41, align 8
  %42 = load %struct.inode*, %struct.inode** %2, align 8
  %43 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i32* null, i32** %44, align 8
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @free_page(i64 %45)
  br label %47

47:                                               ; preds = %37, %23
  %48 = load %struct.inode*, %struct.inode** %2, align 8
  %49 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @affs_brelse(i32* %51)
  %53 = load %struct.inode*, %struct.inode** %2, align 8
  %54 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 -2, i32* %55, align 8
  %56 = load %struct.inode*, %struct.inode** %2, align 8
  %57 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  %59 = load %struct.inode*, %struct.inode** %2, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %47
  %64 = load %struct.inode*, %struct.inode** %2, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.inode*, %struct.inode** %2, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @affs_free_block(i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %63, %47
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @truncate_inode_pages_final(i32*) #1

declare dso_local i32 @affs_truncate(%struct.inode*) #1

declare dso_local i32 @invalidate_inode_buffers(%struct.inode*) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i32 @affs_free_prealloc(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @AFFS_I(%struct.inode*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @affs_brelse(i32*) #1

declare dso_local i32 @affs_free_block(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
