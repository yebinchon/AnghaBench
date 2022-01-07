; ModuleID = '/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_get_block_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_get_block_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.cramfs_sb_info = type { i64 }

@CRAMFS_BLK_FLAGS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@CRAMFS_BLK_DIRECT_PTR_SHIFT = common dso_local global i32 0, align 4
@CRAMFS_BLK_FLAG_DIRECT_PTR = common dso_local global i32 0, align 4
@CRAMFS_BLK_FLAG_UNCOMPRESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"range: block %d/%d got %#x expects %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32*)* @cramfs_get_block_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cramfs_get_block_range(%struct.inode* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cramfs_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.cramfs_sb_info* @CRAMFS_SB(i32 %16)
  store %struct.cramfs_sb_info* %17, %struct.cramfs_sb_info** %8, align 8
  %18 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %8, align 8
  %19 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call i64 @OFFSET(%struct.inode* %21)
  %23 = add nsw i64 %20, %22
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %24, 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CRAMFS_BLK_FLAGS, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  store i32 %34, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %76, %3
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = load i32, i32* @CRAMFS_BLK_DIRECT_PTR_SHIFT, align 4
  %39 = ashr i32 %37, %38
  %40 = mul nsw i32 %36, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* @CRAMFS_BLK_FLAG_DIRECT_PTR, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @CRAMFS_BLK_FLAG_UNCOMPRESSED, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %35
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %6, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %59, %61
  %63 = sub nsw i32 %62, 1
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %63, i32 %68, i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %88

74:                                               ; preds = %55
  br label %82

75:                                               ; preds = %35
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %35, label %82

82:                                               ; preds = %76, %74
  %83 = load i32, i32* %9, align 4
  %84 = load i32*, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @CRAMFS_BLK_DIRECT_PTR_SHIFT, align 4
  %87 = shl i32 %85, %86
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %82, %73
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.cramfs_sb_info* @CRAMFS_SB(i32) #1

declare dso_local i64 @OFFSET(%struct.inode*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
