; ModuleID = '/home/carl/AnghaBench/linux/fs/cachefiles/extr_xattr.c_cachefiles_set_object_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cachefiles/extr_xattr.c_cachefiles_set_object_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_object = type { %struct.TYPE_4__, %struct.dentry* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dentry = type { i32 }
%struct.cachefiles_xattr = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%p,#%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"SET #%u\00", align 1
@FSCACHE_COOKIE_AUX_UPDATED = common dso_local global i32 0, align 4
@cachefiles_xattr_cache = common dso_local global i32 0, align 4
@XATTR_CREATE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to set xattr with error %d\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cachefiles_set_object_xattr(%struct.cachefiles_object* %0, %struct.cachefiles_xattr* %1) #0 {
  %3 = alloca %struct.cachefiles_object*, align 8
  %4 = alloca %struct.cachefiles_xattr*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  store %struct.cachefiles_object* %0, %struct.cachefiles_object** %3, align 8
  store %struct.cachefiles_xattr* %1, %struct.cachefiles_xattr** %4, align 8
  %7 = load %struct.cachefiles_object*, %struct.cachefiles_object** %3, align 8
  %8 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %7, i32 0, i32 1
  %9 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %9, %struct.dentry** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = call i32 @ASSERT(%struct.dentry* %10)
  %12 = load %struct.cachefiles_object*, %struct.cachefiles_object** %3, align 8
  %13 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %4, align 8
  %14 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @_enter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.cachefiles_object* %12, i32 %15)
  %17 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %4, align 8
  %18 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @FSCACHE_COOKIE_AUX_UPDATED, align 4
  %22 = load %struct.cachefiles_object*, %struct.cachefiles_object** %3, align 8
  %23 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 @clear_bit(i32 %21, i32* %26)
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = load i32, i32* @cachefiles_xattr_cache, align 4
  %30 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %4, align 8
  %31 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %30, i32 0, i32 1
  %32 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %4, align 8
  %33 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @XATTR_CREATE, align 4
  %36 = call i32 @vfs_setxattr(%struct.dentry* %28, i32 %29, i32* %31, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %2
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.cachefiles_object*, %struct.cachefiles_object** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @cachefiles_io_error_obj(%struct.cachefiles_object* %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %39, %2
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @ASSERT(%struct.dentry*) #1

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
