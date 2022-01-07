; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_dfs_cache.c_find_root_ses.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_dfs_cache.c_find_root_ses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32 }
%struct.dfs_cache_vol_info = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.dfs_info3_param = type { i32 }
%struct.TCP_Server_Info = type { i64 }
%struct.smb_vol = type { i32 }

@EHOSTDOWN = common dso_local global i32 0, align 4
@CifsGood = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cifs_ses* (%struct.dfs_cache_vol_info*, %struct.cifs_tcon*, i8*)* @find_root_ses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cifs_ses* @find_root_ses(%struct.dfs_cache_vol_info* %0, %struct.cifs_tcon* %1, i8* %2) #0 {
  %4 = alloca %struct.cifs_ses*, align 8
  %5 = alloca %struct.dfs_cache_vol_info*, align 8
  %6 = alloca %struct.cifs_tcon*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dfs_info3_param, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TCP_Server_Info*, align 8
  %15 = alloca %struct.cifs_ses*, align 8
  %16 = alloca %struct.smb_vol, align 4
  store %struct.dfs_cache_vol_info* %0, %struct.dfs_cache_vol_info** %5, align 8
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = bitcast %struct.dfs_info3_param* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 4, i1 false)
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %18 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %19 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %13, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @get_dfs_root(i8* %29)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i64 @IS_ERR(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i8*, i8** %8, align 8
  %36 = call %struct.cifs_ses* @ERR_CAST(i8* %35)
  store %struct.cifs_ses* %36, %struct.cifs_ses** %4, align 8
  br label %102

37:                                               ; preds = %3
  %38 = call i32 @memset(%struct.smb_vol* %16, i32 0, i32 4)
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @dfs_cache_noreq_find(i8* %39, %struct.dfs_info3_param* %10, i32* null)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = call %struct.cifs_ses* @ERR_PTR(i32 %44)
  store %struct.cifs_ses* %45, %struct.cifs_ses** %15, align 8
  br label %95

46:                                               ; preds = %37
  %47 = load %struct.dfs_cache_vol_info*, %struct.dfs_cache_vol_info** %5, align 8
  %48 = getelementptr inbounds %struct.dfs_cache_vol_info, %struct.dfs_cache_vol_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = call i8* @cifs_compose_mount_options(i32 %49, i8* %50, %struct.dfs_info3_param* %10, i8** %12)
  store i8* %51, i8** %11, align 8
  %52 = call i32 @free_dfs_info_param(%struct.dfs_info3_param* %10)
  %53 = load i8*, i8** %11, align 8
  %54 = call i64 @IS_ERR(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i8*, i8** %11, align 8
  %58 = call %struct.cifs_ses* @ERR_CAST(i8* %57)
  store %struct.cifs_ses* %58, %struct.cifs_ses** %15, align 8
  store i8* null, i8** %11, align 8
  br label %95

59:                                               ; preds = %46
  %60 = load i8*, i8** %11, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @cifs_setup_volume_info(%struct.smb_vol* %16, i8* %60, i8* %61, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @kfree(i8* %64)
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* %9, align 4
  %70 = call %struct.cifs_ses* @ERR_PTR(i32 %69)
  store %struct.cifs_ses* %70, %struct.cifs_ses** %15, align 8
  br label %95

71:                                               ; preds = %59
  %72 = call %struct.TCP_Server_Info* @cifs_find_tcp_session(%struct.smb_vol* %16)
  store %struct.TCP_Server_Info* %72, %struct.TCP_Server_Info** %14, align 8
  %73 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %14, align 8
  %74 = call i64 @IS_ERR_OR_NULL(%struct.TCP_Server_Info* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @EHOSTDOWN, align 4
  %78 = sub nsw i32 0, %77
  %79 = call %struct.cifs_ses* @ERR_PTR(i32 %78)
  store %struct.cifs_ses* %79, %struct.cifs_ses** %15, align 8
  br label %95

80:                                               ; preds = %71
  %81 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %14, align 8
  %82 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CifsGood, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %14, align 8
  %88 = call i32 @cifs_put_tcp_session(%struct.TCP_Server_Info* %87, i32 0)
  %89 = load i32, i32* @EHOSTDOWN, align 4
  %90 = sub nsw i32 0, %89
  %91 = call %struct.cifs_ses* @ERR_PTR(i32 %90)
  store %struct.cifs_ses* %91, %struct.cifs_ses** %15, align 8
  br label %95

92:                                               ; preds = %80
  %93 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %14, align 8
  %94 = call %struct.cifs_ses* @cifs_get_smb_ses(%struct.TCP_Server_Info* %93, %struct.smb_vol* %16)
  store %struct.cifs_ses* %94, %struct.cifs_ses** %15, align 8
  br label %95

95:                                               ; preds = %92, %86, %76, %68, %56, %43
  %96 = call i32 @cifs_cleanup_volume_info_contents(%struct.smb_vol* %16)
  %97 = load i8*, i8** %11, align 8
  %98 = call i32 @kfree(i8* %97)
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @kfree(i8* %99)
  %101 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  store %struct.cifs_ses* %101, %struct.cifs_ses** %4, align 8
  br label %102

102:                                              ; preds = %95, %34
  %103 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  ret %struct.cifs_ses* %103
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @get_dfs_root(i8*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local %struct.cifs_ses* @ERR_CAST(i8*) #2

declare dso_local i32 @memset(%struct.smb_vol*, i32, i32) #2

declare dso_local i32 @dfs_cache_noreq_find(i8*, %struct.dfs_info3_param*, i32*) #2

declare dso_local %struct.cifs_ses* @ERR_PTR(i32) #2

declare dso_local i8* @cifs_compose_mount_options(i32, i8*, %struct.dfs_info3_param*, i8**) #2

declare dso_local i32 @free_dfs_info_param(%struct.dfs_info3_param*) #2

declare dso_local i32 @cifs_setup_volume_info(%struct.smb_vol*, i8*, i8*, i32) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local %struct.TCP_Server_Info* @cifs_find_tcp_session(%struct.smb_vol*) #2

declare dso_local i64 @IS_ERR_OR_NULL(%struct.TCP_Server_Info*) #2

declare dso_local i32 @cifs_put_tcp_session(%struct.TCP_Server_Info*, i32) #2

declare dso_local %struct.cifs_ses* @cifs_get_smb_ses(%struct.TCP_Server_Info*, %struct.smb_vol*) #2

declare dso_local i32 @cifs_cleanup_volume_info_contents(%struct.smb_vol*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
