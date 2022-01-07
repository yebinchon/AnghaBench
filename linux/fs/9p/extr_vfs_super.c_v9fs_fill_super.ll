; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_super.c_v9fs_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_super.c_v9fs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32, %struct.TYPE_2__*, i64, i32, i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.v9fs_session_info = type { i32, i64, i64 }

@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@V9FS_MAGIC = common dso_local global i32 0, align 4
@v9fs_super_ops_dotl = common dso_local global i32 0, align 4
@v9fs_xattr_handlers = common dso_local global i32 0, align 4
@v9fs_super_ops = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@VM_READAHEAD_PAGES = common dso_local global i32 0, align 4
@SB_ACTIVE = common dso_local global i32 0, align 4
@SB_DIRSYNC = common dso_local global i32 0, align 4
@SB_SYNCHRONOUS = common dso_local global i32 0, align 4
@SB_POSIXACL = common dso_local global i32 0, align 4
@V9FS_ACL_MASK = common dso_local global i32 0, align 4
@V9FS_POSIX_ACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.v9fs_session_info*, i32)* @v9fs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_fill_super(%struct.super_block* %0, %struct.v9fs_session_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.v9fs_session_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.v9fs_session_info* %1, %struct.v9fs_session_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 9
  store i32 %9, i32* %11, align 8
  %12 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %6, align 8
  %13 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %14, 1
  %16 = call i32 @fls(i64 %15)
  %17 = load %struct.super_block*, %struct.super_block** %5, align 8
  %18 = getelementptr inbounds %struct.super_block, %struct.super_block* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 1, %21
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @V9FS_MAGIC, align 4
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = getelementptr inbounds %struct.super_block, %struct.super_block* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 4
  %28 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %6, align 8
  %29 = call i64 @v9fs_proto_dotl(%struct.v9fs_session_info* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load %struct.super_block*, %struct.super_block** %5, align 8
  %33 = getelementptr inbounds %struct.super_block, %struct.super_block* %32, i32 0, i32 6
  store i32* @v9fs_super_ops_dotl, i32** %33, align 8
  %34 = load i32, i32* @v9fs_xattr_handlers, align 4
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = getelementptr inbounds %struct.super_block, %struct.super_block* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  br label %43

37:                                               ; preds = %3
  %38 = load %struct.super_block*, %struct.super_block** %5, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 6
  store i32* @v9fs_super_ops, i32** %39, align 8
  %40 = load i32, i32* @U32_MAX, align 4
  %41 = load %struct.super_block*, %struct.super_block** %5, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %37, %31
  %44 = load %struct.super_block*, %struct.super_block** %5, align 8
  %45 = getelementptr inbounds %struct.super_block, %struct.super_block* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load %struct.super_block*, %struct.super_block** %5, align 8
  %47 = call i32 @super_setup_bdi(%struct.super_block* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %82

52:                                               ; preds = %43
  %53 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %6, align 8
  %54 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* @VM_READAHEAD_PAGES, align 4
  %59 = load %struct.super_block*, %struct.super_block** %5, align 8
  %60 = getelementptr inbounds %struct.super_block, %struct.super_block* %59, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %52
  %64 = load i32, i32* @SB_ACTIVE, align 4
  %65 = load i32, i32* @SB_DIRSYNC, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.super_block*, %struct.super_block** %5, align 8
  %68 = getelementptr inbounds %struct.super_block, %struct.super_block* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %6, align 8
  %72 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %63
  %76 = load i32, i32* @SB_SYNCHRONOUS, align 4
  %77 = load %struct.super_block*, %struct.super_block** %5, align 8
  %78 = getelementptr inbounds %struct.super_block, %struct.super_block* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %63
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %50
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @fls(i64) #1

declare dso_local i64 @v9fs_proto_dotl(%struct.v9fs_session_info*) #1

declare dso_local i32 @super_setup_bdi(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
