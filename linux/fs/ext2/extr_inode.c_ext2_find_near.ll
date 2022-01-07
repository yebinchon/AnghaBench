; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_find_near.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_find_near.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.ext2_inode_info = type { i32, i64* }

@current = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.TYPE_6__*)* @ext2_find_near to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_find_near(%struct.inode* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.ext2_inode_info*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.ext2_inode_info* @EXT2_I(%struct.inode* %11)
  store %struct.ext2_inode_info* %12, %struct.ext2_inode_info** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i64*
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %26 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  br label %28

28:                                               ; preds = %24, %17
  %29 = phi i64* [ %23, %17 ], [ %27, %24 ]
  store i64* %29, i64** %7, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 -1
  store i64* %33, i64** %8, align 8
  br label %34

34:                                               ; preds = %47, %28
  %35 = load i64*, i64** %8, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = icmp uge i64* %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load i64*, i64** %8, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i64*, i64** %8, align 8
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @le32_to_cpu(i64 %44)
  store i32 %45, i32* %3, align 4
  br label %82

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46
  %48 = load i64*, i64** %8, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 -1
  store i64* %49, i64** %8, align 8
  br label %34

50:                                               ; preds = %34
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = icmp ne %struct.TYPE_5__* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %3, align 4
  br label %82

61:                                               ; preds = %50
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %66 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ext2_group_first_block_no(i32 %64, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = srem i32 %71, 16
  %73 = load %struct.inode*, %struct.inode** %4, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @EXT2_BLOCKS_PER_GROUP(i32 %75)
  %77 = sdiv i32 %76, 16
  %78 = mul nsw i32 %72, %77
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %79, %80
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %61, %55, %42
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.ext2_inode_info* @EXT2_I(%struct.inode*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @ext2_group_first_block_no(i32, i32) #1

declare dso_local i32 @EXT2_BLOCKS_PER_GROUP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
