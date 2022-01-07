; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ioctl.c_btrfs_remap_file_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ioctl.c_btrfs_remap_file_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }

@REMAP_FILE_DEDUP = common dso_local global i32 0, align 4
@REMAP_FILE_ADVISORY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_remap_file_range(%struct.file* %0, i32 %1, %struct.file* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.file* %2, %struct.file** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.file*, %struct.file** %8, align 8
  %19 = call %struct.inode* @file_inode(%struct.file* %18)
  store %struct.inode* %19, %struct.inode** %14, align 8
  %20 = load %struct.file*, %struct.file** %10, align 8
  %21 = call %struct.inode* @file_inode(%struct.file* %20)
  store %struct.inode* %21, %struct.inode** %15, align 8
  %22 = load %struct.inode*, %struct.inode** %15, align 8
  %23 = load %struct.inode*, %struct.inode** %14, align 8
  %24 = icmp eq %struct.inode* %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @REMAP_FILE_DEDUP, align 4
  %28 = load i32, i32* @REMAP_FILE_ADVISORY, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %26, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %6
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %98

36:                                               ; preds = %6
  %37 = load i32, i32* %16, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.inode*, %struct.inode** %14, align 8
  %41 = call i32 @inode_lock(%struct.inode* %40)
  br label %46

42:                                               ; preds = %36
  %43 = load %struct.inode*, %struct.inode** %14, align 8
  %44 = load %struct.inode*, %struct.inode** %15, align 8
  %45 = call i32 @lock_two_nondirectories(%struct.inode* %43, %struct.inode* %44)
  br label %46

46:                                               ; preds = %42, %39
  %47 = load %struct.file*, %struct.file** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.file*, %struct.file** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @btrfs_remap_file_range_prep(%struct.file* %47, i32 %48, %struct.file* %49, i32 %50, i32* %12, i32 %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %46
  br label %79

59:                                               ; preds = %55
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @REMAP_FILE_DEDUP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.inode*, %struct.inode** %14, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.inode*, %struct.inode** %15, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @btrfs_extent_same(%struct.inode* %65, i32 %66, i32 %67, %struct.inode* %68, i32 %69)
  store i32 %70, i32* %17, align 4
  br label %78

71:                                               ; preds = %59
  %72 = load %struct.file*, %struct.file** %10, align 8
  %73 = load %struct.file*, %struct.file** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @btrfs_clone_files(%struct.file* %72, %struct.file* %73, i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %17, align 4
  br label %78

78:                                               ; preds = %71, %64
  br label %79

79:                                               ; preds = %78, %58
  %80 = load i32, i32* %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load %struct.inode*, %struct.inode** %14, align 8
  %84 = call i32 @inode_unlock(%struct.inode* %83)
  br label %89

85:                                               ; preds = %79
  %86 = load %struct.inode*, %struct.inode** %14, align 8
  %87 = load %struct.inode*, %struct.inode** %15, align 8
  %88 = call i32 @unlock_two_nondirectories(%struct.inode* %86, %struct.inode* %87)
  br label %89

89:                                               ; preds = %85, %82
  %90 = load i32, i32* %17, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* %17, align 4
  br label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %12, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %96, %33
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @lock_two_nondirectories(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @btrfs_remap_file_range_prep(%struct.file*, i32, %struct.file*, i32, i32*, i32) #1

declare dso_local i32 @btrfs_extent_same(%struct.inode*, i32, i32, %struct.inode*, i32) #1

declare dso_local i32 @btrfs_clone_files(%struct.file*, %struct.file*, i32, i32, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @unlock_two_nondirectories(%struct.inode*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
