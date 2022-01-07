; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_new_dirent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_new_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configfs_dirent = type { i32, i32, i32, i32, i8*, i32 }
%struct.configfs_fragment = type { i32 }

@configfs_dir_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@configfs_dirent_lock = common dso_local global i32 0, align 4
@CONFIGFS_USET_DROPPING = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.configfs_dirent* (%struct.configfs_dirent*, i8*, i32, %struct.configfs_fragment*)* @configfs_new_dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.configfs_dirent* @configfs_new_dirent(%struct.configfs_dirent* %0, i8* %1, i32 %2, %struct.configfs_fragment* %3) #0 {
  %5 = alloca %struct.configfs_dirent*, align 8
  %6 = alloca %struct.configfs_dirent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.configfs_fragment*, align 8
  %10 = alloca %struct.configfs_dirent*, align 8
  store %struct.configfs_dirent* %0, %struct.configfs_dirent** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.configfs_fragment* %3, %struct.configfs_fragment** %9, align 8
  %11 = load i32, i32* @configfs_dir_cachep, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.configfs_dirent* @kmem_cache_zalloc(i32 %11, i32 %12)
  store %struct.configfs_dirent* %13, %struct.configfs_dirent** %10, align 8
  %14 = load %struct.configfs_dirent*, %struct.configfs_dirent** %10, align 8
  %15 = icmp ne %struct.configfs_dirent* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.configfs_dirent* @ERR_PTR(i32 %18)
  store %struct.configfs_dirent* %19, %struct.configfs_dirent** %5, align 8
  br label %62

20:                                               ; preds = %4
  %21 = load %struct.configfs_dirent*, %struct.configfs_dirent** %10, align 8
  %22 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %21, i32 0, i32 5
  %23 = call i32 @atomic_set(i32* %22, i32 1)
  %24 = load %struct.configfs_dirent*, %struct.configfs_dirent** %10, align 8
  %25 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %24, i32 0, i32 1
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.configfs_dirent*, %struct.configfs_dirent** %10, align 8
  %29 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.configfs_dirent*, %struct.configfs_dirent** %10, align 8
  %32 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.configfs_dirent*, %struct.configfs_dirent** %10, align 8
  %34 = call i32 @configfs_init_dirent_depth(%struct.configfs_dirent* %33)
  %35 = call i32 @spin_lock(i32* @configfs_dirent_lock)
  %36 = load %struct.configfs_dirent*, %struct.configfs_dirent** %6, align 8
  %37 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CONFIGFS_USET_DROPPING, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %20
  %43 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %44 = load i32, i32* @configfs_dir_cachep, align 4
  %45 = load %struct.configfs_dirent*, %struct.configfs_dirent** %10, align 8
  %46 = call i32 @kmem_cache_free(i32 %44, %struct.configfs_dirent* %45)
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.configfs_dirent* @ERR_PTR(i32 %48)
  store %struct.configfs_dirent* %49, %struct.configfs_dirent** %5, align 8
  br label %62

50:                                               ; preds = %20
  %51 = load %struct.configfs_fragment*, %struct.configfs_fragment** %9, align 8
  %52 = call i32 @get_fragment(%struct.configfs_fragment* %51)
  %53 = load %struct.configfs_dirent*, %struct.configfs_dirent** %10, align 8
  %54 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.configfs_dirent*, %struct.configfs_dirent** %10, align 8
  %56 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %55, i32 0, i32 2
  %57 = load %struct.configfs_dirent*, %struct.configfs_dirent** %6, align 8
  %58 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %57, i32 0, i32 1
  %59 = call i32 @list_add(i32* %56, i32* %58)
  %60 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %61 = load %struct.configfs_dirent*, %struct.configfs_dirent** %10, align 8
  store %struct.configfs_dirent* %61, %struct.configfs_dirent** %5, align 8
  br label %62

62:                                               ; preds = %50, %42, %16
  %63 = load %struct.configfs_dirent*, %struct.configfs_dirent** %5, align 8
  ret %struct.configfs_dirent* %63
}

declare dso_local %struct.configfs_dirent* @kmem_cache_zalloc(i32, i32) #1

declare dso_local %struct.configfs_dirent* @ERR_PTR(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @configfs_init_dirent_depth(%struct.configfs_dirent*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.configfs_dirent*) #1

declare dso_local i32 @get_fragment(%struct.configfs_fragment*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
