; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fat_generate_dos_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fat_generate_dos_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i64, i32 }
%struct.dos_name_t = type { i32 }
%struct.dos_dentry_t = type { i8* }
%struct.fs_info_t = type { i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 (%struct.dentry_t*)* }
%struct.dentry_t = type { i32 }
%struct.TYPE_4__ = type { %struct.fs_info_t }

@FFS_MEDIAERR = common dso_local global i32 0, align 4
@TYPE_UNUSED = common dso_local global i64 0, align 8
@TYPE_FILE = common dso_local global i64 0, align 8
@TYPE_DIR = common dso_local global i64 0, align 8
@FFS_FILEEXIST = common dso_local global i32 0, align 4
@FFS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_generate_dos_name(%struct.super_block* %0, %struct.chain_t* %1, %struct.dos_name_t* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.chain_t*, align 8
  %7 = alloca %struct.dos_name_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca [128 x i32], align 16
  %15 = alloca %struct.chain_t, align 8
  %16 = alloca %struct.dos_dentry_t*, align 8
  %17 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.chain_t* %1, %struct.chain_t** %6, align 8
  store %struct.dos_name_t* %2, %struct.dos_name_t** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.super_block*, %struct.super_block** %5, align 8
  %19 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.fs_info_t* %20, %struct.fs_info_t** %17, align 8
  %21 = getelementptr inbounds [128 x i32], [128 x i32]* %14, i64 0, i64 0
  %22 = call i32 @memset(i32* %21, i32 0, i32 512)
  %23 = getelementptr inbounds [128 x i32], [128 x i32]* %14, i64 0, i64 0
  %24 = call i32 @exfat_bitmap_set(i32* %23, i32 0)
  %25 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %26 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @CLUSTER_32(i32 0)
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.fs_info_t*, %struct.fs_info_t** %17, align 8
  %32 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %12, align 4
  br label %38

34:                                               ; preds = %3
  %35 = load %struct.fs_info_t*, %struct.fs_info_t** %17, align 8
  %36 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %40 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  %43 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %44 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 1
  store i32 %45, i32* %46, align 8
  br label %47

47:                                               ; preds = %193, %38
  %48 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @CLUSTER_32(i32 -1)
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %194

52:                                               ; preds = %47
  %53 = load %struct.fs_info_t*, %struct.fs_info_t** %17, align 8
  %54 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %194

58:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %174, %58
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %177

63:                                               ; preds = %59
  %64 = load %struct.super_block*, %struct.super_block** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @get_entry_in_dir(%struct.super_block* %64, %struct.chain_t* %15, i32 %65, i32* null)
  %67 = inttoptr i64 %66 to %struct.dos_dentry_t*
  store %struct.dos_dentry_t* %67, %struct.dos_dentry_t** %16, align 8
  %68 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %16, align 8
  %69 = icmp ne %struct.dos_dentry_t* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %71, i32* %4, align 4
  br label %248

72:                                               ; preds = %63
  %73 = load %struct.fs_info_t*, %struct.fs_info_t** %17, align 8
  %74 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %73, i32 0, i32 2
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64 (%struct.dentry_t*)*, i64 (%struct.dentry_t*)** %76, align 8
  %78 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %16, align 8
  %79 = bitcast %struct.dos_dentry_t* %78 to %struct.dentry_t*
  %80 = call i64 %77(%struct.dentry_t* %79)
  store i64 %80, i64* %13, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* @TYPE_UNUSED, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  br label %177

85:                                               ; preds = %72
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* @TYPE_FILE, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i64, i64* %13, align 8
  %91 = load i64, i64* @TYPE_DIR, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %174

94:                                               ; preds = %89, %85
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %160, %94
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %96, 8
  br i1 %97, label %98, label %163

98:                                               ; preds = %95
  %99 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %16, align 8
  %100 = getelementptr inbounds %struct.dos_dentry_t, %struct.dos_dentry_t* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 32
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  br label %163

109:                                              ; preds = %98
  %110 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %16, align 8
  %111 = getelementptr inbounds %struct.dos_dentry_t, %struct.dos_dentry_t* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 126
  br i1 %118, label %119, label %120

119:                                              ; preds = %109
  store i32 1, i32* %11, align 4
  br label %159

120:                                              ; preds = %109
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %158

123:                                              ; preds = %120
  %124 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %16, align 8
  %125 = getelementptr inbounds %struct.dos_dentry_t, %struct.dos_dentry_t* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp sge i32 %131, 48
  br i1 %132, label %133, label %156

133:                                              ; preds = %123
  %134 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %16, align 8
  %135 = getelementptr inbounds %struct.dos_dentry_t, %struct.dos_dentry_t* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp sle i32 %141, 57
  br i1 %142, label %143, label %156

143:                                              ; preds = %133
  %144 = load i32, i32* %10, align 4
  %145 = mul nsw i32 %144, 10
  %146 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %16, align 8
  %147 = getelementptr inbounds %struct.dos_dentry_t, %struct.dos_dentry_t* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = sub nsw i32 %153, 48
  %155 = add nsw i32 %145, %154
  store i32 %155, i32* %10, align 4
  br label %157

156:                                              ; preds = %133, %123
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %157

157:                                              ; preds = %156, %143
  br label %158

158:                                              ; preds = %157, %120
  br label %159

159:                                              ; preds = %158, %119
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %95

163:                                              ; preds = %108, %95
  %164 = load i32, i32* %10, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = load i32, i32* %10, align 4
  %168 = icmp slt i32 %167, 1024
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = getelementptr inbounds [128 x i32], [128 x i32]* %14, i64 0, i64 0
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @exfat_bitmap_set(i32* %170, i32 %171)
  br label %173

173:                                              ; preds = %169, %166, %163
  br label %174

174:                                              ; preds = %173, %93
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %8, align 4
  br label %59

177:                                              ; preds = %84, %59
  %178 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %179 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i64 @CLUSTER_32(i32 0)
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  br label %194

184:                                              ; preds = %177
  %185 = load %struct.super_block*, %struct.super_block** %5, align 8
  %186 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 0
  %189 = call i64 @FAT_read(%struct.super_block* %185, i64 %187, i64* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %184
  %192 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %192, i32* %4, align 4
  br label %248

193:                                              ; preds = %184
  br label %47

194:                                              ; preds = %183, %57, %47
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %195

195:                                              ; preds = %230, %194
  %196 = load i32, i32* %8, align 4
  %197 = icmp slt i32 %196, 128
  br i1 %197, label %198, label %233

198:                                              ; preds = %195
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [128 x i32], [128 x i32]* %14, i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 255
  br i1 %203, label %204, label %229

204:                                              ; preds = %198
  store i32 0, i32* %9, align 4
  br label %205

205:                                              ; preds = %221, %204
  %206 = load i32, i32* %9, align 4
  %207 = icmp slt i32 %206, 8
  br i1 %207, label %208, label %224

208:                                              ; preds = %205
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [128 x i32], [128 x i32]* %14, i64 0, i64 %210
  %212 = load i32, i32* %9, align 4
  %213 = call i64 @exfat_bitmap_test(i32* %211, i32 %212)
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %208
  %216 = load i32, i32* %8, align 4
  %217 = shl i32 %216, 3
  %218 = load i32, i32* %9, align 4
  %219 = add nsw i32 %217, %218
  store i32 %219, i32* %10, align 4
  br label %224

220:                                              ; preds = %208
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %9, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %9, align 4
  br label %205

224:                                              ; preds = %215, %205
  %225 = load i32, i32* %10, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %224
  br label %233

228:                                              ; preds = %224
  br label %229

229:                                              ; preds = %228, %198
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %8, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %8, align 4
  br label %195

233:                                              ; preds = %227, %195
  %234 = load i32, i32* %10, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %233
  %237 = load i32, i32* %10, align 4
  %238 = icmp sge i32 %237, 1024
  br i1 %238, label %239, label %241

239:                                              ; preds = %236, %233
  %240 = load i32, i32* @FFS_FILEEXIST, align 4
  store i32 %240, i32* %4, align 4
  br label %248

241:                                              ; preds = %236
  %242 = load %struct.dos_name_t*, %struct.dos_name_t** %7, align 8
  %243 = getelementptr inbounds %struct.dos_name_t, %struct.dos_name_t* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %10, align 4
  %246 = call i32 @fat_attach_count_to_dos_name(i32 %244, i32 %245)
  %247 = load i32, i32* @FFS_SUCCESS, align 4
  store i32 %247, i32* %4, align 4
  br label %248

248:                                              ; preds = %241, %239, %191, %70
  %249 = load i32, i32* %4, align 4
  ret i32 %249
}

declare dso_local %struct.TYPE_4__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @exfat_bitmap_set(i32*, i32) #1

declare dso_local i64 @CLUSTER_32(i32) #1

declare dso_local i64 @get_entry_in_dir(%struct.super_block*, %struct.chain_t*, i32, i32*) #1

declare dso_local i64 @FAT_read(%struct.super_block*, i64, i64*) #1

declare dso_local i64 @exfat_bitmap_test(i32*, i32) #1

declare dso_local i32 @fat_attach_count_to_dos_name(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
