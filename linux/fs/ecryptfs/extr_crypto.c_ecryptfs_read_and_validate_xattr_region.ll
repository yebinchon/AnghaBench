; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_ecryptfs_read_and_validate_xattr_region.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_ecryptfs_read_and_validate_xattr_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }

@ECRYPTFS_SIZE_AND_MARKER_BYTES = common dso_local global i32 0, align 4
@ECRYPTFS_FILE_SIZE_BYTES = common dso_local global i32 0, align 4
@ECRYPTFS_XATTR_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecryptfs_read_and_validate_xattr_region(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %11 = load i32, i32* @ECRYPTFS_SIZE_AND_MARKER_BYTES, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @ECRYPTFS_FILE_SIZE_BYTES, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32* %17, i32** %8, align 8
  %18 = load %struct.dentry*, %struct.dentry** %4, align 8
  %19 = call i32 @ecryptfs_dentry_to_lower(%struct.dentry* %18)
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call i32 @ecryptfs_inode_to_lower(%struct.inode* %20)
  %22 = load i32, i32* @ECRYPTFS_XATTR_NAME, align 4
  %23 = load i32, i32* @ECRYPTFS_SIZE_AND_MARKER_BYTES, align 4
  %24 = call i32 @ecryptfs_getxattr_lower(i32 %19, i32 %21, i32 %22, i32* %14, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %47

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @ECRYPTFS_SIZE_AND_MARKER_BYTES, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %47

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @ecryptfs_validate_marker(i32* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = call i32 @ecryptfs_i_size_init(i32* %14, %struct.inode* %43)
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %47

47:                                               ; preds = %45, %33, %27
  %48 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ecryptfs_getxattr_lower(i32, i32, i32, i32*, i32) #2

declare dso_local i32 @ecryptfs_dentry_to_lower(%struct.dentry*) #2

declare dso_local i32 @ecryptfs_inode_to_lower(%struct.inode*) #2

declare dso_local i32 @ecryptfs_validate_marker(i32*) #2

declare dso_local i32 @ecryptfs_i_size_init(i32*, %struct.inode*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
