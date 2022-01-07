; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c___btrfs_add_free_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c___btrfs_add_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_free_space_ctl = type { i32 }
%struct.btrfs_free_space = type { i32, i8*, i8* }

@btrfs_free_space_cachep = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unable to add free space :%d\00", align 1
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__btrfs_add_free_space(%struct.btrfs_fs_info* %0, %struct.btrfs_free_space_ctl* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.btrfs_free_space_ctl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.btrfs_free_space*, align 8
  %11 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %6, align 8
  store %struct.btrfs_free_space_ctl* %1, %struct.btrfs_free_space_ctl** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @btrfs_free_space_cachep, align 4
  %13 = load i32, i32* @GFP_NOFS, align 4
  %14 = call %struct.btrfs_free_space* @kmem_cache_zalloc(i32 %12, i32 %13)
  store %struct.btrfs_free_space* %14, %struct.btrfs_free_space** %10, align 8
  %15 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %10, align 8
  %16 = icmp ne %struct.btrfs_free_space* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %83

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %10, align 8
  %23 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %10, align 8
  %26 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %10, align 8
  %28 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %27, i32 0, i32 0
  %29 = call i32 @RB_CLEAR_NODE(i32* %28)
  %30 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %31 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %30, i32 0, i32 0
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %34 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %10, align 8
  %35 = call i64 @try_merge_free_space(%struct.btrfs_free_space_ctl* %33, %struct.btrfs_free_space* %34, i32 1)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %20
  br label %51

38:                                               ; preds = %20
  %39 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %40 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %10, align 8
  %41 = call i32 @insert_into_bitmap(%struct.btrfs_free_space_ctl* %39, %struct.btrfs_free_space* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %65

45:                                               ; preds = %38
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %11, align 4
  br label %65

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50, %37
  %52 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %53 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %10, align 8
  %54 = call i32 @steal_from_bitmap(%struct.btrfs_free_space_ctl* %52, %struct.btrfs_free_space* %53, i32 1)
  %55 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %56 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %10, align 8
  %57 = call i32 @link_free_space(%struct.btrfs_free_space_ctl* %55, %struct.btrfs_free_space* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load i32, i32* @btrfs_free_space_cachep, align 4
  %62 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %10, align 8
  %63 = call i32 @kmem_cache_free(i32 %61, %struct.btrfs_free_space* %62)
  br label %64

64:                                               ; preds = %60, %51
  br label %65

65:                                               ; preds = %64, %48, %44
  %66 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %67 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @btrfs_crit(%struct.btrfs_fs_info* %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @EEXIST, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp ne i32 %75, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @ASSERT(i32 %79)
  br label %81

81:                                               ; preds = %71, %65
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %17
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.btrfs_free_space* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @try_merge_free_space(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*, i32) #1

declare dso_local i32 @insert_into_bitmap(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*) #1

declare dso_local i32 @steal_from_bitmap(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*, i32) #1

declare dso_local i32 @link_free_space(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.btrfs_free_space*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_crit(%struct.btrfs_fs_info*, i8*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
