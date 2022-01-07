; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ordered-data.c_btrfs_wait_ordered_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ordered-data.c_btrfs_wait_ordered_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_ordered_extent = type { i64, i64, i32 }

@loff_t = common dso_local global i32 0, align 4
@BTRFS_ORDERED_IOERR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_wait_ordered_range(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.btrfs_ordered_extent*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i64, i64* %6, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @loff_t, align 4
  %20 = call i64 @INT_LIMIT(i32 %19)
  store i64 %20, i64* %11, align 8
  br label %34

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add nsw i64 %22, %23
  %25 = sub nsw i64 %24, 1
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i32, i32* @loff_t, align 4
  %28 = call i64 @INT_LIMIT(i32 %27)
  %29 = icmp sgt i64 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* @loff_t, align 4
  %32 = call i64 @INT_LIMIT(i32 %31)
  store i64 %32, i64* %11, align 8
  br label %33

33:                                               ; preds = %30, %21
  br label %34

34:                                               ; preds = %33, %18
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @btrfs_fdatawrite_range(%struct.inode* %35, i64 %36, i64 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %120

43:                                               ; preds = %34
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @filemap_fdatawait_range(i32 %46, i64 %47, i64 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i64, i64* %11, align 8
  store i64 %50, i64* %10, align 8
  br label %51

51:                                               ; preds = %43, %108
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call %struct.btrfs_ordered_extent* @btrfs_lookup_first_ordered_extent(%struct.inode* %52, i64 %53)
  store %struct.btrfs_ordered_extent* %54, %struct.btrfs_ordered_extent** %12, align 8
  %55 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %12, align 8
  %56 = icmp ne %struct.btrfs_ordered_extent* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %111

58:                                               ; preds = %51
  %59 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %12, align 8
  %60 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %12, align 8
  %66 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %65)
  br label %111

67:                                               ; preds = %58
  %68 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %12, align 8
  %69 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %12, align 8
  %72 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = load i64, i64* %6, align 8
  %76 = icmp sle i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %12, align 8
  %79 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %78)
  br label %111

80:                                               ; preds = %67
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %12, align 8
  %83 = call i32 @btrfs_start_ordered_extent(%struct.inode* %81, %struct.btrfs_ordered_extent* %82, i32 1)
  %84 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %12, align 8
  %85 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %10, align 8
  %87 = load i32, i32* @BTRFS_ORDERED_IOERR, align 4
  %88 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %12, align 8
  %89 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %88, i32 0, i32 2
  %90 = call i64 @test_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %80
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %92, %80
  %96 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %12, align 8
  %97 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %96)
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %95
  %101 = load i64, i64* %10, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* %6, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103, %100, %95
  br label %111

108:                                              ; preds = %103
  %109 = load i64, i64* %10, align 8
  %110 = add nsw i64 %109, -1
  store i64 %110, i64* %10, align 8
  br label %51

111:                                              ; preds = %107, %77, %64, %57
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32, i32* %9, align 4
  br label %118

116:                                              ; preds = %111
  %117 = load i32, i32* %8, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %118, %41
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i64 @INT_LIMIT(i32) #1

declare dso_local i32 @btrfs_fdatawrite_range(%struct.inode*, i64, i64) #1

declare dso_local i32 @filemap_fdatawait_range(i32, i64, i64) #1

declare dso_local %struct.btrfs_ordered_extent* @btrfs_lookup_first_ordered_extent(%struct.inode*, i64) #1

declare dso_local i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent*) #1

declare dso_local i32 @btrfs_start_ordered_extent(%struct.inode*, %struct.btrfs_ordered_extent*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
