; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_symlink.c_configfs_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_symlink.c_configfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.configfs_dirent* }
%struct.configfs_dirent = type { i32 }
%struct.path = type { i32 }
%struct.config_item = type { %struct.config_item_type* }
%struct.config_item_type = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.config_item*, %struct.config_item*)*, i32 (%struct.config_item*, %struct.config_item*)* }

@ENOENT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@configfs_symlink_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @configfs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.path, align 4
  %10 = alloca %struct.configfs_dirent*, align 8
  %11 = alloca %struct.config_item*, align 8
  %12 = alloca %struct.config_item*, align 8
  %13 = alloca %struct.config_item_type*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.config_item* null, %struct.config_item** %12, align 8
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.configfs_dirent*, %struct.configfs_dirent** %17, align 8
  store %struct.configfs_dirent* %18, %struct.configfs_dirent** %10, align 8
  %19 = load %struct.configfs_dirent*, %struct.configfs_dirent** %10, align 8
  %20 = call i32 @configfs_dirent_is_ready(%struct.configfs_dirent* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %130

25:                                               ; preds = %3
  %26 = load %struct.dentry*, %struct.dentry** %6, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call %struct.config_item* @configfs_get_config_item(%struct.TYPE_4__* %28)
  store %struct.config_item* %29, %struct.config_item** %11, align 8
  %30 = load %struct.config_item*, %struct.config_item** %11, align 8
  %31 = getelementptr inbounds %struct.config_item, %struct.config_item* %30, i32 0, i32 0
  %32 = load %struct.config_item_type*, %struct.config_item_type** %31, align 8
  store %struct.config_item_type* %32, %struct.config_item_type** %13, align 8
  %33 = load i32, i32* @EPERM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.config_item_type*, %struct.config_item_type** %13, align 8
  %36 = icmp ne %struct.config_item_type* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %25
  %38 = load %struct.config_item_type*, %struct.config_item_type** %13, align 8
  %39 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = icmp ne %struct.TYPE_3__* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.config_item_type*, %struct.config_item_type** %13, align 8
  %44 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32 (%struct.config_item*, %struct.config_item*)*, i32 (%struct.config_item*, %struct.config_item*)** %46, align 8
  %48 = icmp ne i32 (%struct.config_item*, %struct.config_item*)* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %42, %37, %25
  br label %126

50:                                               ; preds = %42
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = call i32 @inode_unlock(%struct.inode* %51)
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.dentry*, %struct.dentry** %6, align 8
  %55 = getelementptr inbounds %struct.dentry, %struct.dentry* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @get_target(i8* %53, %struct.path* %9, %struct.config_item** %12, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = call i32 @inode_lock(%struct.inode* %58)
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %126

63:                                               ; preds = %50
  %64 = load %struct.dentry*, %struct.dentry** %6, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = load %struct.dentry*, %struct.dentry** %6, align 8
  %70 = call i64 @d_unhashed(%struct.dentry* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68, %63
  %73 = load i32, i32* @EEXIST, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %8, align 4
  br label %81

75:                                               ; preds = %68
  %76 = load %struct.inode*, %struct.inode** %5, align 8
  %77 = load i32, i32* @MAY_WRITE, align 4
  %78 = load i32, i32* @MAY_EXEC, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @inode_permission(%struct.inode* %76, i32 %79)
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %75, %72
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %81
  %85 = load %struct.config_item_type*, %struct.config_item_type** %13, align 8
  %86 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32 (%struct.config_item*, %struct.config_item*)*, i32 (%struct.config_item*, %struct.config_item*)** %88, align 8
  %90 = load %struct.config_item*, %struct.config_item** %11, align 8
  %91 = load %struct.config_item*, %struct.config_item** %12, align 8
  %92 = call i32 %89(%struct.config_item* %90, %struct.config_item* %91)
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %84, %81
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %122, label %96

96:                                               ; preds = %93
  %97 = call i32 @mutex_lock(i32* @configfs_symlink_mutex)
  %98 = load %struct.config_item*, %struct.config_item** %11, align 8
  %99 = load %struct.config_item*, %struct.config_item** %12, align 8
  %100 = load %struct.dentry*, %struct.dentry** %6, align 8
  %101 = call i32 @create_link(%struct.config_item* %98, %struct.config_item* %99, %struct.dentry* %100)
  store i32 %101, i32* %8, align 4
  %102 = call i32 @mutex_unlock(i32* @configfs_symlink_mutex)
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %96
  %106 = load %struct.config_item_type*, %struct.config_item_type** %13, align 8
  %107 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %106, i32 0, i32 0
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32 (%struct.config_item*, %struct.config_item*)*, i32 (%struct.config_item*, %struct.config_item*)** %109, align 8
  %111 = icmp ne i32 (%struct.config_item*, %struct.config_item*)* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %105
  %113 = load %struct.config_item_type*, %struct.config_item_type** %13, align 8
  %114 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %113, i32 0, i32 0
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32 (%struct.config_item*, %struct.config_item*)*, i32 (%struct.config_item*, %struct.config_item*)** %116, align 8
  %118 = load %struct.config_item*, %struct.config_item** %11, align 8
  %119 = load %struct.config_item*, %struct.config_item** %12, align 8
  %120 = call i32 %117(%struct.config_item* %118, %struct.config_item* %119)
  br label %121

121:                                              ; preds = %112, %105, %96
  br label %122

122:                                              ; preds = %121, %93
  %123 = load %struct.config_item*, %struct.config_item** %12, align 8
  %124 = call i32 @config_item_put(%struct.config_item* %123)
  %125 = call i32 @path_put(%struct.path* %9)
  br label %126

126:                                              ; preds = %122, %62, %49
  %127 = load %struct.config_item*, %struct.config_item** %11, align 8
  %128 = call i32 @config_item_put(%struct.config_item* %127)
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %126, %22
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @configfs_dirent_is_ready(%struct.configfs_dirent*) #1

declare dso_local %struct.config_item* @configfs_get_config_item(%struct.TYPE_4__*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @get_target(i8*, %struct.path*, %struct.config_item**, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @d_unhashed(%struct.dentry*) #1

declare dso_local i32 @inode_permission(%struct.inode*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @create_link(%struct.config_item*, %struct.config_item*, %struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
