; ModuleID = '/home/carl/AnghaBench/linux/fs/cachefiles/extr_xattr.c_cachefiles_remove_object_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cachefiles/extr_xattr.c_cachefiles_remove_object_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_cache = type { i32 }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@cachefiles_xattr_cache = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Can't remove xattr from %lu (error %d)\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cachefiles_remove_object_xattr(%struct.cachefiles_cache* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.cachefiles_cache*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  store %struct.cachefiles_cache* %0, %struct.cachefiles_cache** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %6 = load %struct.dentry*, %struct.dentry** %4, align 8
  %7 = load i32, i32* @cachefiles_xattr_cache, align 4
  %8 = call i32 @vfs_removexattr(%struct.dentry* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ENODATA, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %11
  store i32 0, i32* %5, align 4
  br label %37

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %3, align 8
  %29 = load %struct.dentry*, %struct.dentry** %4, align 8
  %30 = call %struct.TYPE_2__* @d_backing_inode(%struct.dentry* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i32 @cachefiles_io_error(%struct.cachefiles_cache* %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %27, %22
  br label %37

37:                                               ; preds = %36, %21
  br label %38

38:                                               ; preds = %37, %2
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @vfs_removexattr(%struct.dentry*, i32) #1

declare dso_local i32 @cachefiles_io_error(%struct.cachefiles_cache*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @d_backing_inode(%struct.dentry*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
