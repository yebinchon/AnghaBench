; ModuleID = '/home/carl/AnghaBench/linux/fs/cachefiles/extr_namei.c_cachefiles_delete_object.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cachefiles/extr_namei.c_cachefiles_delete_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_cache = type { i32 }
%struct.cachefiles_object = type { %struct.dentry*, %struct.TYPE_2__ }
%struct.dentry = type { %struct.dentry* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c",OBJ%x{%p}\00", align 1
@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@FSCACHE_OBJECT_KILLED_BY_CACHE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"object preemptively buried\00", align 1
@FSCACHE_OBJECT_WAS_RETIRED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cachefiles_delete_object(%struct.cachefiles_cache* %0, %struct.cachefiles_object* %1) #0 {
  %3 = alloca %struct.cachefiles_cache*, align 8
  %4 = alloca %struct.cachefiles_object*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  store %struct.cachefiles_cache* %0, %struct.cachefiles_cache** %3, align 8
  store %struct.cachefiles_object* %1, %struct.cachefiles_object** %4, align 8
  %7 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %8 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %12 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %11, i32 0, i32 0
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  %14 = call i32 @_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %10, %struct.dentry* %13)
  %15 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %16 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %15, i32 0, i32 0
  %17 = load %struct.dentry*, %struct.dentry** %16, align 8
  %18 = call i32 @ASSERT(%struct.dentry* %17)
  %19 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %20 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %19, i32 0, i32 0
  %21 = load %struct.dentry*, %struct.dentry** %20, align 8
  %22 = call %struct.dentry* @d_backing_inode(%struct.dentry* %21)
  %23 = call i32 @ASSERT(%struct.dentry* %22)
  %24 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %25 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %24, i32 0, i32 0
  %26 = load %struct.dentry*, %struct.dentry** %25, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = load %struct.dentry*, %struct.dentry** %27, align 8
  %29 = call i32 @ASSERT(%struct.dentry* %28)
  %30 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %31 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %30, i32 0, i32 0
  %32 = load %struct.dentry*, %struct.dentry** %31, align 8
  %33 = call %struct.dentry* @dget_parent(%struct.dentry* %32)
  store %struct.dentry* %33, %struct.dentry** %5, align 8
  %34 = load %struct.dentry*, %struct.dentry** %5, align 8
  %35 = call i32 @d_inode(%struct.dentry* %34)
  %36 = load i32, i32* @I_MUTEX_PARENT, align 4
  %37 = call i32 @inode_lock_nested(i32 %35, i32 %36)
  %38 = load i32, i32* @FSCACHE_OBJECT_KILLED_BY_CACHE, align 4
  %39 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %40 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i64 @test_bit(i32 %38, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %2
  %45 = call i32 @_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.dentry*, %struct.dentry** %5, align 8
  %47 = call i32 @d_inode(%struct.dentry* %46)
  %48 = call i32 @inode_unlock(i32 %47)
  store i32 0, i32* %6, align 4
  br label %71

49:                                               ; preds = %2
  %50 = load %struct.dentry*, %struct.dentry** %5, align 8
  %51 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %52 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %51, i32 0, i32 0
  %53 = load %struct.dentry*, %struct.dentry** %52, align 8
  %54 = getelementptr inbounds %struct.dentry, %struct.dentry* %53, i32 0, i32 0
  %55 = load %struct.dentry*, %struct.dentry** %54, align 8
  %56 = icmp eq %struct.dentry* %50, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %49
  %58 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %3, align 8
  %59 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %60 = load %struct.dentry*, %struct.dentry** %5, align 8
  %61 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %62 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %61, i32 0, i32 0
  %63 = load %struct.dentry*, %struct.dentry** %62, align 8
  %64 = load i32, i32* @FSCACHE_OBJECT_WAS_RETIRED, align 4
  %65 = call i32 @cachefiles_bury_object(%struct.cachefiles_cache* %58, %struct.cachefiles_object* %59, %struct.dentry* %60, %struct.dentry* %63, i32 0, i32 %64)
  store i32 %65, i32* %6, align 4
  br label %70

66:                                               ; preds = %49
  %67 = load %struct.dentry*, %struct.dentry** %5, align 8
  %68 = call i32 @d_inode(%struct.dentry* %67)
  %69 = call i32 @inode_unlock(i32 %68)
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %66, %57
  br label %71

71:                                               ; preds = %70, %44
  %72 = load %struct.dentry*, %struct.dentry** %5, align 8
  %73 = call i32 @dput(%struct.dentry* %72)
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @_enter(i8*, i32, %struct.dentry*) #1

declare dso_local i32 @ASSERT(%struct.dentry*) #1

declare dso_local %struct.dentry* @d_backing_inode(%struct.dentry*) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i32 @inode_lock_nested(i32, i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local i32 @cachefiles_bury_object(%struct.cachefiles_cache*, %struct.cachefiles_object*, %struct.dentry*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
