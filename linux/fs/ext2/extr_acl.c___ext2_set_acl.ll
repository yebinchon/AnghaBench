; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_acl.c___ext2_set_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_acl.c___ext2_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@EXT2_XATTR_INDEX_POSIX_ACL_ACCESS = common dso_local global i32 0, align 4
@EXT2_XATTR_INDEX_POSIX_ACL_DEFAULT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.posix_acl*, i32)* @__ext2_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ext2_set_acl(%struct.inode* %0, %struct.posix_acl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.posix_acl* %1, %struct.posix_acl** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %9, align 8
  store i64 0, i64* %10, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %32 [
    i32 129, label %13
    i32 128, label %15
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @EXT2_XATTR_INDEX_POSIX_ACL_ACCESS, align 4
  store i32 %14, i32* %8, align 4
  br label %35

15:                                               ; preds = %3
  %16 = load i32, i32* @EXT2_XATTR_INDEX_POSIX_ACL_DEFAULT, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @S_ISDIR(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %15
  %23 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %24 = icmp ne %struct.posix_acl* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @EACCES, align 4
  %27 = sub nsw i32 0, %26
  br label %29

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i32 [ %27, %25 ], [ 0, %28 ]
  store i32 %30, i32* %4, align 4
  br label %66

31:                                               ; preds = %15
  br label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %66

35:                                               ; preds = %31, %13
  %36 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %37 = icmp ne %struct.posix_acl* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %40 = call i8* @ext2_acl_to_disk(%struct.posix_acl* %39, i64* %10)
  store i8* %40, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i64 @IS_ERR(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i8*, i8** %9, align 8
  %46 = call i64 @PTR_ERR(i8* %45)
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %4, align 4
  br label %66

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %35
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @ext2_xattr_set(%struct.inode* %50, i32 %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %52, i64 %53, i32 0)
  store i32 %54, i32* %11, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @kfree(i8* %55)
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %49
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %63 = call i32 @set_cached_acl(%struct.inode* %60, i32 %61, %struct.posix_acl* %62)
  br label %64

64:                                               ; preds = %59, %49
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %44, %32, %29
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i8* @ext2_acl_to_disk(%struct.posix_acl*, i64*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i64 @PTR_ERR(i8*) #1

declare dso_local i32 @ext2_xattr_set(%struct.inode*, i32, i8*, i8*, i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
