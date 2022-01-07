; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_symlink.c_create_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_symlink.c_create_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.configfs_dirent* }
%struct.configfs_dirent = type { i32, i32 }
%struct.dentry = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@configfs_dirent_lock = common dso_local global i32 0, align 4
@CONFIGFS_USET_DROPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, %struct.config_item*, %struct.dentry*)* @create_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_link(%struct.config_item* %0, %struct.config_item* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca %struct.config_item*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.configfs_dirent*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store %struct.config_item* %1, %struct.config_item** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %11 = load %struct.config_item*, %struct.config_item** %6, align 8
  %12 = getelementptr inbounds %struct.config_item, %struct.config_item* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.configfs_dirent*, %struct.configfs_dirent** %14, align 8
  store %struct.configfs_dirent* %15, %struct.configfs_dirent** %8, align 8
  %16 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %17 = call i32 @configfs_dirent_is_ready(%struct.configfs_dirent* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %85

22:                                               ; preds = %3
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kzalloc(i32 %23, i32 %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %85

31:                                               ; preds = %22
  %32 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %33 = call i32 @configfs_get(%struct.configfs_dirent* %32)
  %34 = call i32 @spin_lock(i32* @configfs_dirent_lock)
  %35 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %36 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CONFIGFS_USET_DROPPING, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %31
  %42 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %43 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %44 = call i32 @configfs_put(%struct.configfs_dirent* %43)
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @kfree(i8* %45)
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %85

49:                                               ; preds = %31
  %50 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %51 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %55 = load %struct.config_item*, %struct.config_item** %5, align 8
  %56 = load %struct.config_item*, %struct.config_item** %6, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @configfs_get_target_path(%struct.config_item* %55, %struct.config_item* %56, i8* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %49
  %62 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %63 = load %struct.config_item*, %struct.config_item** %5, align 8
  %64 = getelementptr inbounds %struct.config_item, %struct.config_item* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load %struct.dentry*, %struct.dentry** %7, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @configfs_create_link(%struct.configfs_dirent* %62, %struct.TYPE_2__* %65, %struct.dentry* %66, i8* %67)
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %61, %49
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = call i32 @spin_lock(i32* @configfs_dirent_lock)
  %74 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %75 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 4
  %78 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %79 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %80 = call i32 @configfs_put(%struct.configfs_dirent* %79)
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @kfree(i8* %81)
  br label %83

83:                                               ; preds = %72, %69
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %41, %28, %19
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @configfs_dirent_is_ready(%struct.configfs_dirent*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @configfs_get(%struct.configfs_dirent*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @configfs_put(%struct.configfs_dirent*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @configfs_get_target_path(%struct.config_item*, %struct.config_item*, i8*) #1

declare dso_local i32 @configfs_create_link(%struct.configfs_dirent*, %struct.TYPE_2__*, %struct.dentry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
