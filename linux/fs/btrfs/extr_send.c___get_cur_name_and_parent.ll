; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c___get_cur_name_and_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c___get_cur_name_and_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i64, i32, i32 }
%struct.fs_path = type { i64, i64 }
%struct.name_cache_entry = type { i32, i64, i64, i32, i32, i64, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, i64, i64, i64*, i64*, %struct.fs_path*)* @__get_cur_name_and_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_cur_name_and_parent(%struct.send_ctx* %0, i64 %1, i64 %2, i64* %3, i64* %4, %struct.fs_path* %5) #0 {
  %7 = alloca %struct.send_ctx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.fs_path*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.name_cache_entry*, align 8
  store %struct.send_ctx* %0, %struct.send_ctx** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store %struct.fs_path* %5, %struct.fs_path** %12, align 8
  store %struct.name_cache_entry* null, %struct.name_cache_entry** %15, align 8
  %16 = load %struct.send_ctx*, %struct.send_ctx** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call %struct.name_cache_entry* @name_cache_search(%struct.send_ctx* %16, i64 %17, i64 %18)
  store %struct.name_cache_entry* %19, %struct.name_cache_entry** %15, align 8
  %20 = load %struct.name_cache_entry*, %struct.name_cache_entry** %15, align 8
  %21 = icmp ne %struct.name_cache_entry* %20, null
  br i1 %21, label %22, label %67

22:                                               ; preds = %6
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.send_ctx*, %struct.send_ctx** %7, align 8
  %25 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load %struct.name_cache_entry*, %struct.name_cache_entry** %15, align 8
  %30 = getelementptr inbounds %struct.name_cache_entry, %struct.name_cache_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.send_ctx*, %struct.send_ctx** %7, align 8
  %35 = load %struct.name_cache_entry*, %struct.name_cache_entry** %15, align 8
  %36 = call i32 @name_cache_delete(%struct.send_ctx* %34, %struct.name_cache_entry* %35)
  %37 = load %struct.name_cache_entry*, %struct.name_cache_entry** %15, align 8
  %38 = call i32 @kfree(%struct.name_cache_entry* %37)
  store %struct.name_cache_entry* null, %struct.name_cache_entry** %15, align 8
  br label %66

39:                                               ; preds = %28, %22
  %40 = load %struct.send_ctx*, %struct.send_ctx** %7, align 8
  %41 = load %struct.name_cache_entry*, %struct.name_cache_entry** %15, align 8
  %42 = call i32 @name_cache_used(%struct.send_ctx* %40, %struct.name_cache_entry* %41)
  %43 = load %struct.name_cache_entry*, %struct.name_cache_entry** %15, align 8
  %44 = getelementptr inbounds %struct.name_cache_entry, %struct.name_cache_entry* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %10, align 8
  store i64 %45, i64* %46, align 8
  %47 = load %struct.name_cache_entry*, %struct.name_cache_entry** %15, align 8
  %48 = getelementptr inbounds %struct.name_cache_entry, %struct.name_cache_entry* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %11, align 8
  store i64 %49, i64* %50, align 8
  %51 = load %struct.fs_path*, %struct.fs_path** %12, align 8
  %52 = load %struct.name_cache_entry*, %struct.name_cache_entry** %15, align 8
  %53 = getelementptr inbounds %struct.name_cache_entry, %struct.name_cache_entry* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.name_cache_entry*, %struct.name_cache_entry** %15, align 8
  %56 = getelementptr inbounds %struct.name_cache_entry, %struct.name_cache_entry* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @fs_path_add(%struct.fs_path* %51, i32 %54, i64 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %39
  br label %217

62:                                               ; preds = %39
  %63 = load %struct.name_cache_entry*, %struct.name_cache_entry** %15, align 8
  %64 = getelementptr inbounds %struct.name_cache_entry, %struct.name_cache_entry* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %13, align 4
  br label %217

66:                                               ; preds = %33
  br label %67

67:                                               ; preds = %66, %6
  %68 = load %struct.send_ctx*, %struct.send_ctx** %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @is_inode_existent(%struct.send_ctx* %68, i64 %69, i64 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %217

75:                                               ; preds = %67
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %75
  %79 = load %struct.send_ctx*, %struct.send_ctx** %7, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.fs_path*, %struct.fs_path** %12, align 8
  %83 = call i32 @gen_unique_name(%struct.send_ctx* %79, i64 %80, i64 %81, %struct.fs_path* %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %217

87:                                               ; preds = %78
  store i32 1, i32* %13, align 4
  br label %154

88:                                               ; preds = %75
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.send_ctx*, %struct.send_ctx** %7, align 8
  %91 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %89, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load %struct.send_ctx*, %struct.send_ctx** %7, align 8
  %96 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i64, i64* %8, align 8
  %99 = load i64*, i64** %10, align 8
  %100 = load i64*, i64** %11, align 8
  %101 = load %struct.fs_path*, %struct.fs_path** %12, align 8
  %102 = call i32 @get_first_ref(i32 %97, i64 %98, i64* %99, i64* %100, %struct.fs_path* %101)
  store i32 %102, i32* %13, align 4
  br label %112

103:                                              ; preds = %88
  %104 = load %struct.send_ctx*, %struct.send_ctx** %7, align 8
  %105 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = load i64*, i64** %10, align 8
  %109 = load i64*, i64** %11, align 8
  %110 = load %struct.fs_path*, %struct.fs_path** %12, align 8
  %111 = call i32 @get_first_ref(i32 %106, i64 %107, i64* %108, i64* %109, %struct.fs_path* %110)
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %103, %94
  %113 = load i32, i32* %13, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %217

116:                                              ; preds = %112
  %117 = load %struct.send_ctx*, %struct.send_ctx** %7, align 8
  %118 = load i64*, i64** %10, align 8
  %119 = load i64, i64* %118, align 8
  %120 = load i64*, i64** %11, align 8
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %8, align 8
  %123 = load i64, i64* %9, align 8
  %124 = load %struct.fs_path*, %struct.fs_path** %12, align 8
  %125 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.fs_path*, %struct.fs_path** %12, align 8
  %128 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.fs_path*, %struct.fs_path** %12, align 8
  %131 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %129, %132
  %134 = call i32 @did_overwrite_ref(%struct.send_ctx* %117, i64 %119, i64 %121, i64 %122, i64 %123, i64 %126, i64 %133)
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* %13, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %116
  br label %217

138:                                              ; preds = %116
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %138
  %142 = load %struct.fs_path*, %struct.fs_path** %12, align 8
  %143 = call i32 @fs_path_reset(%struct.fs_path* %142)
  %144 = load %struct.send_ctx*, %struct.send_ctx** %7, align 8
  %145 = load i64, i64* %8, align 8
  %146 = load i64, i64* %9, align 8
  %147 = load %struct.fs_path*, %struct.fs_path** %12, align 8
  %148 = call i32 @gen_unique_name(%struct.send_ctx* %144, i64 %145, i64 %146, %struct.fs_path* %147)
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %141
  br label %217

152:                                              ; preds = %141
  store i32 1, i32* %13, align 4
  br label %153

153:                                              ; preds = %152, %138
  br label %154

154:                                              ; preds = %153, %87
  %155 = load %struct.fs_path*, %struct.fs_path** %12, align 8
  %156 = call i64 @fs_path_len(%struct.fs_path* %155)
  %157 = add i64 56, %156
  %158 = add i64 %157, 1
  %159 = load i32, i32* @GFP_KERNEL, align 4
  %160 = call %struct.name_cache_entry* @kmalloc(i64 %158, i32 %159)
  store %struct.name_cache_entry* %160, %struct.name_cache_entry** %15, align 8
  %161 = load %struct.name_cache_entry*, %struct.name_cache_entry** %15, align 8
  %162 = icmp ne %struct.name_cache_entry* %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %154
  %164 = load i32, i32* @ENOMEM, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %13, align 4
  br label %217

166:                                              ; preds = %154
  %167 = load i64, i64* %8, align 8
  %168 = load %struct.name_cache_entry*, %struct.name_cache_entry** %15, align 8
  %169 = getelementptr inbounds %struct.name_cache_entry, %struct.name_cache_entry* %168, i32 0, i32 7
  store i64 %167, i64* %169, align 8
  %170 = load i64, i64* %9, align 8
  %171 = load %struct.name_cache_entry*, %struct.name_cache_entry** %15, align 8
  %172 = getelementptr inbounds %struct.name_cache_entry, %struct.name_cache_entry* %171, i32 0, i32 6
  store i64 %170, i64* %172, align 8
  %173 = load i64*, i64** %10, align 8
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.name_cache_entry*, %struct.name_cache_entry** %15, align 8
  %176 = getelementptr inbounds %struct.name_cache_entry, %struct.name_cache_entry* %175, i32 0, i32 1
  store i64 %174, i64* %176, align 8
  %177 = load i64*, i64** %11, align 8
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.name_cache_entry*, %struct.name_cache_entry** %15, align 8
  %180 = getelementptr inbounds %struct.name_cache_entry, %struct.name_cache_entry* %179, i32 0, i32 2
  store i64 %178, i64* %180, align 8
  %181 = load %struct.fs_path*, %struct.fs_path** %12, align 8
  %182 = call i64 @fs_path_len(%struct.fs_path* %181)
  %183 = load %struct.name_cache_entry*, %struct.name_cache_entry** %15, align 8
  %184 = getelementptr inbounds %struct.name_cache_entry, %struct.name_cache_entry* %183, i32 0, i32 5
  store i64 %182, i64* %184, align 8
  %185 = load i32, i32* %13, align 4
  %186 = load %struct.name_cache_entry*, %struct.name_cache_entry** %15, align 8
  %187 = getelementptr inbounds %struct.name_cache_entry, %struct.name_cache_entry* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 8
  %188 = load %struct.name_cache_entry*, %struct.name_cache_entry** %15, align 8
  %189 = getelementptr inbounds %struct.name_cache_entry, %struct.name_cache_entry* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.fs_path*, %struct.fs_path** %12, align 8
  %192 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @strcpy(i32 %190, i64 %193)
  %195 = load i64, i64* %8, align 8
  %196 = load %struct.send_ctx*, %struct.send_ctx** %7, align 8
  %197 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp slt i64 %195, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %166
  %201 = load %struct.name_cache_entry*, %struct.name_cache_entry** %15, align 8
  %202 = getelementptr inbounds %struct.name_cache_entry, %struct.name_cache_entry* %201, i32 0, i32 0
  store i32 0, i32* %202, align 8
  br label %206

203:                                              ; preds = %166
  %204 = load %struct.name_cache_entry*, %struct.name_cache_entry** %15, align 8
  %205 = getelementptr inbounds %struct.name_cache_entry, %struct.name_cache_entry* %204, i32 0, i32 0
  store i32 1, i32* %205, align 8
  br label %206

206:                                              ; preds = %203, %200
  %207 = load %struct.send_ctx*, %struct.send_ctx** %7, align 8
  %208 = load %struct.name_cache_entry*, %struct.name_cache_entry** %15, align 8
  %209 = call i32 @name_cache_insert(%struct.send_ctx* %207, %struct.name_cache_entry* %208)
  store i32 %209, i32* %14, align 4
  %210 = load i32, i32* %14, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %206
  %213 = load i32, i32* %14, align 4
  store i32 %213, i32* %13, align 4
  br label %214

214:                                              ; preds = %212, %206
  %215 = load %struct.send_ctx*, %struct.send_ctx** %7, align 8
  %216 = call i32 @name_cache_clean_unused(%struct.send_ctx* %215)
  br label %217

217:                                              ; preds = %214, %163, %151, %137, %115, %86, %74, %62, %61
  %218 = load i32, i32* %13, align 4
  ret i32 %218
}

declare dso_local %struct.name_cache_entry* @name_cache_search(%struct.send_ctx*, i64, i64) #1

declare dso_local i32 @name_cache_delete(%struct.send_ctx*, %struct.name_cache_entry*) #1

declare dso_local i32 @kfree(%struct.name_cache_entry*) #1

declare dso_local i32 @name_cache_used(%struct.send_ctx*, %struct.name_cache_entry*) #1

declare dso_local i32 @fs_path_add(%struct.fs_path*, i32, i64) #1

declare dso_local i32 @is_inode_existent(%struct.send_ctx*, i64, i64) #1

declare dso_local i32 @gen_unique_name(%struct.send_ctx*, i64, i64, %struct.fs_path*) #1

declare dso_local i32 @get_first_ref(i32, i64, i64*, i64*, %struct.fs_path*) #1

declare dso_local i32 @did_overwrite_ref(%struct.send_ctx*, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @fs_path_reset(%struct.fs_path*) #1

declare dso_local %struct.name_cache_entry* @kmalloc(i64, i32) #1

declare dso_local i64 @fs_path_len(%struct.fs_path*) #1

declare dso_local i32 @strcpy(i32, i64) #1

declare dso_local i32 @name_cache_insert(%struct.send_ctx*, %struct.name_cache_entry*) #1

declare dso_local i32 @name_cache_clean_unused(%struct.send_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
