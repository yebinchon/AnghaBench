; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_props.c_prop_compression_apply.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_props.c_prop_compression_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@BTRFS_INODE_NOCOMPRESS = common dso_local global i32 0, align 4
@BTRFS_INODE_COMPRESS = common dso_local global i32 0, align 4
@BTRFS_COMPRESS_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lzo\00", align 1
@BTRFS_COMPRESS_LZO = common dso_local global i32 0, align 4
@COMPRESS_LZO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"zlib\00", align 1
@BTRFS_COMPRESS_ZLIB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"zstd\00", align 1
@BTRFS_COMPRESS_ZSTD = common dso_local global i32 0, align 4
@COMPRESS_ZSTD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i64)* @prop_compression_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prop_compression_apply(%struct.inode* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %12)
  store %struct.btrfs_fs_info* %13, %struct.btrfs_fs_info** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %3
  %17 = load i32, i32* @BTRFS_INODE_NOCOMPRESS, align 4
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %17
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @BTRFS_INODE_COMPRESS, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %24
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @BTRFS_COMPRESS_NONE, align 4
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  store i32 0, i32* %4, align 4
  br label %81

34:                                               ; preds = %3
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %35, i32 3)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @BTRFS_COMPRESS_LZO, align 4
  store i32 %39, i32* %9, align 4
  %40 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %41 = load i32, i32* @COMPRESS_LZO, align 4
  %42 = call i32 @btrfs_set_fs_incompat(%struct.btrfs_fs_info* %40, i32 %41)
  br label %63

43:                                               ; preds = %34
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 4)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @BTRFS_COMPRESS_ZLIB, align 4
  store i32 %48, i32* %9, align 4
  br label %62

49:                                               ; preds = %43
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %50, i32 4)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @BTRFS_COMPRESS_ZSTD, align 4
  store i32 %54, i32* %9, align 4
  %55 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %56 = load i32, i32* @COMPRESS_ZSTD, align 4
  %57 = call i32 @btrfs_set_fs_incompat(%struct.btrfs_fs_info* %55, i32 %56)
  br label %61

58:                                               ; preds = %49
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %81

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %47
  br label %63

63:                                               ; preds = %62, %38
  %64 = load i32, i32* @BTRFS_INODE_NOCOMPRESS, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %65
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* @BTRFS_INODE_COMPRESS, align 4
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %71
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %78)
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %63, %58, %16
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @btrfs_set_fs_incompat(%struct.btrfs_fs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
