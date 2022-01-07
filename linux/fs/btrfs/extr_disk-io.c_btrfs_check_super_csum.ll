; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_check_super_csum.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_check_super_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_super_block = type { i32 }

@BTRFS_CSUM_SIZE = common dso_local global i32 0, align 4
@shash = common dso_local global %struct.TYPE_6__* null, align 8
@BTRFS_SUPER_INFO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, i8*)* @btrfs_check_super_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_check_super_csum(%struct.btrfs_fs_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.btrfs_super_block*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.btrfs_super_block*
  store %struct.btrfs_super_block* %11, %struct.btrfs_super_block** %6, align 8
  %12 = load i32, i32* @BTRFS_CSUM_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %18 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_6__* %16, i32 %19)
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %22 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %27 = call i32 @crypto_shash_init(%struct.TYPE_6__* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* @BTRFS_CSUM_SIZE, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i32, i32* @BTRFS_SUPER_INFO_SIZE, align 4
  %34 = load i32, i32* @BTRFS_CSUM_SIZE, align 4
  %35 = sub nsw i32 %33, %34
  %36 = call i32 @crypto_shash_update(%struct.TYPE_6__* %28, i8* %32, i32 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %38 = call i32 @crypto_shash_final(%struct.TYPE_6__* %37, i8* %15)
  %39 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %6, align 8
  %40 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %6, align 8
  %43 = call i32 @btrfs_super_csum_size(%struct.btrfs_super_block* %42)
  %44 = call i64 @memcmp(i32 %41, i8* %15, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %48

47:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %48

48:                                               ; preds = %47, %46
  %49 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @crypto_shash_init(%struct.TYPE_6__*) #2

declare dso_local i32 @crypto_shash_update(%struct.TYPE_6__*, i8*, i32) #2

declare dso_local i32 @crypto_shash_final(%struct.TYPE_6__*, i8*) #2

declare dso_local i64 @memcmp(i32, i8*, i32) #2

declare dso_local i32 @btrfs_super_csum_size(%struct.btrfs_super_block*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
