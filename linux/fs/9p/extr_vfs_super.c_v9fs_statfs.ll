; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_super.c_v9fs_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_super.c_v9fs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.kstatfs = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.v9fs_session_info = type { i32 }
%struct.p9_fid = type { i32 }
%struct.p9_rstatfs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @v9fs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.v9fs_session_info*, align 8
  %6 = alloca %struct.p9_fid*, align 8
  %7 = alloca %struct.p9_rstatfs, align 4
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = call %struct.p9_fid* @v9fs_fid_lookup(%struct.dentry* %9)
  store %struct.p9_fid* %10, %struct.p9_fid** %6, align 8
  %11 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %12 = call i64 @IS_ERR(%struct.p9_fid* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %16 = call i32 @PTR_ERR(%struct.p9_fid* %15)
  store i32 %16, i32* %8, align 4
  br label %93

17:                                               ; preds = %2
  %18 = load %struct.dentry*, %struct.dentry** %3, align 8
  %19 = call %struct.v9fs_session_info* @v9fs_dentry2v9ses(%struct.dentry* %18)
  store %struct.v9fs_session_info* %19, %struct.v9fs_session_info** %5, align 8
  %20 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %21 = call i64 @v9fs_proto_dotl(%struct.v9fs_session_info* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %89

23:                                               ; preds = %17
  %24 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %25 = call i32 @p9_client_statfs(%struct.p9_fid* %24, %struct.p9_rstatfs* %7)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %82

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %7, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %32 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 8
  %33 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %7, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %36 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %7, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %40 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %7, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %44 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %7, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %48 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %7, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %52 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %7, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %56 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %7, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = and i64 %59, 4294967295
  %61 = trunc i64 %60 to i32
  %62 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %63 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %61, i32* %66, align 4
  %67 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %7, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 32
  %70 = sext i32 %69 to i64
  %71 = and i64 %70, 4294967295
  %72 = trunc i64 %71 to i32
  %73 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %74 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 %72, i32* %77, align 4
  %78 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %7, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %81 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %28, %23
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @ENOSYS, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp ne i32 %83, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %93

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %17
  %90 = load %struct.dentry*, %struct.dentry** %3, align 8
  %91 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %92 = call i32 @simple_statfs(%struct.dentry* %90, %struct.kstatfs* %91)
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %89, %87, %14
  %94 = load i32, i32* %8, align 4
  ret i32 %94
}

declare dso_local %struct.p9_fid* @v9fs_fid_lookup(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local %struct.v9fs_session_info* @v9fs_dentry2v9ses(%struct.dentry*) #1

declare dso_local i64 @v9fs_proto_dotl(%struct.v9fs_session_info*) #1

declare dso_local i32 @p9_client_statfs(%struct.p9_fid*, %struct.p9_rstatfs*) #1

declare dso_local i32 @simple_statfs(%struct.dentry*, %struct.kstatfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
