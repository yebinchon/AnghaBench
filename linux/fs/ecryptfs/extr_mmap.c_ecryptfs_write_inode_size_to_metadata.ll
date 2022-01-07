; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_mmap.c_ecryptfs_write_inode_size_to_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_mmap.c_ecryptfs_write_inode_size_to_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ecryptfs_crypt_stat = type { i32 }
%struct.TYPE_2__ = type { %struct.ecryptfs_crypt_stat }

@ECRYPTFS_ENCRYPTED = common dso_local global i32 0, align 4
@ECRYPTFS_METADATA_IN_XATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecryptfs_write_inode_size_to_metadata(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ecryptfs_crypt_stat*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = call %struct.TYPE_2__* @ecryptfs_inode_to_private(%struct.inode* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.ecryptfs_crypt_stat* %7, %struct.ecryptfs_crypt_stat** %4, align 8
  %8 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %4, align 8
  %9 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ECRYPTFS_ENCRYPTED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %4, align 8
  %18 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ECRYPTFS_METADATA_IN_XATTR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = call i32 @ecryptfs_write_inode_size_to_xattr(%struct.inode* %24)
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %1
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = call i32 @ecryptfs_write_inode_size_to_header(%struct.inode* %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.TYPE_2__* @ecryptfs_inode_to_private(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ecryptfs_write_inode_size_to_xattr(%struct.inode*) #1

declare dso_local i32 @ecryptfs_write_inode_size_to_header(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
