; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_qgroup_update_counters.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_qgroup_update_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.ulist = type { i32 }
%struct.ulist_node = type { i32 }
%struct.ulist_iterator = type { i32 }
%struct.btrfs_qgroup = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.ulist*, i64, i64, i64, i64)* @qgroup_update_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qgroup_update_counters(%struct.btrfs_fs_info* %0, %struct.ulist* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca %struct.ulist*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ulist_node*, align 8
  %14 = alloca %struct.ulist_iterator, align 4
  %15 = alloca %struct.btrfs_qgroup*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %7, align 8
  store %struct.ulist* %1, %struct.ulist** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %19 = call i32 @ULIST_ITER_INIT(%struct.ulist_iterator* %14)
  br label %20

20:                                               ; preds = %190, %6
  %21 = load %struct.ulist*, %struct.ulist** %8, align 8
  %22 = call %struct.ulist_node* @ulist_next(%struct.ulist* %21, %struct.ulist_iterator* %14)
  store %struct.ulist_node* %22, %struct.ulist_node** %13, align 8
  %23 = icmp ne %struct.ulist_node* %22, null
  br i1 %23, label %24, label %191

24:                                               ; preds = %20
  store i32 0, i32* %18, align 4
  %25 = load %struct.ulist_node*, %struct.ulist_node** %13, align 8
  %26 = call %struct.btrfs_qgroup* @unode_aux_to_qgroup(%struct.ulist_node* %25)
  store %struct.btrfs_qgroup* %26, %struct.btrfs_qgroup** %15, align 8
  %27 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %15, align 8
  %28 = load i64, i64* %12, align 8
  %29 = call i64 @btrfs_qgroup_get_old_refcnt(%struct.btrfs_qgroup* %27, i64 %28)
  store i64 %29, i64* %17, align 8
  %30 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %15, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call i64 @btrfs_qgroup_get_new_refcnt(%struct.btrfs_qgroup* %30, i64 %31)
  store i64 %32, i64* %16, align 8
  %33 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %34 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %15, align 8
  %35 = load i64, i64* %17, align 8
  %36 = load i64, i64* %16, align 8
  %37 = call i32 @trace_qgroup_update_counters(%struct.btrfs_fs_info* %33, %struct.btrfs_qgroup* %34, i64 %35, i64 %36)
  %38 = load i64, i64* %17, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %24
  %41 = load i64, i64* %16, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = load i64, i64* %11, align 8
  %45 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %15, align 8
  %46 = getelementptr inbounds %struct.btrfs_qgroup, %struct.btrfs_qgroup* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = load i64, i64* %11, align 8
  %52 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %15, align 8
  %53 = getelementptr inbounds %struct.btrfs_qgroup, %struct.btrfs_qgroup* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %51
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  store i32 1, i32* %18, align 4
  br label %58

58:                                               ; preds = %43, %40, %24
  %59 = load i64, i64* %17, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = load i64, i64* %16, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %15, align 8
  %67 = getelementptr inbounds %struct.btrfs_qgroup, %struct.btrfs_qgroup* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 4
  %72 = load i64, i64* %11, align 8
  %73 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %15, align 8
  %74 = getelementptr inbounds %struct.btrfs_qgroup, %struct.btrfs_qgroup* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %76, %72
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  store i32 1, i32* %18, align 4
  br label %79

79:                                               ; preds = %64, %61, %58
  %80 = load i64, i64* %17, align 8
  %81 = load i64, i64* %9, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %79
  %84 = load i64, i64* %16, align 8
  %85 = load i64, i64* %10, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %83
  %88 = load i64, i64* %17, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %87
  %91 = load i64, i64* %11, align 8
  %92 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %15, align 8
  %93 = getelementptr inbounds %struct.btrfs_qgroup, %struct.btrfs_qgroup* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = sub nsw i64 %95, %91
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 4
  %98 = load i64, i64* %11, align 8
  %99 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %15, align 8
  %100 = getelementptr inbounds %struct.btrfs_qgroup, %struct.btrfs_qgroup* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = sub nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  store i32 1, i32* %18, align 4
  br label %105

105:                                              ; preds = %90, %87
  br label %106

106:                                              ; preds = %105, %83, %79
  %107 = load i64, i64* %17, align 8
  %108 = load i64, i64* %9, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %133

110:                                              ; preds = %106
  %111 = load i64, i64* %16, align 8
  %112 = load i64, i64* %10, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %110
  %115 = load i64, i64* %16, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %114
  %118 = load i64, i64* %11, align 8
  %119 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %15, align 8
  %120 = getelementptr inbounds %struct.btrfs_qgroup, %struct.btrfs_qgroup* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %118
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %120, align 4
  %125 = load i64, i64* %11, align 8
  %126 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %15, align 8
  %127 = getelementptr inbounds %struct.btrfs_qgroup, %struct.btrfs_qgroup* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %125
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %127, align 4
  store i32 1, i32* %18, align 4
  br label %132

132:                                              ; preds = %117, %114
  br label %133

133:                                              ; preds = %132, %110, %106
  %134 = load i64, i64* %17, align 8
  %135 = load i64, i64* %9, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %183

137:                                              ; preds = %133
  %138 = load i64, i64* %16, align 8
  %139 = load i64, i64* %10, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %183

141:                                              ; preds = %137
  %142 = load i64, i64* %17, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %163

144:                                              ; preds = %141
  %145 = load i64, i64* %16, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %144
  %148 = load i64, i64* %11, align 8
  %149 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %15, align 8
  %150 = getelementptr inbounds %struct.btrfs_qgroup, %struct.btrfs_qgroup* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %152, %148
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %150, align 4
  %155 = load i64, i64* %11, align 8
  %156 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %15, align 8
  %157 = getelementptr inbounds %struct.btrfs_qgroup, %struct.btrfs_qgroup* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %155
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %157, align 4
  store i32 1, i32* %18, align 4
  br label %162

162:                                              ; preds = %147, %144
  br label %182

163:                                              ; preds = %141
  %164 = load i64, i64* %16, align 8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %181

166:                                              ; preds = %163
  %167 = load i64, i64* %11, align 8
  %168 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %15, align 8
  %169 = getelementptr inbounds %struct.btrfs_qgroup, %struct.btrfs_qgroup* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = sub nsw i64 %171, %167
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %169, align 4
  %174 = load i64, i64* %11, align 8
  %175 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %15, align 8
  %176 = getelementptr inbounds %struct.btrfs_qgroup, %struct.btrfs_qgroup* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = sub nsw i64 %178, %174
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %176, align 4
  store i32 1, i32* %18, align 4
  br label %181

181:                                              ; preds = %166, %163
  br label %182

182:                                              ; preds = %181, %162
  br label %183

183:                                              ; preds = %182, %137, %133
  %184 = load i32, i32* %18, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %188 = load %struct.btrfs_qgroup*, %struct.btrfs_qgroup** %15, align 8
  %189 = call i32 @qgroup_dirty(%struct.btrfs_fs_info* %187, %struct.btrfs_qgroup* %188)
  br label %190

190:                                              ; preds = %186, %183
  br label %20

191:                                              ; preds = %20
  ret i32 0
}

declare dso_local i32 @ULIST_ITER_INIT(%struct.ulist_iterator*) #1

declare dso_local %struct.ulist_node* @ulist_next(%struct.ulist*, %struct.ulist_iterator*) #1

declare dso_local %struct.btrfs_qgroup* @unode_aux_to_qgroup(%struct.ulist_node*) #1

declare dso_local i64 @btrfs_qgroup_get_old_refcnt(%struct.btrfs_qgroup*, i64) #1

declare dso_local i64 @btrfs_qgroup_get_new_refcnt(%struct.btrfs_qgroup*, i64) #1

declare dso_local i32 @trace_qgroup_update_counters(%struct.btrfs_fs_info*, %struct.btrfs_qgroup*, i64, i64) #1

declare dso_local i32 @qgroup_dirty(%struct.btrfs_fs_info*, %struct.btrfs_qgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
