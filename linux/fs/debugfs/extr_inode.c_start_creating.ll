; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c_start_creating.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c_start_creating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.dentry* }
%struct.dentry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"creating file '%s'\0A\00", align 1
@debug_fs_type = common dso_local global i32 0, align 4
@debugfs_mount = common dso_local global %struct.TYPE_6__* null, align 8
@debugfs_mount_count = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Unable to pin filesystem for file '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Directory '%s' with parent '%s' already present!\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"File '%s' in directory '%s' already present!\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (i8*, %struct.dentry*)* @start_creating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @start_creating(i8* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = call i64 @IS_ERR(%struct.dentry* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  store %struct.dentry* %14, %struct.dentry** %3, align 8
  br label %82

15:                                               ; preds = %2
  %16 = call i32 @simple_pin_fs(i32* @debug_fs_type, %struct.TYPE_6__** @debugfs_mount, i32* @debugfs_mount_count)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.dentry* @ERR_PTR(i32 %22)
  store %struct.dentry* %23, %struct.dentry** %3, align 8
  br label %82

24:                                               ; preds = %15
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = icmp ne %struct.dentry* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @debugfs_mount, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.dentry*, %struct.dentry** %29, align 8
  store %struct.dentry* %30, %struct.dentry** %5, align 8
  br label %31

31:                                               ; preds = %27, %24
  %32 = load %struct.dentry*, %struct.dentry** %5, align 8
  %33 = call i32 @d_inode(%struct.dentry* %32)
  %34 = call i32 @inode_lock(i32 %33)
  %35 = load i8*, i8** %4, align 8
  %36 = load %struct.dentry*, %struct.dentry** %5, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = call %struct.dentry* @lookup_one_len(i8* %35, %struct.dentry* %36, i32 %38)
  store %struct.dentry* %39, %struct.dentry** %6, align 8
  %40 = load %struct.dentry*, %struct.dentry** %6, align 8
  %41 = call i64 @IS_ERR(%struct.dentry* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %71, label %43

43:                                               ; preds = %31
  %44 = load %struct.dentry*, %struct.dentry** %6, align 8
  %45 = call i64 @d_really_is_positive(%struct.dentry* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %43
  %48 = load %struct.dentry*, %struct.dentry** %6, align 8
  %49 = call i64 @d_is_dir(%struct.dentry* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i8*, i8** %4, align 8
  %53 = load %struct.dentry*, %struct.dentry** %5, align 8
  %54 = getelementptr inbounds %struct.dentry, %struct.dentry* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %52, i32 %56)
  br label %65

58:                                               ; preds = %47
  %59 = load i8*, i8** %4, align 8
  %60 = load %struct.dentry*, %struct.dentry** %5, align 8
  %61 = getelementptr inbounds %struct.dentry, %struct.dentry* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %59, i32 %63)
  br label %65

65:                                               ; preds = %58, %51
  %66 = load %struct.dentry*, %struct.dentry** %6, align 8
  %67 = call i32 @dput(%struct.dentry* %66)
  %68 = load i32, i32* @EEXIST, align 4
  %69 = sub nsw i32 0, %68
  %70 = call %struct.dentry* @ERR_PTR(i32 %69)
  store %struct.dentry* %70, %struct.dentry** %6, align 8
  br label %71

71:                                               ; preds = %65, %43, %31
  %72 = load %struct.dentry*, %struct.dentry** %6, align 8
  %73 = call i64 @IS_ERR(%struct.dentry* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load %struct.dentry*, %struct.dentry** %5, align 8
  %77 = call i32 @d_inode(%struct.dentry* %76)
  %78 = call i32 @inode_unlock(i32 %77)
  %79 = call i32 @simple_release_fs(%struct.TYPE_6__** @debugfs_mount, i32* @debugfs_mount_count)
  br label %80

80:                                               ; preds = %75, %71
  %81 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %81, %struct.dentry** %3, align 8
  br label %82

82:                                               ; preds = %80, %19, %13
  %83 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %83
}

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @simple_pin_fs(i32*, %struct.TYPE_6__**, i32*) #1

declare dso_local i32 @pr_err(i8*, i8*, ...) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @inode_lock(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i64 @d_is_dir(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local i32 @simple_release_fs(%struct.TYPE_6__**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
