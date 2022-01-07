; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c___process_new_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c___process_new_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_key = type { i32 }
%struct.send_ctx = type { i32, i32 }
%struct.fs_path = type { i32 }
%struct.posix_acl_xattr_header = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@XATTR_NAME_POSIX_ACL_ACCESS = common dso_local global i32 0, align 4
@XATTR_NAME_POSIX_ACL_DEFAULT = common dso_local global i32 0, align 4
@POSIX_ACL_XATTR_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.btrfs_key*, i8*, i32, i8*, i32, i32, i8*)* @__process_new_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__process_new_xattr(i32 %0, %struct.btrfs_key* %1, i8* %2, i32 %3, i8* %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.btrfs_key*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.send_ctx*, align 8
  %20 = alloca %struct.fs_path*, align 8
  %21 = alloca %struct.posix_acl_xattr_header, align 4
  store i32 %0, i32* %10, align 4
  store %struct.btrfs_key* %1, %struct.btrfs_key** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %22 = load i8*, i8** %17, align 8
  %23 = bitcast i8* %22 to %struct.send_ctx*
  store %struct.send_ctx* %23, %struct.send_ctx** %19, align 8
  %24 = call %struct.fs_path* (...) @fs_path_alloc()
  store %struct.fs_path* %24, %struct.fs_path** %20, align 8
  %25 = load %struct.fs_path*, %struct.fs_path** %20, align 8
  %26 = icmp ne %struct.fs_path* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %8
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %76

30:                                               ; preds = %8
  %31 = load i8*, i8** %12, align 8
  %32 = load i32, i32* @XATTR_NAME_POSIX_ACL_ACCESS, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @strncmp(i8* %31, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* @XATTR_NAME_POSIX_ACL_DEFAULT, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @strncmp(i8* %37, i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %36, %30
  %43 = load i32, i32* %15, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* @POSIX_ACL_XATTR_VERSION, align 4
  %47 = call i32 @cpu_to_le32(i32 %46)
  %48 = getelementptr inbounds %struct.posix_acl_xattr_header, %struct.posix_acl_xattr_header* %21, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = bitcast %struct.posix_acl_xattr_header* %21 to i8*
  store i8* %49, i8** %14, align 8
  store i32 4, i32* %15, align 4
  br label %50

50:                                               ; preds = %45, %42
  br label %51

51:                                               ; preds = %50, %36
  %52 = load %struct.send_ctx*, %struct.send_ctx** %19, align 8
  %53 = load %struct.send_ctx*, %struct.send_ctx** %19, align 8
  %54 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.send_ctx*, %struct.send_ctx** %19, align 8
  %57 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.fs_path*, %struct.fs_path** %20, align 8
  %60 = call i32 @get_cur_path(%struct.send_ctx* %52, i32 %55, i32 %58, %struct.fs_path* %59)
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %18, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %72

64:                                               ; preds = %51
  %65 = load %struct.send_ctx*, %struct.send_ctx** %19, align 8
  %66 = load %struct.fs_path*, %struct.fs_path** %20, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load i8*, i8** %14, align 8
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @send_set_xattr(%struct.send_ctx* %65, %struct.fs_path* %66, i8* %67, i32 %68, i8* %69, i32 %70)
  store i32 %71, i32* %18, align 4
  br label %72

72:                                               ; preds = %64, %63
  %73 = load %struct.fs_path*, %struct.fs_path** %20, align 8
  %74 = call i32 @fs_path_free(%struct.fs_path* %73)
  %75 = load i32, i32* %18, align 4
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %72, %27
  %77 = load i32, i32* %9, align 4
  ret i32 %77
}

declare dso_local %struct.fs_path* @fs_path_alloc(...) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @get_cur_path(%struct.send_ctx*, i32, i32, %struct.fs_path*) #1

declare dso_local i32 @send_set_xattr(%struct.send_ctx*, %struct.fs_path*, i8*, i32, i8*, i32) #1

declare dso_local i32 @fs_path_free(%struct.fs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
