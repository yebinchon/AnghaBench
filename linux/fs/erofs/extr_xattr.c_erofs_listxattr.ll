; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_xattr.c_erofs_listxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_xattr.c_erofs_listxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.listxattr_iter = type { i8*, i64, %struct.TYPE_2__, i64, %struct.dentry* }
%struct.TYPE_2__ = type { i32 }

@ENOATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @erofs_listxattr(%struct.dentry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.listxattr_iter, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = call i32 @d_inode(%struct.dentry* %10)
  %12 = call i32 @init_inode_xattrs(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %42

17:                                               ; preds = %3
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = getelementptr inbounds %struct.listxattr_iter, %struct.listxattr_iter* %9, i32 0, i32 4
  store %struct.dentry* %18, %struct.dentry** %19, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds %struct.listxattr_iter, %struct.listxattr_iter* %9, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.listxattr_iter, %struct.listxattr_iter* %9, i32 0, i32 1
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.listxattr_iter, %struct.listxattr_iter* %9, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.listxattr_iter, %struct.listxattr_iter* %9, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = call i32 @inline_listxattr(%struct.listxattr_iter* %9)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %17
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @ENOATTR, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %42

40:                                               ; preds = %33, %17
  %41 = call i32 @shared_listxattr(%struct.listxattr_iter* %9)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %38, %15
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @init_inode_xattrs(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @inline_listxattr(%struct.listxattr_iter*) #1

declare dso_local i32 @shared_listxattr(%struct.listxattr_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
