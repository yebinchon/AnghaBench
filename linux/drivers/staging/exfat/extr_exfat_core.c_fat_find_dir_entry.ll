; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fat_find_dir_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fat_find_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i64, i32 }
%struct.uni_name_t = type { i32* }
%struct.dos_name_t = type { i32 }
%struct.dentry_t = type { i32 }
%struct.dos_dentry_t = type { i32 }
%struct.ext_dentry_t = type { i32 }
%struct.fs_info_t = type { i64, i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 (%struct.dentry_t*)* }
%struct.TYPE_4__ = type { %struct.fs_info_t }

@UNI_CUR_DIR_NAME = common dso_local global i64 0, align 8
@UNI_PAR_DIR_NAME = common dso_local global i64 0, align 8
@TYPE_FILE = common dso_local global i64 0, align 8
@TYPE_DIR = common dso_local global i64 0, align 8
@TYPE_ALL = common dso_local global i64 0, align 8
@TYPE_EXTEND = common dso_local global i64 0, align 8
@TYPE_UNUSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_find_dir_entry(%struct.super_block* %0, %struct.chain_t* %1, %struct.uni_name_t* %2, i32 %3, %struct.dos_name_t* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.chain_t*, align 8
  %10 = alloca %struct.uni_name_t*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dos_name_t*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca [14 x i32], align 16
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.chain_t, align 8
  %26 = alloca %struct.dentry_t*, align 8
  %27 = alloca %struct.dos_dentry_t*, align 8
  %28 = alloca %struct.ext_dentry_t*, align 8
  %29 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %8, align 8
  store %struct.chain_t* %1, %struct.chain_t** %9, align 8
  store %struct.uni_name_t* %2, %struct.uni_name_t** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.dos_name_t* %4, %struct.dos_name_t** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32* null, i32** %23, align 8
  %30 = load %struct.super_block*, %struct.super_block** %8, align 8
  %31 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store %struct.fs_info_t* %32, %struct.fs_info_t** %29, align 8
  %33 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %34 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.fs_info_t*, %struct.fs_info_t** %29, align 8
  %37 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %6
  %41 = load %struct.super_block*, %struct.super_block** %8, align 8
  %42 = load %struct.uni_name_t*, %struct.uni_name_t** %10, align 8
  %43 = getelementptr inbounds %struct.uni_name_t, %struct.uni_name_t* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @UNI_CUR_DIR_NAME, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = call i64 @nls_uniname_cmp(%struct.super_block* %41, i32* %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %40
  %50 = load %struct.super_block*, %struct.super_block** %8, align 8
  %51 = load %struct.uni_name_t*, %struct.uni_name_t** %10, align 8
  %52 = getelementptr inbounds %struct.uni_name_t, %struct.uni_name_t* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @UNI_PAR_DIR_NAME, align 8
  %55 = inttoptr i64 %54 to i32*
  %56 = call i64 @nls_uniname_cmp(%struct.super_block* %50, i32* %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %49, %40
  store i32 -1, i32* %7, align 4
  br label %243

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %6
  %61 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %62 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @CLUSTER_32(i32 0)
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.fs_info_t*, %struct.fs_info_t** %29, align 8
  %68 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %20, align 4
  br label %74

70:                                               ; preds = %60
  %71 = load %struct.fs_info_t*, %struct.fs_info_t** %29, align 8
  %72 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %20, align 4
  br label %74

74:                                               ; preds = %70, %66
  %75 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %76 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %25, i32 0, i32 0
  store i64 %77, i64* %78, align 8
  %79 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %80 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %25, i32 0, i32 1
  store i32 %81, i32* %82, align 8
  br label %83

83:                                               ; preds = %241, %74
  %84 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %25, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @CLUSTER_32(i32 -1)
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %242

88:                                               ; preds = %83
  %89 = load %struct.fs_info_t*, %struct.fs_info_t** %29, align 8
  %90 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %242

94:                                               ; preds = %88
  store i32 0, i32* %14, align 4
  br label %95

95:                                               ; preds = %221, %94
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %20, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %226

99:                                               ; preds = %95
  %100 = load %struct.super_block*, %struct.super_block** %8, align 8
  %101 = load i32, i32* %14, align 4
  %102 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %100, %struct.chain_t* %25, i32 %101, i32* null)
  store %struct.dentry_t* %102, %struct.dentry_t** %26, align 8
  %103 = load %struct.dentry_t*, %struct.dentry_t** %26, align 8
  %104 = icmp ne %struct.dentry_t* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %99
  store i32 -2, i32* %7, align 4
  br label %243

106:                                              ; preds = %99
  %107 = load %struct.fs_info_t*, %struct.fs_info_t** %29, align 8
  %108 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %107, i32 0, i32 3
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i64 (%struct.dentry_t*)*, i64 (%struct.dentry_t*)** %110, align 8
  %112 = load %struct.dentry_t*, %struct.dentry_t** %26, align 8
  %113 = call i64 %111(%struct.dentry_t* %112)
  store i64 %113, i64* %21, align 8
  %114 = load i64, i64* %21, align 8
  %115 = load i64, i64* @TYPE_FILE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %121, label %117

117:                                              ; preds = %106
  %118 = load i64, i64* %21, align 8
  %119 = load i64, i64* @TYPE_DIR, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %153

121:                                              ; preds = %117, %106
  %122 = load i64, i64* %13, align 8
  %123 = load i64, i64* @TYPE_ALL, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = load i64, i64* %13, align 8
  %127 = load i64, i64* %21, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %152

129:                                              ; preds = %125, %121
  %130 = load i32, i32* %18, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load i32, i32* %19, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load i32, i32* %15, align 4
  store i32 %136, i32* %7, align 4
  br label %243

137:                                              ; preds = %132, %129
  %138 = load %struct.dentry_t*, %struct.dentry_t** %26, align 8
  %139 = bitcast %struct.dentry_t* %138 to %struct.dos_dentry_t*
  store %struct.dos_dentry_t* %139, %struct.dos_dentry_t** %27, align 8
  %140 = load %struct.super_block*, %struct.super_block** %8, align 8
  %141 = load %struct.dos_name_t*, %struct.dos_name_t** %12, align 8
  %142 = getelementptr inbounds %struct.dos_name_t, %struct.dos_name_t* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %27, align 8
  %145 = getelementptr inbounds %struct.dos_dentry_t, %struct.dos_dentry_t* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @nls_dosname_cmp(%struct.super_block* %140, i32 %143, i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %137
  %150 = load i32, i32* %15, align 4
  store i32 %150, i32* %7, align 4
  br label %243

151:                                              ; preds = %137
  br label %152

152:                                              ; preds = %151, %125
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %220

153:                                              ; preds = %117
  %154 = load i64, i64* %21, align 8
  %155 = load i64, i64* @TYPE_EXTEND, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %213

157:                                              ; preds = %153
  %158 = load i32, i32* %18, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %212

160:                                              ; preds = %157
  %161 = load %struct.dentry_t*, %struct.dentry_t** %26, align 8
  %162 = bitcast %struct.dentry_t* %161 to %struct.ext_dentry_t*
  store %struct.ext_dentry_t* %162, %struct.ext_dentry_t** %28, align 8
  %163 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %28, align 8
  %164 = getelementptr inbounds %struct.ext_dentry_t, %struct.ext_dentry_t* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp sgt i32 %165, 64
  br i1 %166, label %167, label %180

167:                                              ; preds = %160
  %168 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %28, align 8
  %169 = getelementptr inbounds %struct.ext_dentry_t, %struct.ext_dentry_t* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 %170, 64
  store i32 %171, i32* %17, align 4
  %172 = load %struct.uni_name_t*, %struct.uni_name_t** %10, align 8
  %173 = getelementptr inbounds %struct.uni_name_t, %struct.uni_name_t* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %17, align 4
  %176 = sub nsw i32 %175, 1
  %177 = mul nsw i32 13, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %174, i64 %178
  store i32* %179, i32** %23, align 8
  br label %186

180:                                              ; preds = %160
  %181 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %28, align 8
  %182 = getelementptr inbounds %struct.ext_dentry_t, %struct.ext_dentry_t* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %17, align 4
  %184 = load i32*, i32** %23, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 -13
  store i32* %185, i32** %23, align 8
  br label %186

186:                                              ; preds = %180, %167
  %187 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %28, align 8
  %188 = getelementptr inbounds [14 x i32], [14 x i32]* %22, i64 0, i64 0
  %189 = load i32, i32* %17, align 4
  %190 = call i32 @extract_uni_name_from_ext_entry(%struct.ext_dentry_t* %187, i32* %188, i32 %189)
  store i32 %190, i32* %16, align 4
  %191 = load i32*, i32** %23, align 8
  %192 = load i32, i32* %16, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %24, align 4
  %196 = load i32*, i32** %23, align 8
  %197 = load i32, i32* %16, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  store i32 0, i32* %199, align 4
  %200 = load %struct.super_block*, %struct.super_block** %8, align 8
  %201 = load i32*, i32** %23, align 8
  %202 = getelementptr inbounds [14 x i32], [14 x i32]* %22, i64 0, i64 0
  %203 = call i64 @nls_uniname_cmp(%struct.super_block* %200, i32* %201, i32* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %186
  store i32 0, i32* %18, align 4
  br label %206

206:                                              ; preds = %205, %186
  %207 = load i32, i32* %24, align 4
  %208 = load i32*, i32** %23, align 8
  %209 = load i32, i32* %16, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  store i32 %207, i32* %211, align 4
  br label %212

212:                                              ; preds = %206, %157
  store i32 1, i32* %19, align 4
  br label %219

213:                                              ; preds = %153
  %214 = load i64, i64* %21, align 8
  %215 = load i64, i64* @TYPE_UNUSED, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %213
  store i32 -2, i32* %7, align 4
  br label %243

218:                                              ; preds = %213
  br label %219

219:                                              ; preds = %218, %212
  br label %220

220:                                              ; preds = %219, %152
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %14, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %14, align 4
  %224 = load i32, i32* %15, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %15, align 4
  br label %95

226:                                              ; preds = %95
  %227 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %228 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = call i64 @CLUSTER_32(i32 0)
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %226
  br label %242

233:                                              ; preds = %226
  %234 = load %struct.super_block*, %struct.super_block** %8, align 8
  %235 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %25, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %25, i32 0, i32 0
  %238 = call i64 @FAT_read(%struct.super_block* %234, i64 %236, i64* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %233
  store i32 -2, i32* %7, align 4
  br label %243

241:                                              ; preds = %233
  br label %83

242:                                              ; preds = %232, %93, %83
  store i32 -2, i32* %7, align 4
  br label %243

243:                                              ; preds = %242, %240, %217, %149, %135, %105, %58
  %244 = load i32, i32* %7, align 4
  ret i32 %244
}

declare dso_local %struct.TYPE_4__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i64 @nls_uniname_cmp(%struct.super_block*, i32*, i32*) #1

declare dso_local i64 @CLUSTER_32(i32) #1

declare dso_local %struct.dentry_t* @get_entry_in_dir(%struct.super_block*, %struct.chain_t*, i32, i32*) #1

declare dso_local i32 @nls_dosname_cmp(%struct.super_block*, i32, i32) #1

declare dso_local i32 @extract_uni_name_from_ext_entry(%struct.ext_dentry_t*, i32*, i32) #1

declare dso_local i64 @FAT_read(%struct.super_block*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
