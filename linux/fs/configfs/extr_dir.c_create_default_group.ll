; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_create_default_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_create_default_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.dentry* }
%struct.dentry = type { %struct.configfs_dirent* }
%struct.configfs_dirent = type { i32 }
%struct.configfs_fragment = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CONFIGFS_USET_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_group*, %struct.config_group*, %struct.configfs_fragment*)* @create_default_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_default_group(%struct.config_group* %0, %struct.config_group* %1, %struct.configfs_fragment* %2) #0 {
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca %struct.config_group*, align 8
  %6 = alloca %struct.configfs_fragment*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.configfs_dirent*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.dentry*, align 8
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store %struct.config_group* %1, %struct.config_group** %5, align 8
  store %struct.configfs_fragment* %2, %struct.configfs_fragment** %6, align 8
  %11 = load %struct.config_group*, %struct.config_group** %4, align 8
  %12 = getelementptr inbounds %struct.config_group, %struct.config_group* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load %struct.dentry*, %struct.dentry** %13, align 8
  store %struct.dentry* %14, %struct.dentry** %10, align 8
  %15 = load %struct.config_group*, %struct.config_group** %5, align 8
  %16 = getelementptr inbounds %struct.config_group, %struct.config_group* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %3
  %21 = load %struct.config_group*, %struct.config_group** %5, align 8
  %22 = getelementptr inbounds %struct.config_group, %struct.config_group* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.config_group*, %struct.config_group** %5, align 8
  %26 = getelementptr inbounds %struct.config_group, %struct.config_group* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  br label %28

28:                                               ; preds = %20, %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  %31 = load %struct.dentry*, %struct.dentry** %10, align 8
  %32 = load %struct.config_group*, %struct.config_group** %5, align 8
  %33 = getelementptr inbounds %struct.config_group, %struct.config_group* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.dentry* @d_alloc_name(%struct.dentry* %31, i32 %35)
  store %struct.dentry* %36, %struct.dentry** %9, align 8
  %37 = load %struct.dentry*, %struct.dentry** %9, align 8
  %38 = icmp ne %struct.dentry* %37, null
  br i1 %38, label %39, label %69

39:                                               ; preds = %28
  %40 = load %struct.dentry*, %struct.dentry** %9, align 8
  %41 = call i32 @d_add(%struct.dentry* %40, i32* null)
  %42 = load %struct.config_group*, %struct.config_group** %4, align 8
  %43 = getelementptr inbounds %struct.config_group, %struct.config_group* %42, i32 0, i32 0
  %44 = load %struct.config_group*, %struct.config_group** %5, align 8
  %45 = getelementptr inbounds %struct.config_group, %struct.config_group* %44, i32 0, i32 0
  %46 = load %struct.dentry*, %struct.dentry** %9, align 8
  %47 = load %struct.configfs_fragment*, %struct.configfs_fragment** %6, align 8
  %48 = call i32 @configfs_attach_group(%struct.TYPE_3__* %43, %struct.TYPE_3__* %45, %struct.dentry* %46, %struct.configfs_fragment* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %39
  %52 = load %struct.dentry*, %struct.dentry** %9, align 8
  %53 = getelementptr inbounds %struct.dentry, %struct.dentry* %52, i32 0, i32 0
  %54 = load %struct.configfs_dirent*, %struct.configfs_dirent** %53, align 8
  store %struct.configfs_dirent* %54, %struct.configfs_dirent** %8, align 8
  %55 = load i32, i32* @CONFIGFS_USET_DEFAULT, align 4
  %56 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %57 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %68

60:                                               ; preds = %39
  %61 = load %struct.dentry*, %struct.dentry** %9, align 8
  %62 = call i32 @d_inode(%struct.dentry* %61)
  %63 = call i32 @BUG_ON(i32 %62)
  %64 = load %struct.dentry*, %struct.dentry** %9, align 8
  %65 = call i32 @d_drop(%struct.dentry* %64)
  %66 = load %struct.dentry*, %struct.dentry** %9, align 8
  %67 = call i32 @dput(%struct.dentry* %66)
  br label %68

68:                                               ; preds = %60, %51
  br label %69

69:                                               ; preds = %68, %28
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local %struct.dentry* @d_alloc_name(%struct.dentry*, i32) #1

declare dso_local i32 @d_add(%struct.dentry*, i32*) #1

declare dso_local i32 @configfs_attach_group(%struct.TYPE_3__*, %struct.TYPE_3__*, %struct.dentry*, %struct.configfs_fragment*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
