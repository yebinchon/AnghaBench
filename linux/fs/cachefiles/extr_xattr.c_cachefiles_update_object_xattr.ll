; ModuleID = '/home/carl/AnghaBench/linux/fs/cachefiles/extr_xattr.c_cachefiles_update_object_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cachefiles/extr_xattr.c_cachefiles_update_object_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_object = type { %struct.TYPE_4__, %struct.dentry* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dentry = type { i32 }
%struct.cachefiles_xattr = type { i32, i32 }

@ESTALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%p,#%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"SET #%u\00", align 1
@FSCACHE_COOKIE_AUX_UPDATED = common dso_local global i32 0, align 4
@cachefiles_xattr_cache = common dso_local global i32 0, align 4
@XATTR_REPLACE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to update xattr with error %d\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cachefiles_update_object_xattr(%struct.cachefiles_object* %0, %struct.cachefiles_xattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cachefiles_object*, align 8
  %5 = alloca %struct.cachefiles_xattr*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  store %struct.cachefiles_object* %0, %struct.cachefiles_object** %4, align 8
  store %struct.cachefiles_xattr* %1, %struct.cachefiles_xattr** %5, align 8
  %8 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %9 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %8, i32 0, i32 1
  %10 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %10, %struct.dentry** %6, align 8
  %11 = load %struct.dentry*, %struct.dentry** %6, align 8
  %12 = icmp ne %struct.dentry* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ESTALE, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %57

16:                                               ; preds = %2
  %17 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %18 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %5, align 8
  %19 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @_enter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.cachefiles_object* %17, i32 %20)
  %22 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %5, align 8
  %23 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @FSCACHE_COOKIE_AUX_UPDATED, align 4
  %27 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %28 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @clear_bit(i32 %26, i32* %31)
  %33 = load %struct.dentry*, %struct.dentry** %6, align 8
  %34 = load i32, i32* @cachefiles_xattr_cache, align 4
  %35 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %5, align 8
  %36 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %35, i32 0, i32 1
  %37 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %5, align 8
  %38 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @XATTR_REPLACE, align 4
  %41 = call i32 @vfs_setxattr(%struct.dentry* %33, i32 %34, i32* %36, i32 %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %16
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @cachefiles_io_error_obj(%struct.cachefiles_object* %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %44, %16
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @_enter(i8*, %struct.cachefiles_object*, i32) #1

declare dso_local i32 @_debug(i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @vfs_setxattr(%struct.dentry*, i32, i32*, i32, i32) #1

declare dso_local i32 @cachefiles_io_error_obj(%struct.cachefiles_object*, i8*, i32) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
