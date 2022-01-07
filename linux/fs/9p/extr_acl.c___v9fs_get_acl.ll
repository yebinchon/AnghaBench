; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_acl.c___v9fs_get_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_acl.c___v9fs_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }
%struct.p9_fid = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.posix_acl* (%struct.p9_fid*, i8*)* @__v9fs_get_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.posix_acl* @__v9fs_get_acl(%struct.p9_fid* %0, i8* %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca %struct.p9_fid*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.posix_acl*, align 8
  store %struct.p9_fid* %0, %struct.p9_fid** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %7, align 8
  store %struct.posix_acl* null, %struct.posix_acl** %8, align 8
  %9 = load %struct.p9_fid*, %struct.p9_fid** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @v9fs_fid_xattr_get(%struct.p9_fid* %9, i8* %10, i8* null, i32 0)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @GFP_NOFS, align 4
  %17 = call i8* @kzalloc(i32 %15, i32 %16)
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.posix_acl* @ERR_PTR(i32 %22)
  store %struct.posix_acl* %23, %struct.posix_acl** %3, align 8
  br label %71

24:                                               ; preds = %14
  %25 = load %struct.p9_fid*, %struct.p9_fid** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @v9fs_fid_xattr_get(%struct.p9_fid* %25, i8* %26, i8* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.posix_acl* @posix_acl_from_xattr(i32* @init_user_ns, i8* %33, i32 %34)
  store %struct.posix_acl* %35, %struct.posix_acl** %8, align 8
  %36 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %37 = call i64 @IS_ERR(%struct.posix_acl* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %67

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %24
  br label %66

42:                                               ; preds = %2
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @ENODATA, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %60, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @ENOSYS, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @EOPNOTSUPP, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %50, %47, %42
  store %struct.posix_acl* null, %struct.posix_acl** %8, align 8
  br label %65

61:                                               ; preds = %55
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  %64 = call %struct.posix_acl* @ERR_PTR(i32 %63)
  store %struct.posix_acl* %64, %struct.posix_acl** %8, align 8
  br label %65

65:                                               ; preds = %61, %60
  br label %66

66:                                               ; preds = %65, %41
  br label %67

67:                                               ; preds = %66, %39
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @kfree(i8* %68)
  %70 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  store %struct.posix_acl* %70, %struct.posix_acl** %3, align 8
  br label %71

71:                                               ; preds = %67, %20
  %72 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %72
}

declare dso_local i32 @v9fs_fid_xattr_get(%struct.p9_fid*, i8*, i8*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local %struct.posix_acl* @posix_acl_from_xattr(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
