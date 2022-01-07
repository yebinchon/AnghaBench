; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_dfs_cache.c_do_refresh_tcon.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_dfs_cache.c_do_refresh_tcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfs_cache = type { i32 }
%struct.dfs_cache_vol_info = type { i32 }
%struct.cifs_tcon = type { i8*, i32, %struct.dfs_cache_entry* }
%struct.dfs_cache_entry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, %struct.dfs_cache_entry*, i8*, %struct.dfs_info3_param**, i32*, i32, i32)* }
%struct.dfs_info3_param = type { i32 }
%struct.cifs_ses = type { %struct.TYPE_4__* }

@dfs_cache_list_lock = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dfs_cache*, %struct.dfs_cache_vol_info*, %struct.cifs_tcon*)* @do_refresh_tcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_refresh_tcon(%struct.dfs_cache* %0, %struct.dfs_cache_vol_info* %1, %struct.cifs_tcon* %2) #0 {
  %4 = alloca %struct.dfs_cache*, align 8
  %5 = alloca %struct.dfs_cache_vol_info*, align 8
  %6 = alloca %struct.cifs_tcon*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dfs_cache_entry*, align 8
  %13 = alloca %struct.dfs_info3_param*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.cifs_ses*, align 8
  %16 = alloca %struct.cifs_ses*, align 8
  store %struct.dfs_cache* %0, %struct.dfs_cache** %4, align 8
  store %struct.dfs_cache_vol_info* %1, %struct.dfs_cache_vol_info** %5, align 8
  store %struct.cifs_tcon* %2, %struct.cifs_tcon** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.dfs_info3_param* null, %struct.dfs_info3_param** %13, align 8
  store i32 0, i32* %14, align 4
  store %struct.cifs_ses* null, %struct.cifs_ses** %15, align 8
  %17 = call i32 (...) @get_xid()
  store i32 %17, i32* %8, align 4
  %18 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %19 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @get_normalized_path(i8* %22, i8** %10)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %126

27:                                               ; preds = %3
  %28 = call i32 @mutex_lock(i32* @dfs_cache_list_lock)
  %29 = load i8*, i8** %10, align 8
  %30 = call %struct.dfs_cache_entry* @find_cache_entry(i8* %29, i32* %11)
  store %struct.dfs_cache_entry* %30, %struct.dfs_cache_entry** %12, align 8
  %31 = call i32 @mutex_unlock(i32* @dfs_cache_list_lock)
  %32 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %12, align 8
  %33 = call i64 @IS_ERR(%struct.dfs_cache_entry* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %12, align 8
  %37 = call i32 @PTR_ERR(%struct.dfs_cache_entry* %36)
  store i32 %37, i32* %7, align 4
  br label %126

38:                                               ; preds = %27
  %39 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %12, align 8
  %40 = call i32 @cache_entry_expired(%struct.dfs_cache_entry* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  br label %126

43:                                               ; preds = %38
  %44 = load i8*, i8** %10, align 8
  %45 = call i64 @is_dfs_link(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load %struct.dfs_cache_vol_info*, %struct.dfs_cache_vol_info** %5, align 8
  %49 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = call %struct.dfs_cache_entry* @find_root_ses(%struct.dfs_cache_vol_info* %48, %struct.cifs_tcon* %49, i8* %50)
  %52 = bitcast %struct.dfs_cache_entry* %51 to %struct.cifs_ses*
  store %struct.cifs_ses* %52, %struct.cifs_ses** %15, align 8
  store %struct.cifs_ses* %52, %struct.cifs_ses** %16, align 8
  %53 = load %struct.cifs_ses*, %struct.cifs_ses** %16, align 8
  %54 = bitcast %struct.cifs_ses* %53 to %struct.dfs_cache_entry*
  %55 = call i64 @IS_ERR(%struct.dfs_cache_entry* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  %58 = load %struct.cifs_ses*, %struct.cifs_ses** %16, align 8
  %59 = bitcast %struct.cifs_ses* %58 to %struct.dfs_cache_entry*
  %60 = call i32 @PTR_ERR(%struct.dfs_cache_entry* %59)
  store i32 %60, i32* %7, align 4
  store %struct.cifs_ses* null, %struct.cifs_ses** %15, align 8
  br label %126

61:                                               ; preds = %47
  br label %67

62:                                               ; preds = %43
  %63 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %64 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %63, i32 0, i32 2
  %65 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %64, align 8
  %66 = bitcast %struct.dfs_cache_entry* %65 to %struct.cifs_ses*
  store %struct.cifs_ses* %66, %struct.cifs_ses** %16, align 8
  br label %67

67:                                               ; preds = %62, %61
  %68 = load %struct.cifs_ses*, %struct.cifs_ses** %16, align 8
  %69 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32 (i32, %struct.dfs_cache_entry*, i8*, %struct.dfs_info3_param**, i32*, i32, i32)*, i32 (i32, %struct.dfs_cache_entry*, i8*, %struct.dfs_info3_param**, i32*, i32, i32)** %73, align 8
  %75 = icmp ne i32 (i32, %struct.dfs_cache_entry*, i8*, %struct.dfs_info3_param**, i32*, i32, i32)* %74, null
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %67
  %81 = load i32, i32* @EOPNOTSUPP, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %125

83:                                               ; preds = %67
  %84 = load %struct.cifs_ses*, %struct.cifs_ses** %16, align 8
  %85 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32 (i32, %struct.dfs_cache_entry*, i8*, %struct.dfs_info3_param**, i32*, i32, i32)*, i32 (i32, %struct.dfs_cache_entry*, i8*, %struct.dfs_info3_param**, i32*, i32, i32)** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.cifs_ses*, %struct.cifs_ses** %16, align 8
  %93 = bitcast %struct.cifs_ses* %92 to %struct.dfs_cache_entry*
  %94 = load i8*, i8** %9, align 8
  %95 = load %struct.dfs_cache*, %struct.dfs_cache** %4, align 8
  %96 = getelementptr inbounds %struct.dfs_cache, %struct.dfs_cache* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %99 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 %90(i32 %91, %struct.dfs_cache_entry* %93, i8* %94, %struct.dfs_info3_param** %13, i32* %14, i32 %97, i32 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %124, label %104

104:                                              ; preds = %83
  %105 = call i32 @mutex_lock(i32* @dfs_cache_list_lock)
  %106 = load i8*, i8** %10, align 8
  %107 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %13, align 8
  %108 = load i32, i32* %14, align 4
  %109 = call %struct.dfs_cache_entry* @__update_cache_entry(i8* %106, %struct.dfs_info3_param* %107, i32 %108)
  store %struct.dfs_cache_entry* %109, %struct.dfs_cache_entry** %12, align 8
  %110 = call i32 @mutex_unlock(i32* @dfs_cache_list_lock)
  %111 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %13, align 8
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @dump_refs(%struct.dfs_info3_param* %111, i32 %112)
  %114 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %13, align 8
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @free_dfs_info_array(%struct.dfs_info3_param* %114, i32 %115)
  %117 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %12, align 8
  %118 = call i64 @IS_ERR(%struct.dfs_cache_entry* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %104
  %121 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %12, align 8
  %122 = call i32 @PTR_ERR(%struct.dfs_cache_entry* %121)
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %120, %104
  br label %124

124:                                              ; preds = %123, %83
  br label %125

125:                                              ; preds = %124, %80
  br label %126

126:                                              ; preds = %125, %57, %42, %35, %26
  %127 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %128 = icmp ne %struct.cifs_ses* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %131 = bitcast %struct.cifs_ses* %130 to %struct.dfs_cache_entry*
  %132 = call i32 @cifs_put_smb_ses(%struct.dfs_cache_entry* %131)
  br label %133

133:                                              ; preds = %129, %126
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @free_xid(i32 %134)
  %136 = load i8*, i8** %9, align 8
  %137 = load i8*, i8** %10, align 8
  %138 = call i32 @free_normalized_path(i8* %136, i8* %137)
  ret void
}

declare dso_local i32 @get_xid(...) #1

declare dso_local i32 @get_normalized_path(i8*, i8**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dfs_cache_entry* @find_cache_entry(i8*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.dfs_cache_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.dfs_cache_entry*) #1

declare dso_local i32 @cache_entry_expired(%struct.dfs_cache_entry*) #1

declare dso_local i64 @is_dfs_link(i8*) #1

declare dso_local %struct.dfs_cache_entry* @find_root_ses(%struct.dfs_cache_vol_info*, %struct.cifs_tcon*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.dfs_cache_entry* @__update_cache_entry(i8*, %struct.dfs_info3_param*, i32) #1

declare dso_local i32 @dump_refs(%struct.dfs_info3_param*, i32) #1

declare dso_local i32 @free_dfs_info_array(%struct.dfs_info3_param*, i32) #1

declare dso_local i32 @cifs_put_smb_ses(%struct.dfs_cache_entry*) #1

declare dso_local i32 @free_xid(i32) #1

declare dso_local i32 @free_normalized_path(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
