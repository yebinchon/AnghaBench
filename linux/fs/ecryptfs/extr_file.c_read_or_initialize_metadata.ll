; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_file.c_read_or_initialize_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_file.c_read_or_initialize_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.ecryptfs_mount_crypt_stat = type { i32 }
%struct.ecryptfs_crypt_stat = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.ecryptfs_crypt_stat }
%struct.TYPE_3__ = type { %struct.ecryptfs_mount_crypt_stat }

@ECRYPTFS_POLICY_APPLIED = common dso_local global i32 0, align 4
@ECRYPTFS_KEY_VALID = common dso_local global i32 0, align 4
@ECRYPTFS_PLAINTEXT_PASSTHROUGH_ENABLED = common dso_local global i32 0, align 4
@ECRYPTFS_I_SIZE_INITIALIZED = common dso_local global i32 0, align 4
@ECRYPTFS_ENCRYPTED = common dso_local global i32 0, align 4
@ECRYPTFS_XATTR_METADATA_ENABLED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @read_or_initialize_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_or_initialize_metadata(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ecryptfs_mount_crypt_stat*, align 8
  %5 = alloca %struct.ecryptfs_crypt_stat*, align 8
  %6 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %7 = load %struct.dentry*, %struct.dentry** %2, align 8
  %8 = call %struct.inode* @d_inode(%struct.dentry* %7)
  store %struct.inode* %8, %struct.inode** %3, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.TYPE_4__* @ecryptfs_inode_to_private(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.ecryptfs_crypt_stat* %11, %struct.ecryptfs_crypt_stat** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_3__* @ecryptfs_superblock_to_private(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.ecryptfs_mount_crypt_stat* %16, %struct.ecryptfs_mount_crypt_stat** %4, align 8
  %17 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %5, align 8
  %18 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %5, align 8
  %21 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ECRYPTFS_POLICY_APPLIED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %1
  %27 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %5, align 8
  %28 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ECRYPTFS_KEY_VALID, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %79

34:                                               ; preds = %26, %1
  %35 = load %struct.dentry*, %struct.dentry** %2, align 8
  %36 = call i32 @ecryptfs_read_metadata(%struct.dentry* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %79

40:                                               ; preds = %34
  %41 = load %struct.ecryptfs_mount_crypt_stat*, %struct.ecryptfs_mount_crypt_stat** %4, align 8
  %42 = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, %struct.ecryptfs_mount_crypt_stat* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ECRYPTFS_PLAINTEXT_PASSTHROUGH_ENABLED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load i32, i32* @ECRYPTFS_I_SIZE_INITIALIZED, align 4
  %49 = load i32, i32* @ECRYPTFS_ENCRYPTED, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %5, align 8
  %53 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  store i32 0, i32* %6, align 4
  br label %79

56:                                               ; preds = %40
  %57 = load %struct.ecryptfs_mount_crypt_stat*, %struct.ecryptfs_mount_crypt_stat** %4, align 8
  %58 = getelementptr inbounds %struct.ecryptfs_mount_crypt_stat, %struct.ecryptfs_mount_crypt_stat* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ECRYPTFS_XATTR_METADATA_ENABLED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %56
  %64 = load %struct.inode*, %struct.inode** %3, align 8
  %65 = call i32 @ecryptfs_inode_to_lower(%struct.inode* %64)
  %66 = call i32 @i_size_read(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  %69 = load %struct.dentry*, %struct.dentry** %2, align 8
  %70 = load %struct.inode*, %struct.inode** %3, align 8
  %71 = call i32 @ecryptfs_initialize_file(%struct.dentry* %69, %struct.inode* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  br label %79

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %63, %56
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %76, %74, %47, %39, %33
  %80 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %5, align 8
  %81 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.TYPE_4__* @ecryptfs_inode_to_private(%struct.inode*) #1

declare dso_local %struct.TYPE_3__* @ecryptfs_superblock_to_private(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ecryptfs_read_metadata(%struct.dentry*) #1

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i32 @ecryptfs_inode_to_lower(%struct.inode*) #1

declare dso_local i32 @ecryptfs_initialize_file(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
