; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_vfs_get_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_vfs_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.delayed_call = type { i32 }
%struct.v9fs_session_info = type { i32 }
%struct.p9_fid = type { i32, i8* }
%struct.p9_wstat = type { i32, i8* }

@ECHILD = common dso_local global i32 0, align 4
@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%pd\0A\00", align 1
@EBADF = common dso_local global i32 0, align 4
@P9_DMSYMLINK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@kfree_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* @v9fs_vfs_get_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @v9fs_vfs_get_link(%struct.dentry* %0, %struct.inode* %1, %struct.delayed_call* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.delayed_call*, align 8
  %8 = alloca %struct.v9fs_session_info*, align 8
  %9 = alloca %struct.p9_fid*, align 8
  %10 = alloca %struct.p9_wstat*, align 8
  %11 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.delayed_call* %2, %struct.delayed_call** %7, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = icmp ne %struct.dentry* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ECHILD, align 4
  %16 = sub nsw i32 0, %15
  %17 = call i8* @ERR_PTR(i32 %16)
  store i8* %17, i8** %4, align 8
  br label %94

18:                                               ; preds = %3
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = call %struct.v9fs_session_info* @v9fs_dentry2v9ses(%struct.dentry* %19)
  store %struct.v9fs_session_info* %20, %struct.v9fs_session_info** %8, align 8
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = call %struct.p9_wstat* @v9fs_fid_lookup(%struct.dentry* %21)
  %23 = bitcast %struct.p9_wstat* %22 to %struct.p9_fid*
  store %struct.p9_fid* %23, %struct.p9_fid** %9, align 8
  %24 = load i32, i32* @P9_DEBUG_VFS, align 4
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = call i32 @p9_debug(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.dentry* %25)
  %27 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %28 = bitcast %struct.p9_fid* %27 to %struct.p9_wstat*
  %29 = call i64 @IS_ERR(%struct.p9_wstat* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %33 = bitcast %struct.p9_fid* %32 to %struct.p9_wstat*
  %34 = call i8* @ERR_CAST(%struct.p9_wstat* %33)
  store i8* %34, i8** %4, align 8
  br label %94

35:                                               ; preds = %18
  %36 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %37 = call i32 @v9fs_proto_dotu(%struct.v9fs_session_info* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @EBADF, align 4
  %41 = sub nsw i32 0, %40
  %42 = call i8* @ERR_PTR(i32 %41)
  store i8* %42, i8** %4, align 8
  br label %94

43:                                               ; preds = %35
  %44 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %45 = bitcast %struct.p9_fid* %44 to %struct.p9_wstat*
  %46 = call %struct.p9_wstat* @p9_client_stat(%struct.p9_wstat* %45)
  store %struct.p9_wstat* %46, %struct.p9_wstat** %10, align 8
  %47 = load %struct.p9_wstat*, %struct.p9_wstat** %10, align 8
  %48 = call i64 @IS_ERR(%struct.p9_wstat* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.p9_wstat*, %struct.p9_wstat** %10, align 8
  %52 = call i8* @ERR_CAST(%struct.p9_wstat* %51)
  store i8* %52, i8** %4, align 8
  br label %94

53:                                               ; preds = %43
  %54 = load %struct.p9_wstat*, %struct.p9_wstat** %10, align 8
  %55 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @P9_DMSYMLINK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %53
  %61 = load %struct.p9_wstat*, %struct.p9_wstat** %10, align 8
  %62 = call i32 @p9stat_free(%struct.p9_wstat* %61)
  %63 = load %struct.p9_wstat*, %struct.p9_wstat** %10, align 8
  %64 = call i32 @kfree(%struct.p9_wstat* %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  %67 = call i8* @ERR_PTR(i32 %66)
  store i8* %67, i8** %4, align 8
  br label %94

68:                                               ; preds = %53
  %69 = load %struct.p9_wstat*, %struct.p9_wstat** %10, align 8
  %70 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %11, align 8
  %72 = load %struct.p9_wstat*, %struct.p9_wstat** %10, align 8
  %73 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %72, i32 0, i32 1
  store i8* null, i8** %73, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = load i32, i32* @PATH_MAX, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %68
  %79 = load i8*, i8** %11, align 8
  %80 = load i32, i32* @PATH_MAX, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  store i8 0, i8* %83, align 1
  br label %84

84:                                               ; preds = %78, %68
  %85 = load %struct.p9_wstat*, %struct.p9_wstat** %10, align 8
  %86 = call i32 @p9stat_free(%struct.p9_wstat* %85)
  %87 = load %struct.p9_wstat*, %struct.p9_wstat** %10, align 8
  %88 = call i32 @kfree(%struct.p9_wstat* %87)
  %89 = load %struct.delayed_call*, %struct.delayed_call** %7, align 8
  %90 = load i32, i32* @kfree_link, align 4
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @set_delayed_call(%struct.delayed_call* %89, i32 %90, i8* %91)
  %93 = load i8*, i8** %11, align 8
  store i8* %93, i8** %4, align 8
  br label %94

94:                                               ; preds = %84, %60, %50, %39, %31, %14
  %95 = load i8*, i8** %4, align 8
  ret i8* %95
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local %struct.v9fs_session_info* @v9fs_dentry2v9ses(%struct.dentry*) #1

declare dso_local %struct.p9_wstat* @v9fs_fid_lookup(%struct.dentry*) #1

declare dso_local i32 @p9_debug(i32, i8*, %struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.p9_wstat*) #1

declare dso_local i8* @ERR_CAST(%struct.p9_wstat*) #1

declare dso_local i32 @v9fs_proto_dotu(%struct.v9fs_session_info*) #1

declare dso_local %struct.p9_wstat* @p9_client_stat(%struct.p9_wstat*) #1

declare dso_local i32 @p9stat_free(%struct.p9_wstat*) #1

declare dso_local i32 @kfree(%struct.p9_wstat*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @set_delayed_call(%struct.delayed_call*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
