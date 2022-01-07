; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_attach_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_attach_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.dentry = type { i32 }
%struct.configfs_fragment = type { i32 }
%struct.TYPE_4__ = type { i32 }

@S_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, %struct.config_item*, %struct.dentry*, %struct.configfs_fragment*)* @configfs_attach_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configfs_attach_item(%struct.config_item* %0, %struct.config_item* %1, %struct.dentry* %2, %struct.configfs_fragment* %3) #0 {
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca %struct.config_item*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.configfs_fragment*, align 8
  %9 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store %struct.config_item* %1, %struct.config_item** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  store %struct.configfs_fragment* %3, %struct.configfs_fragment** %8, align 8
  %10 = load %struct.config_item*, %struct.config_item** %6, align 8
  %11 = load %struct.dentry*, %struct.dentry** %7, align 8
  %12 = load %struct.configfs_fragment*, %struct.configfs_fragment** %8, align 8
  %13 = call i32 @configfs_create_dir(%struct.config_item* %10, %struct.dentry* %11, %struct.configfs_fragment* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %4
  %17 = load %struct.config_item*, %struct.config_item** %6, align 8
  %18 = call i32 @populate_attrs(%struct.config_item* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %16
  %22 = load %struct.dentry*, %struct.dentry** %7, align 8
  %23 = call %struct.TYPE_4__* @d_inode(%struct.dentry* %22)
  %24 = call i32 @inode_lock(%struct.TYPE_4__* %23)
  %25 = load %struct.config_item*, %struct.config_item** %6, align 8
  %26 = call i32 @configfs_remove_dir(%struct.config_item* %25)
  %27 = load i32, i32* @S_DEAD, align 4
  %28 = load %struct.dentry*, %struct.dentry** %7, align 8
  %29 = call %struct.TYPE_4__* @d_inode(%struct.dentry* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %27
  store i32 %32, i32* %30, align 4
  %33 = load %struct.dentry*, %struct.dentry** %7, align 8
  %34 = call i32 @dont_mount(%struct.dentry* %33)
  %35 = load %struct.dentry*, %struct.dentry** %7, align 8
  %36 = call %struct.TYPE_4__* @d_inode(%struct.dentry* %35)
  %37 = call i32 @inode_unlock(%struct.TYPE_4__* %36)
  %38 = load %struct.dentry*, %struct.dentry** %7, align 8
  %39 = call i32 @d_delete(%struct.dentry* %38)
  br label %40

40:                                               ; preds = %21, %16
  br label %41

41:                                               ; preds = %40, %4
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

declare dso_local i32 @configfs_create_dir(%struct.config_item*, %struct.dentry*, %struct.configfs_fragment*) #1

declare dso_local i32 @populate_attrs(%struct.config_item*) #1

declare dso_local i32 @inode_lock(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @configfs_remove_dir(%struct.config_item*) #1

declare dso_local i32 @dont_mount(%struct.dentry*) #1

declare dso_local i32 @inode_unlock(%struct.TYPE_4__*) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
