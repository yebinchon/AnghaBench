; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_search_old_slot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_search_old_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_key = type { i32 }
%struct.btrfs_path = type { i32, i32*, i32, %struct.extent_buffer**, i8**, i64 }
%struct.extent_buffer = type { i32 }

@EIO = common dso_local global i32 0, align 4
@BTRFS_READ_LOCK = common dso_local global i8* null, align 8
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_search_old_slot(%struct.btrfs_root* %0, %struct.btrfs_key* %1, %struct.btrfs_path* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_key*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_fs_info*, align 8
  %11 = alloca %struct.extent_buffer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %6, align 8
  store %struct.btrfs_key* %1, %struct.btrfs_key** %7, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %21 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %20, i32 0, i32 0
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %21, align 8
  store %struct.btrfs_fs_info* %22, %struct.btrfs_fs_info** %10, align 8
  store i32 1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  %23 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %24 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %17, align 4
  %26 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %27 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %26, i32 0, i32 3
  %28 = load %struct.extent_buffer**, %struct.extent_buffer*** %27, align 8
  %29 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %28, i64 0
  %30 = load %struct.extent_buffer*, %struct.extent_buffer** %29, align 8
  %31 = icmp ne %struct.extent_buffer* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON(i32 %32)
  %34 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %35 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %42 = load %struct.btrfs_key*, %struct.btrfs_key** %7, align 8
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %44 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %41, %struct.btrfs_key* %42, %struct.btrfs_path* %43, i32 0, i32 0)
  store i32 %44, i32* %5, align 4
  br label %213

45:                                               ; preds = %4
  br label %46

46:                                               ; preds = %140, %45
  %47 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call %struct.extent_buffer* @get_old_root(%struct.btrfs_root* %47, i32 %48)
  store %struct.extent_buffer* %49, %struct.extent_buffer** %11, align 8
  %50 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %51 = icmp ne %struct.extent_buffer* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %13, align 4
  br label %197

55:                                               ; preds = %46
  %56 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %57 = call i32 @btrfs_header_level(%struct.extent_buffer* %56)
  store i32 %57, i32* %15, align 4
  %58 = load i8*, i8** @BTRFS_READ_LOCK, align 8
  %59 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %60 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %59, i32 0, i32 4
  %61 = load i8**, i8*** %60, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  store i8* %58, i8** %64, align 8
  br label %65

65:                                               ; preds = %195, %55
  %66 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %67 = icmp ne %struct.extent_buffer* %66, null
  br i1 %67, label %68, label %196

68:                                               ; preds = %65
  %69 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %70 = call i32 @btrfs_header_level(%struct.extent_buffer* %69)
  store i32 %70, i32* %15, align 4
  %71 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %72 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %73 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %72, i32 0, i32 3
  %74 = load %struct.extent_buffer**, %struct.extent_buffer*** %73, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %74, i64 %76
  store %struct.extent_buffer* %71, %struct.extent_buffer** %77, align 8
  %78 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 1
  %81 = call i32 @btrfs_unlock_up_safe(%struct.btrfs_path* %78, i32 %80)
  store i32 -1, i32* %18, align 4
  %82 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %83 = load %struct.btrfs_key*, %struct.btrfs_key** %7, align 8
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @key_search(%struct.extent_buffer* %82, %struct.btrfs_key* %83, i32 %84, i32* %18, i32* %12)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %68
  br label %197

89:                                               ; preds = %68
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %183

92:                                               ; preds = %89
  store i32 0, i32* %19, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load i32, i32* %12, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  store i32 1, i32* %19, align 4
  %99 = load i32, i32* %12, align 4
  %100 = sub nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %98, %95, %92
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %104 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %102, i32* %108, align 4
  %109 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @unlock_up(%struct.btrfs_path* %109, i32 %110, i32 %111, i32 0, i32* null)
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %17, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %101
  %117 = load i32, i32* %19, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %121 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %119, %116
  br label %197

129:                                              ; preds = %101
  %130 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %131 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.btrfs_key*, %struct.btrfs_key** %7, align 8
  %135 = call i32 @read_block_for_search(%struct.btrfs_root* %130, %struct.btrfs_path* %131, %struct.extent_buffer** %11, i32 %132, i32 %133, %struct.btrfs_key* %134)
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @EAGAIN, align 4
  %138 = sub nsw i32 0, %137
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %129
  br label %46

141:                                              ; preds = %129
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load i32, i32* %14, align 4
  store i32 %145, i32* %13, align 4
  br label %197

146:                                              ; preds = %141
  %147 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %148 = call i32 @btrfs_header_level(%struct.extent_buffer* %147)
  store i32 %148, i32* %15, align 4
  %149 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %150 = call i32 @btrfs_tree_read_lock_atomic(%struct.extent_buffer* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %146
  %153 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %154 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %153)
  %155 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %156 = call i32 @btrfs_tree_read_lock(%struct.extent_buffer* %155)
  br label %157

157:                                              ; preds = %152, %146
  %158 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %159 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %160 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call %struct.extent_buffer* @tree_mod_log_rewind(%struct.btrfs_fs_info* %158, %struct.btrfs_path* %159, %struct.extent_buffer* %160, i32 %161)
  store %struct.extent_buffer* %162, %struct.extent_buffer** %11, align 8
  %163 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %164 = icmp ne %struct.extent_buffer* %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %157
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %13, align 4
  br label %197

168:                                              ; preds = %157
  %169 = load i8*, i8** @BTRFS_READ_LOCK, align 8
  %170 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %171 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %170, i32 0, i32 4
  %172 = load i8**, i8*** %171, align 8
  %173 = load i32, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  store i8* %169, i8** %175, align 8
  %176 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %177 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %178 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %177, i32 0, i32 3
  %179 = load %struct.extent_buffer**, %struct.extent_buffer*** %178, align 8
  %180 = load i32, i32* %15, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %179, i64 %181
  store %struct.extent_buffer* %176, %struct.extent_buffer** %182, align 8
  br label %195

183:                                              ; preds = %89
  %184 = load i32, i32* %12, align 4
  %185 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %186 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %15, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  store i32 %184, i32* %190, align 4
  %191 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* %16, align 4
  %194 = call i32 @unlock_up(%struct.btrfs_path* %191, i32 %192, i32 %193, i32 0, i32* null)
  br label %197

195:                                              ; preds = %168
  br label %65

196:                                              ; preds = %65
  store i32 1, i32* %13, align 4
  br label %197

197:                                              ; preds = %196, %183, %165, %144, %128, %88, %52
  %198 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %199 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %197
  %203 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %204 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %203)
  br label %205

205:                                              ; preds = %202, %197
  %206 = load i32, i32* %13, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %210 = call i32 @btrfs_release_path(%struct.btrfs_path* %209)
  br label %211

211:                                              ; preds = %208, %205
  %212 = load i32, i32* %13, align 4
  store i32 %212, i32* %5, align 4
  br label %213

213:                                              ; preds = %211, %38
  %214 = load i32, i32* %5, align 4
  ret i32 %214
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local %struct.extent_buffer* @get_old_root(%struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_unlock_up_safe(%struct.btrfs_path*, i32) #1

declare dso_local i32 @key_search(%struct.extent_buffer*, %struct.btrfs_key*, i32, i32*, i32*) #1

declare dso_local i32 @unlock_up(%struct.btrfs_path*, i32, i32, i32, i32*) #1

declare dso_local i32 @read_block_for_search(%struct.btrfs_root*, %struct.btrfs_path*, %struct.extent_buffer**, i32, i32, %struct.btrfs_key*) #1

declare dso_local i32 @btrfs_tree_read_lock_atomic(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_path_blocking(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_tree_read_lock(%struct.extent_buffer*) #1

declare dso_local %struct.extent_buffer* @tree_mod_log_rewind(%struct.btrfs_fs_info*, %struct.btrfs_path*, %struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
