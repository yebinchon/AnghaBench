; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.ecryptfs_mount_crypt_stat = type { i32 }
%struct.TYPE_2__ = type { %struct.ecryptfs_mount_crypt_stat }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @ecryptfs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ecryptfs_mount_crypt_stat*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.ecryptfs_mount_crypt_stat* null, %struct.ecryptfs_mount_crypt_stat** %12, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry* %13)
  store %struct.dentry* %14, %struct.dentry** %8, align 8
  %15 = load %struct.dentry*, %struct.dentry** %8, align 8
  %16 = call i32 @dget(%struct.dentry* %15)
  %17 = load %struct.dentry*, %struct.dentry** %8, align 8
  %18 = call %struct.dentry* @lock_parent(%struct.dentry* %17)
  store %struct.dentry* %18, %struct.dentry** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_2__* @ecryptfs_superblock_to_private(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.ecryptfs_mount_crypt_stat* %23, %struct.ecryptfs_mount_crypt_stat** %12, align 8
  %24 = load %struct.ecryptfs_mount_crypt_stat*, %struct.ecryptfs_mount_crypt_stat** %12, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = call i32 @ecryptfs_encrypt_and_encode_filename(i8** %10, i64* %11, %struct.ecryptfs_mount_crypt_stat* %24, i8* %25, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %66

32:                                               ; preds = %3
  %33 = load %struct.dentry*, %struct.dentry** %9, align 8
  %34 = call i32 @d_inode(%struct.dentry* %33)
  %35 = load %struct.dentry*, %struct.dentry** %8, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @vfs_symlink(i32 %34, %struct.dentry* %35, i8* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @kfree(i8* %38)
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %32
  %43 = load %struct.dentry*, %struct.dentry** %8, align 8
  %44 = call i64 @d_really_is_negative(%struct.dentry* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %32
  br label %66

47:                                               ; preds = %42
  %48 = load %struct.dentry*, %struct.dentry** %8, align 8
  %49 = load %struct.dentry*, %struct.dentry** %5, align 8
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ecryptfs_interpose(%struct.dentry* %48, %struct.dentry* %49, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %66

57:                                               ; preds = %47
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = load %struct.dentry*, %struct.dentry** %9, align 8
  %60 = call i32 @d_inode(%struct.dentry* %59)
  %61 = call i32 @fsstack_copy_attr_times(%struct.inode* %58, i32 %60)
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = load %struct.dentry*, %struct.dentry** %9, align 8
  %64 = call i32 @d_inode(%struct.dentry* %63)
  %65 = call i32 @fsstack_copy_inode_size(%struct.inode* %62, i32 %64)
  br label %66

66:                                               ; preds = %57, %56, %46, %31
  %67 = load %struct.dentry*, %struct.dentry** %9, align 8
  %68 = call i32 @unlock_dir(%struct.dentry* %67)
  %69 = load %struct.dentry*, %struct.dentry** %8, align 8
  %70 = call i32 @dput(%struct.dentry* %69)
  %71 = load %struct.dentry*, %struct.dentry** %5, align 8
  %72 = call i64 @d_really_is_negative(%struct.dentry* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load %struct.dentry*, %struct.dentry** %5, align 8
  %76 = call i32 @d_drop(%struct.dentry* %75)
  br label %77

77:                                               ; preds = %74, %66
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local %struct.dentry* @lock_parent(%struct.dentry*) #1

declare dso_local %struct.TYPE_2__* @ecryptfs_superblock_to_private(i32) #1

declare dso_local i32 @ecryptfs_encrypt_and_encode_filename(i8**, i64*, %struct.ecryptfs_mount_crypt_stat*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @vfs_symlink(i32, %struct.dentry*, i8*) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i32 @ecryptfs_interpose(%struct.dentry*, %struct.dentry*, i32) #1

declare dso_local i32 @fsstack_copy_attr_times(%struct.inode*, i32) #1

declare dso_local i32 @fsstack_copy_inode_size(%struct.inode*, i32) #1

declare dso_local i32 @unlock_dir(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
