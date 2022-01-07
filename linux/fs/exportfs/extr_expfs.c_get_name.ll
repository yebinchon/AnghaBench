; ModuleID = '/home/carl/AnghaBench/linux/fs/exportfs/extr_expfs.c_get_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/exportfs/extr_expfs.c_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.dentry*, i32 }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.cred = type { i32 }
%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.kstat = type { i32 }
%struct.getdents_callback = type { i8*, i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@filldir_one = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@STATX_INO = common dso_local global i32 0, align 4
@AT_STATX_SYNC_AS_STAT = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, i8*, %struct.dentry*)* @get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_name(%struct.path* %0, i8* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.path*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.cred*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.file*, align 8
  %12 = alloca %struct.kstat, align 4
  %13 = alloca %struct.path, align 8
  %14 = alloca %struct.getdents_callback, align 8
  %15 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %16 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %16, %struct.cred** %8, align 8
  %17 = load %struct.path*, %struct.path** %5, align 8
  %18 = getelementptr inbounds %struct.path, %struct.path* %17, i32 0, i32 0
  %19 = load %struct.dentry*, %struct.dentry** %18, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %9, align 8
  %22 = getelementptr inbounds %struct.path, %struct.path* %13, i32 0, i32 0
  %23 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %23, %struct.dentry** %22, align 8
  %24 = getelementptr inbounds %struct.path, %struct.path* %13, i32 0, i32 1
  %25 = load %struct.path*, %struct.path** %5, align 8
  %26 = getelementptr inbounds %struct.path, %struct.path* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %24, align 8
  %28 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %14, i32 0, i32 0
  %29 = load i8*, i8** %6, align 8
  store i8* %29, i8** %28, align 8
  %30 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %14, i32 0, i32 1
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %14, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %14, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* @filldir_one, align 4
  store i32 %34, i32* %33, align 8
  %35 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %14, i32 0, i32 4
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* @ENOTDIR, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %10, align 4
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = icmp ne %struct.inode* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %3
  %41 = load %struct.inode*, %struct.inode** %9, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @S_ISDIR(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40, %3
  br label %123

47:                                               ; preds = %40
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  %50 = load %struct.inode*, %struct.inode** %9, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %123

55:                                               ; preds = %47
  %56 = load i32, i32* @STATX_INO, align 4
  %57 = load i32, i32* @AT_STATX_SYNC_AS_STAT, align 4
  %58 = call i32 @vfs_getattr_nosec(%struct.path* %13, %struct.kstat* %12, i32 %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %125

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.kstat, %struct.kstat* %12, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %14, i32 0, i32 4
  store i32 %65, i32* %66, align 4
  %67 = load %struct.path*, %struct.path** %5, align 8
  %68 = load i32, i32* @O_RDONLY, align 4
  %69 = load %struct.cred*, %struct.cred** %8, align 8
  %70 = call %struct.file* @dentry_open(%struct.path* %67, i32 %68, %struct.cred* %69)
  store %struct.file* %70, %struct.file** %11, align 8
  %71 = load %struct.file*, %struct.file** %11, align 8
  %72 = call i32 @PTR_ERR(%struct.file* %71)
  store i32 %72, i32* %10, align 4
  %73 = load %struct.file*, %struct.file** %11, align 8
  %74 = call i64 @IS_ERR(%struct.file* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  br label %123

77:                                               ; preds = %63
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %10, align 4
  %80 = load %struct.file*, %struct.file** %11, align 8
  %81 = getelementptr inbounds %struct.file, %struct.file* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %77
  %87 = load %struct.file*, %struct.file** %11, align 8
  %88 = getelementptr inbounds %struct.file, %struct.file* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  br label %120

94:                                               ; preds = %86, %77
  %95 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %14, i32 0, i32 1
  store i32 0, i32* %95, align 8
  br label %96

96:                                               ; preds = %94, %118
  %97 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %14, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %15, align 4
  %99 = load %struct.file*, %struct.file** %11, align 8
  %100 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %14, i32 0, i32 3
  %101 = call i32 @iterate_dir(%struct.file* %99, %struct.TYPE_4__* %100)
  store i32 %101, i32* %10, align 4
  %102 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %14, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  store i32 0, i32* %10, align 4
  br label %119

106:                                              ; preds = %96
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %119

110:                                              ; preds = %106
  %111 = load i32, i32* @ENOENT, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %15, align 4
  %114 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %14, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %119

118:                                              ; preds = %110
  br label %96

119:                                              ; preds = %117, %109, %105
  br label %120

120:                                              ; preds = %119, %93
  %121 = load %struct.file*, %struct.file** %11, align 8
  %122 = call i32 @fput(%struct.file* %121)
  br label %123

123:                                              ; preds = %120, %76, %54, %46
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %123, %61
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @vfs_getattr_nosec(%struct.path*, %struct.kstat*, i32, i32) #1

declare dso_local %struct.file* @dentry_open(%struct.path*, i32, %struct.cred*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @iterate_dir(%struct.file*, %struct.TYPE_4__*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
