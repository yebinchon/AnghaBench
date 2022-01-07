; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_xattr.c_inline_getxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_xattr.c_inline_getxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.getxattr_iter = type { i32, i32 }

@find_xattr_handlers = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.getxattr_iter*)* @inline_getxattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inline_getxattr(%struct.inode* %0, %struct.getxattr_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.getxattr_iter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.getxattr_iter* %1, %struct.getxattr_iter** %5, align 8
  %8 = load %struct.getxattr_iter*, %struct.getxattr_iter** %5, align 8
  %9 = getelementptr inbounds %struct.getxattr_iter, %struct.getxattr_iter* %8, i32 0, i32 1
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i32 @inline_xattr_iter_begin(i32* %9, %struct.inode* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %30, %16
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load %struct.getxattr_iter*, %struct.getxattr_iter** %5, align 8
  %23 = getelementptr inbounds %struct.getxattr_iter, %struct.getxattr_iter* %22, i32 0, i32 1
  %24 = call i32 @xattr_foreach(i32* %23, i32* @find_xattr_handlers, i32* %7)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @ENOATTR, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %31

30:                                               ; preds = %21
  br label %18

31:                                               ; preds = %29, %18
  %32 = load %struct.getxattr_iter*, %struct.getxattr_iter** %5, align 8
  %33 = getelementptr inbounds %struct.getxattr_iter, %struct.getxattr_iter* %32, i32 0, i32 1
  %34 = call i32 @xattr_iter_end_final(i32* %33)
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  br label %43

39:                                               ; preds = %31
  %40 = load %struct.getxattr_iter*, %struct.getxattr_iter** %5, align 8
  %41 = getelementptr inbounds %struct.getxattr_iter, %struct.getxattr_iter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  br label %43

43:                                               ; preds = %39, %37
  %44 = phi i32 [ %38, %37 ], [ %42, %39 ]
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %14
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @inline_xattr_iter_begin(i32*, %struct.inode*) #1

declare dso_local i32 @xattr_foreach(i32*, i32*, i32*) #1

declare dso_local i32 @xattr_iter_end_final(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
