; ModuleID = '/home/carl/AnghaBench/linux/fs/cachefiles/extr_xattr.c_cachefiles_check_auxdata.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cachefiles/extr_xattr.c_cachefiles_check_auxdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_object = type { %struct.TYPE_6__, %struct.dentry* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.dentry* }
%struct.dentry = type { i32 }
%struct.cachefiles_xattr = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cachefiles_xattr_cache = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@FSCACHE_CHECKAUX_OKAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cachefiles_check_auxdata(%struct.cachefiles_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cachefiles_object*, align 8
  %4 = alloca %struct.cachefiles_xattr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cachefiles_object* %0, %struct.cachefiles_object** %3, align 8
  %9 = load %struct.cachefiles_object*, %struct.cachefiles_object** %3, align 8
  %10 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %9, i32 0, i32 1
  %11 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %11, %struct.dentry** %6, align 8
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = call i32 @ASSERT(%struct.dentry* %12)
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = call %struct.dentry* @d_backing_inode(%struct.dentry* %14)
  %16 = call i32 @ASSERT(%struct.dentry* %15)
  %17 = load %struct.cachefiles_object*, %struct.cachefiles_object** %3, align 8
  %18 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.dentry*, %struct.dentry** %23, align 8
  %25 = call i32 @ASSERT(%struct.dentry* %24)
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.cachefiles_xattr* @kmalloc(i32 528, i32 %26)
  store %struct.cachefiles_xattr* %27, %struct.cachefiles_xattr** %4, align 8
  %28 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %4, align 8
  %29 = icmp ne %struct.cachefiles_xattr* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %78

33:                                               ; preds = %1
  %34 = load %struct.dentry*, %struct.dentry** %6, align 8
  %35 = load i32, i32* @cachefiles_xattr_cache, align 4
  %36 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %4, align 8
  %37 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %36, i32 0, i32 0
  %38 = call i32 @vfs_getxattr(%struct.dentry* %34, i32 %35, i64* %37, i32 513)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @ESTALE, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %56, label %43

43:                                               ; preds = %33
  %44 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %4, align 8
  %45 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.cachefiles_object*, %struct.cachefiles_object** %3, align 8
  %48 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %46, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %43, %33
  br label %74

57:                                               ; preds = %43
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %7, align 4
  %60 = load %struct.cachefiles_object*, %struct.cachefiles_object** %3, align 8
  %61 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %60, i32 0, i32 0
  %62 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %4, align 8
  %63 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %62, i32 0, i32 1
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.dentry*, %struct.dentry** %6, align 8
  %66 = call %struct.dentry* @d_backing_inode(%struct.dentry* %65)
  %67 = call i32 @i_size_read(%struct.dentry* %66)
  %68 = call i32 @fscache_check_aux(%struct.TYPE_6__* %61, i32* %63, i32 %64, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @FSCACHE_CHECKAUX_OKAY, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %57
  br label %74

73:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %73, %72, %56
  %75 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %4, align 8
  %76 = call i32 @kfree(%struct.cachefiles_xattr* %75)
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %30
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @ASSERT(%struct.dentry*) #1

declare dso_local %struct.dentry* @d_backing_inode(%struct.dentry*) #1

declare dso_local %struct.cachefiles_xattr* @kmalloc(i32, i32) #1

declare dso_local i32 @vfs_getxattr(%struct.dentry*, i32, i64*, i32) #1

declare dso_local i32 @fscache_check_aux(%struct.TYPE_6__*, i32*, i32, i32) #1

declare dso_local i32 @i_size_read(%struct.dentry*) #1

declare dso_local i32 @kfree(%struct.cachefiles_xattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
