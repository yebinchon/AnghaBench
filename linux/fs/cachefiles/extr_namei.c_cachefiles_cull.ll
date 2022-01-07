; ModuleID = '/home/carl/AnghaBench/linux/fs/cachefiles/extr_namei.c_cachefiles_cull.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cachefiles/extr_namei.c_cachefiles_cull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_cache = type { i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c",%pd/,%s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"victim -> %p %s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"positive\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"negative\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"victim is cullable\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"bury\00", align 1
@FSCACHE_OBJECT_WAS_CULLED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c" = -ESTALE [absent]\00", align 1
@ESTALE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"Internal error: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cachefiles_cull(%struct.cachefiles_cache* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cachefiles_cache*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  store %struct.cachefiles_cache* %0, %struct.cachefiles_cache** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.dentry*, %struct.dentry** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @_enter(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.dentry* %10, i8* %11)
  %13 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call %struct.dentry* @cachefiles_check_active(%struct.cachefiles_cache* %13, %struct.dentry* %14, i8* %15)
  store %struct.dentry* %16, %struct.dentry** %8, align 8
  %17 = load %struct.dentry*, %struct.dentry** %8, align 8
  %18 = call i64 @IS_ERR(%struct.dentry* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.dentry*, %struct.dentry** %8, align 8
  %22 = call i32 @PTR_ERR(%struct.dentry* %21)
  store i32 %22, i32* %4, align 4
  br label %81

23:                                               ; preds = %3
  %24 = load %struct.dentry*, %struct.dentry** %8, align 8
  %25 = load %struct.dentry*, %struct.dentry** %8, align 8
  %26 = call i64 @d_backing_inode(%struct.dentry* %25)
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %30 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %24, i8* %29)
  %31 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %32 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %33 = load %struct.dentry*, %struct.dentry** %8, align 8
  %34 = call i32 @cachefiles_remove_object_xattr(%struct.cachefiles_cache* %32, %struct.dentry* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %52

38:                                               ; preds = %23
  %39 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %40 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %41 = load %struct.dentry*, %struct.dentry** %6, align 8
  %42 = load %struct.dentry*, %struct.dentry** %8, align 8
  %43 = load i32, i32* @FSCACHE_OBJECT_WAS_CULLED, align 4
  %44 = call i32 @cachefiles_bury_object(%struct.cachefiles_cache* %40, i32* null, %struct.dentry* %41, %struct.dentry* %42, i32 0, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %56

48:                                               ; preds = %38
  %49 = load %struct.dentry*, %struct.dentry** %8, align 8
  %50 = call i32 @dput(%struct.dentry* %49)
  %51 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %81

52:                                               ; preds = %37
  %53 = load %struct.dentry*, %struct.dentry** %6, align 8
  %54 = call i32 @d_inode(%struct.dentry* %53)
  %55 = call i32 @inode_unlock(i32 %54)
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.dentry*, %struct.dentry** %8, align 8
  %58 = call i32 @dput(%struct.dentry* %57)
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %65 = load i32, i32* @ESTALE, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %81

67:                                               ; preds = %56
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %72, %67
  %78 = load i32, i32* %9, align 4
  %79 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %77, %63, %48, %20
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @_enter(i8*, %struct.dentry*, i8*) #1

declare dso_local %struct.dentry* @cachefiles_check_active(%struct.cachefiles_cache*, %struct.dentry*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @_debug(i8*, ...) #1

declare dso_local i64 @d_backing_inode(%struct.dentry*) #1

declare dso_local i32 @cachefiles_remove_object_xattr(%struct.cachefiles_cache*, %struct.dentry*) #1

declare dso_local i32 @cachefiles_bury_object(%struct.cachefiles_cache*, i32*, %struct.dentry*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
