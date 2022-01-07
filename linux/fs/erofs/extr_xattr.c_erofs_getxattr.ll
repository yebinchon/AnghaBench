; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_xattr.c_erofs_getxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_xattr.c_erofs_getxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.getxattr_iter = type { i32, i64, %struct.TYPE_4__, i8*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i8* }

@EINVAL = common dso_local global i32 0, align 4
@EROFS_NAME_LEN = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @erofs_getxattr(%struct.inode* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.getxattr_iter, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %65

19:                                               ; preds = %5
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = call i32 @init_inode_xattrs(%struct.inode* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %6, align 4
  br label %65

26:                                               ; preds = %19
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %struct.getxattr_iter, %struct.getxattr_iter* %13, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = getelementptr inbounds %struct.getxattr_iter, %struct.getxattr_iter* %13, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = getelementptr inbounds %struct.getxattr_iter, %struct.getxattr_iter* %13, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @EROFS_NAME_LEN, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load i32, i32* @ERANGE, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %65

41:                                               ; preds = %26
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds %struct.getxattr_iter, %struct.getxattr_iter* %13, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds %struct.getxattr_iter, %struct.getxattr_iter* %13, i32 0, i32 3
  store i8* %45, i8** %46, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds %struct.getxattr_iter, %struct.getxattr_iter* %13, i32 0, i32 1
  store i64 %47, i64* %48, align 8
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.getxattr_iter, %struct.getxattr_iter* %13, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = call i32 @inline_getxattr(%struct.inode* %54, %struct.getxattr_iter* %13)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @ENOATTR, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %41
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  %62 = call i32 @shared_getxattr(%struct.inode* %61, %struct.getxattr_iter* %13)
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %60, %41
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %63, %38, %24, %16
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @init_inode_xattrs(%struct.inode*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @inline_getxattr(%struct.inode*, %struct.getxattr_iter*) #1

declare dso_local i32 @shared_getxattr(%struct.inode*, %struct.getxattr_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
