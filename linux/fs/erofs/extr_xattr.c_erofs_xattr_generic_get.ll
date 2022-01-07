; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_xattr.c_erofs_xattr_generic_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_xattr.c_erofs_xattr_generic_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_handler = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.erofs_sb_info = type { i32 }

@XATTR_USER = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)* @erofs_xattr_generic_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erofs_xattr_generic_get(%struct.xattr_handler* %0, %struct.dentry* %1, %struct.inode* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xattr_handler*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.erofs_sb_info*, align 8
  store %struct.xattr_handler* %0, %struct.xattr_handler** %8, align 8
  store %struct.dentry* %1, %struct.dentry** %9, align 8
  store %struct.inode* %2, %struct.inode** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load %struct.inode*, %struct.inode** %10, align 8
  %16 = call %struct.erofs_sb_info* @EROFS_I_SB(%struct.inode* %15)
  store %struct.erofs_sb_info* %16, %struct.erofs_sb_info** %14, align 8
  %17 = load %struct.xattr_handler*, %struct.xattr_handler** %8, align 8
  %18 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %38 [
    i32 128, label %20
    i32 129, label %29
    i32 130, label %37
  ]

20:                                               ; preds = %6
  %21 = load %struct.erofs_sb_info*, %struct.erofs_sb_info** %14, align 8
  %22 = load i32, i32* @XATTR_USER, align 4
  %23 = call i32 @test_opt(%struct.erofs_sb_info* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %50

28:                                               ; preds = %20
  br label %41

29:                                               ; preds = %6
  %30 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %31 = call i32 @capable(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @EPERM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %50

36:                                               ; preds = %29
  br label %41

37:                                               ; preds = %6
  br label %41

38:                                               ; preds = %6
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %50

41:                                               ; preds = %37, %36, %28
  %42 = load %struct.inode*, %struct.inode** %10, align 8
  %43 = load %struct.xattr_handler*, %struct.xattr_handler** %8, align 8
  %44 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %11, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i64, i64* %13, align 8
  %49 = call i32 @erofs_getxattr(%struct.inode* %42, i32 %45, i8* %46, i8* %47, i64 %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %41, %38, %33, %25
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local %struct.erofs_sb_info* @EROFS_I_SB(%struct.inode*) #1

declare dso_local i32 @test_opt(%struct.erofs_sb_info*, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @erofs_getxattr(%struct.inode*, i32, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
