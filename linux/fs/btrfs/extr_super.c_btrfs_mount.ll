; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_super.c_btrfs_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_super.c_btrfs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.file_system_type = type { i32 }
%struct.vfsmount = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@btrfs_root_fs_type = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SB_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)* @btrfs_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @btrfs_mount(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.file_system_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.vfsmount*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file_system_type* %0, %struct.file_system_type** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @btrfs_parse_subvol_options(i8* %15, i8** %12, i32* %13)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i8*, i8** %12, align 8
  %21 = call i32 @kfree(i8* %20)
  %22 = load i32, i32* %14, align 4
  %23 = call %struct.dentry* @ERR_PTR(i32 %22)
  store %struct.dentry* %23, %struct.dentry** %5, align 8
  br label %104

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call %struct.vfsmount* @vfs_kern_mount(i32* @btrfs_root_fs_type, i32 %25, i8* %26, i8* %27)
  store %struct.vfsmount* %28, %struct.vfsmount** %10, align 8
  %29 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %30 = call i32 @PTR_ERR_OR_ZERO(%struct.vfsmount* %29)
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %88

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @SB_RDONLY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @SB_RDONLY, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call %struct.vfsmount* @vfs_kern_mount(i32* @btrfs_root_fs_type, i32 %43, i8* %44, i8* %45)
  store %struct.vfsmount* %46, %struct.vfsmount** %10, align 8
  br label %87

47:                                               ; preds = %34
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @SB_RDONLY, align 4
  %50 = or i32 %48, %49
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call %struct.vfsmount* @vfs_kern_mount(i32* @btrfs_root_fs_type, i32 %50, i8* %51, i8* %52)
  store %struct.vfsmount* %53, %struct.vfsmount** %10, align 8
  %54 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %55 = call i64 @IS_ERR(%struct.vfsmount* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %59 = call %struct.dentry* @ERR_CAST(%struct.vfsmount* %58)
  store %struct.dentry* %59, %struct.dentry** %11, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @kfree(i8* %60)
  br label %102

62:                                               ; preds = %47
  %63 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %64 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @down_write(i32* %66)
  %68 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %69 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = call i32 @btrfs_remount(%struct.TYPE_2__* %70, i32* %7, i32* null)
  store i32 %71, i32* %14, align 4
  %72 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %73 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i32 @up_write(i32* %75)
  %77 = load i32, i32* %14, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %62
  %80 = load i32, i32* %14, align 4
  %81 = call %struct.dentry* @ERR_PTR(i32 %80)
  store %struct.dentry* %81, %struct.dentry** %11, align 8
  %82 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %83 = call i32 @mntput(%struct.vfsmount* %82)
  %84 = load i8*, i8** %12, align 8
  %85 = call i32 @kfree(i8* %84)
  br label %102

86:                                               ; preds = %62
  br label %87

87:                                               ; preds = %86, %39
  br label %88

88:                                               ; preds = %87, %24
  %89 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %90 = call i64 @IS_ERR(%struct.vfsmount* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %94 = call %struct.dentry* @ERR_CAST(%struct.vfsmount* %93)
  store %struct.dentry* %94, %struct.dentry** %11, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = call i32 @kfree(i8* %95)
  br label %102

97:                                               ; preds = %88
  %98 = load i8*, i8** %12, align 8
  %99 = load i32, i32* %13, align 4
  %100 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %101 = call %struct.dentry* @mount_subvol(i8* %98, i32 %99, %struct.vfsmount* %100)
  store %struct.dentry* %101, %struct.dentry** %11, align 8
  br label %102

102:                                              ; preds = %97, %92, %79, %57
  %103 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %103, %struct.dentry** %5, align 8
  br label %104

104:                                              ; preds = %102, %19
  %105 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %105
}

declare dso_local i32 @btrfs_parse_subvol_options(i8*, i8**, i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.vfsmount* @vfs_kern_mount(i32*, i32, i8*, i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.vfsmount*) #1

declare dso_local i64 @IS_ERR(%struct.vfsmount*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.vfsmount*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @btrfs_remount(%struct.TYPE_2__*, i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mntput(%struct.vfsmount*) #1

declare dso_local %struct.dentry* @mount_subvol(i8*, i32, %struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
