; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_make_dirent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_make_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configfs_dirent = type { %struct.dentry*, i32 }
%struct.dentry = type { i32 }
%struct.configfs_fragment = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @configfs_make_dirent(%struct.configfs_dirent* %0, %struct.dentry* %1, i8* %2, i32 %3, i32 %4, %struct.configfs_fragment* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.configfs_dirent*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.configfs_fragment*, align 8
  %14 = alloca %struct.configfs_dirent*, align 8
  store %struct.configfs_dirent* %0, %struct.configfs_dirent** %8, align 8
  store %struct.dentry* %1, %struct.dentry** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.configfs_fragment* %5, %struct.configfs_fragment** %13, align 8
  %15 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = load i32, i32* %12, align 4
  %18 = load %struct.configfs_fragment*, %struct.configfs_fragment** %13, align 8
  %19 = call %struct.configfs_dirent* @configfs_new_dirent(%struct.configfs_dirent* %15, i8* %16, i32 %17, %struct.configfs_fragment* %18)
  store %struct.configfs_dirent* %19, %struct.configfs_dirent** %14, align 8
  %20 = load %struct.configfs_dirent*, %struct.configfs_dirent** %14, align 8
  %21 = call i64 @IS_ERR(%struct.configfs_dirent* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load %struct.configfs_dirent*, %struct.configfs_dirent** %14, align 8
  %25 = call i32 @PTR_ERR(%struct.configfs_dirent* %24)
  store i32 %25, i32* %7, align 4
  br label %41

26:                                               ; preds = %6
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.configfs_dirent*, %struct.configfs_dirent** %14, align 8
  %29 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.dentry*, %struct.dentry** %9, align 8
  %31 = load %struct.configfs_dirent*, %struct.configfs_dirent** %14, align 8
  %32 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %31, i32 0, i32 0
  store %struct.dentry* %30, %struct.dentry** %32, align 8
  %33 = load %struct.dentry*, %struct.dentry** %9, align 8
  %34 = icmp ne %struct.dentry* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load %struct.configfs_dirent*, %struct.configfs_dirent** %14, align 8
  %37 = call i32 @configfs_get(%struct.configfs_dirent* %36)
  %38 = load %struct.dentry*, %struct.dentry** %9, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %26
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %23
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local %struct.configfs_dirent* @configfs_new_dirent(%struct.configfs_dirent*, i8*, i32, %struct.configfs_fragment*) #1

declare dso_local i64 @IS_ERR(%struct.configfs_dirent*) #1

declare dso_local i32 @PTR_ERR(%struct.configfs_dirent*) #1

declare dso_local i32 @configfs_get(%struct.configfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
