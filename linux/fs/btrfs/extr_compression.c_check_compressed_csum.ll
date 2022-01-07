; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_compression.c_check_compressed_csum.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_compression.c_check_compressed_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.btrfs_inode = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32, i32 }
%struct.compressed_bio = type { i64, i32, %struct.page**, i32* }
%struct.page = type { i32 }

@shash = common dso_local global %struct.TYPE_8__* null, align 8
@BTRFS_CSUM_SIZE = common dso_local global i32 0, align 4
@BTRFS_INODE_NODATASUM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_inode*, %struct.compressed_bio*, i32)* @check_compressed_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_compressed_csum(%struct.btrfs_inode* %0, %struct.compressed_bio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_inode*, align 8
  %6 = alloca %struct.compressed_bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.btrfs_inode* %0, %struct.btrfs_inode** %5, align 8
  store %struct.compressed_bio* %1, %struct.compressed_bio** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %19 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %21, align 8
  store %struct.btrfs_fs_info* %22, %struct.btrfs_fs_info** %8, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shash, align 8
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %25 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_8__* %23, i32 %26)
  %28 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %29 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @btrfs_super_csum_size(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @BTRFS_CSUM_SIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %14, align 8
  %35 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %15, align 8
  %36 = load %struct.compressed_bio*, %struct.compressed_bio** %6, align 8
  %37 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %16, align 8
  %39 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %40 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @BTRFS_INODE_NODATASUM, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %103

46:                                               ; preds = %3
  %47 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %48 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shash, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  store i64 0, i64* %12, align 8
  br label %52

52:                                               ; preds = %97, %46
  %53 = load i64, i64* %12, align 8
  %54 = load %struct.compressed_bio*, %struct.compressed_bio** %6, align 8
  %55 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %100

58:                                               ; preds = %52
  %59 = load %struct.compressed_bio*, %struct.compressed_bio** %6, align 8
  %60 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %59, i32 0, i32 2
  %61 = load %struct.page**, %struct.page*** %60, align 8
  %62 = load i64, i64* %12, align 8
  %63 = getelementptr inbounds %struct.page*, %struct.page** %61, i64 %62
  %64 = load %struct.page*, %struct.page** %63, align 8
  store %struct.page* %64, %struct.page** %11, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shash, align 8
  %66 = call i32 @crypto_shash_init(%struct.TYPE_8__* %65)
  %67 = load %struct.page*, %struct.page** %11, align 8
  %68 = call i8* @kmap_atomic(%struct.page* %67)
  store i8* %68, i8** %13, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shash, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = call i32 @crypto_shash_update(%struct.TYPE_8__* %69, i8* %70, i32 %71)
  %73 = load i8*, i8** %13, align 8
  %74 = call i32 @kunmap_atomic(i8* %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shash, align 8
  %76 = call i32 @crypto_shash_final(%struct.TYPE_8__* %75, i32* %35)
  %77 = bitcast i32* %35 to i32**
  %78 = load i32*, i32** %16, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i64 @memcmp(i32** %77, i32* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %58
  %83 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32*, i32** %16, align 8
  %86 = load %struct.compressed_bio*, %struct.compressed_bio** %6, align 8
  %87 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @btrfs_print_data_csum_error(%struct.btrfs_inode* %83, i32 %84, i32* %35, i32* %85, i32 %88)
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %10, align 4
  br label %101

92:                                               ; preds = %58
  %93 = load i32, i32* %9, align 4
  %94 = load i32*, i32** %16, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %16, align 8
  br label %97

97:                                               ; preds = %92
  %98 = load i64, i64* %12, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %12, align 8
  br label %52

100:                                              ; preds = %52
  store i32 0, i32* %10, align 4
  br label %101

101:                                              ; preds = %100, %82
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %103

103:                                              ; preds = %101, %45
  %104 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @btrfs_super_csum_size(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @crypto_shash_init(%struct.TYPE_8__*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @crypto_shash_update(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @crypto_shash_final(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @memcmp(i32**, i32*, i32) #1

declare dso_local i32 @btrfs_print_data_csum_error(%struct.btrfs_inode*, i32, i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
