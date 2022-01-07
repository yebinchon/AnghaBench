; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_alloc_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_alloc_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i32, i32, i64*, i32*)* @ext2_alloc_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_alloc_blocks(%struct.inode* %0, i64 %1, i32 %2, i32 %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  store i64 0, i64* %18, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %14, align 4
  br label %23

23:                                               ; preds = %6, %63
  %24 = load i32, i32* %14, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %16, align 8
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = call i64 @ext2_new_blocks(%struct.inode* %26, i64 %27, i64* %16, i32* %28)
  store i64 %29, i64* %18, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %74

34:                                               ; preds = %23
  %35 = load i64, i64* %16, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %49, %34
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i64, i64* %16, align 8
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %44, %40
  %48 = phi i1 [ false, %40 ], [ %46, %44 ]
  br i1 %48, label %49, label %59

49:                                               ; preds = %47
  %50 = load i64, i64* %18, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %18, align 8
  %52 = load i64*, i64** %12, align 8
  %53 = load i32, i32* %17, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %17, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  store i64 %50, i64* %56, align 8
  %57 = load i64, i64* %16, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %16, align 8
  br label %40

59:                                               ; preds = %47
  %60 = load i64, i64* %16, align 8
  %61 = icmp ugt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %64

63:                                               ; preds = %59
  br label %23

64:                                               ; preds = %62
  %65 = load i64, i64* %18, align 8
  %66 = load i64*, i64** %12, align 8
  %67 = load i32, i32* %17, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  store i64 %65, i64* %69, align 8
  %70 = load i64, i64* %16, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %19, align 4
  %72 = load i32*, i32** %13, align 8
  store i32 0, i32* %72, align 4
  %73 = load i32, i32* %19, align 4
  store i32 %73, i32* %7, align 4
  br label %98

74:                                               ; preds = %33
  store i32 0, i32* %15, align 4
  br label %75

75:                                               ; preds = %87, %74
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load %struct.inode*, %struct.inode** %8, align 8
  %81 = load i64*, i64** %12, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @ext2_free_blocks(%struct.inode* %80, i64 %85, i32 1)
  br label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %15, align 4
  br label %75

90:                                               ; preds = %75
  %91 = load i32, i32* %17, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.inode*, %struct.inode** %8, align 8
  %95 = call i32 @mark_inode_dirty(%struct.inode* %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* %19, align 4
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %96, %64
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i64 @ext2_new_blocks(%struct.inode*, i64, i64*, i32*) #1

declare dso_local i32 @ext2_free_blocks(%struct.inode*, i64, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
