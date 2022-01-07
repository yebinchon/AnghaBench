; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_getattr_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_getattr_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.kstat = type { i64 }
%struct.ecryptfs_mount_crypt_stat = type { i32 }
%struct.TYPE_2__ = type { %struct.ecryptfs_mount_crypt_stat }

@ECRYPTFS_GLOBAL_ENCRYPT_FILENAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.kstat*, i32, i32)* @ecryptfs_getattr_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_getattr_link(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.ecryptfs_mount_crypt_stat*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.kstat* %1, %struct.kstat** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.path*, %struct.path** %5, align 8
  %15 = getelementptr inbounds %struct.path, %struct.path* %14, i32 0, i32 0
  %16 = load %struct.dentry*, %struct.dentry** %15, align 8
  store %struct.dentry* %16, %struct.dentry** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.dentry*, %struct.dentry** %9, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_2__* @ecryptfs_superblock_to_private(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.ecryptfs_mount_crypt_stat* %21, %struct.ecryptfs_mount_crypt_stat** %10, align 8
  %22 = load %struct.dentry*, %struct.dentry** %9, align 8
  %23 = call i32 @d_inode(%struct.dentry* %22)
  %24 = load %struct.kstat*, %struct.kstat** %6, align 8
  %25 = call i32 @generic_fillattr(i32 %23, %struct.kstat* %24)
  %26 = load %struct.ecryptfs_mount_crypt_stat*, %struct.ecryptfs_mount_crypt_stat** %10, align 8
  %27 = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, %struct.ecryptfs_mount_crypt_stat* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ECRYPTFS_GLOBAL_ENCRYPT_FILENAMES, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %4
  %33 = load %struct.dentry*, %struct.dentry** %9, align 8
  %34 = call i8* @ecryptfs_readlink_lower(%struct.dentry* %33, i64* %13)
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 @IS_ERR(i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i8*, i8** %12, align 8
  %40 = call i32 @kfree(i8* %39)
  %41 = load i64, i64* %13, align 8
  %42 = load %struct.kstat*, %struct.kstat** %6, align 8
  %43 = getelementptr inbounds %struct.kstat, %struct.kstat* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %47

44:                                               ; preds = %32
  %45 = load i8*, i8** %12, align 8
  %46 = call i32 @PTR_ERR(i8* %45)
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %44, %38
  br label %48

48:                                               ; preds = %47, %4
  %49 = load i32, i32* %11, align 4
  ret i32 %49
}

declare dso_local %struct.TYPE_2__* @ecryptfs_superblock_to_private(i32) #1

declare dso_local i32 @generic_fillattr(i32, %struct.kstat*) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i8* @ecryptfs_readlink_lower(%struct.dentry*, i64*) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
