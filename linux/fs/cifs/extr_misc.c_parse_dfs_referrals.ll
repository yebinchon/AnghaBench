; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_parse_dfs_referrals.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_parse_dfs_referrals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.get_dfs_referral_rsp = type { i64, i64, i32, i32 }
%struct.dfs_info3_param = type { i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.nls_table = type { i32 }
%struct.dfs_referral_level_3 = type { i64, i64, i64, i64, i64, i32 }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"num_referrals: must be at least > 0, but we get num_referrals = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Referrals of V%d version are not supported, should be V3\0A\00", align 1
@FYI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"num_referrals: %d dfs flags: 0x%x ...\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_dfs_referrals(%struct.get_dfs_referral_rsp* %0, i32 %1, i32* %2, %struct.dfs_info3_param** %3, %struct.nls_table* %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.get_dfs_referral_rsp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.dfs_info3_param**, align 8
  %13 = alloca %struct.nls_table*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.dfs_referral_level_3*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.dfs_info3_param*, align 8
  %24 = alloca i32*, align 8
  store %struct.get_dfs_referral_rsp* %0, %struct.get_dfs_referral_rsp** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store %struct.dfs_info3_param** %3, %struct.dfs_info3_param*** %12, align 8
  store %struct.nls_table* %4, %struct.nls_table** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %25 = load %struct.get_dfs_referral_rsp*, %struct.get_dfs_referral_rsp** %9, align 8
  %26 = getelementptr inbounds %struct.get_dfs_referral_rsp, %struct.get_dfs_referral_rsp* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @le16_to_cpu(i64 %27)
  %29 = load i32*, i32** %11, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp ult i32 %31, 1
  br i1 %32, label %33, label %40

33:                                               ; preds = %8
  %34 = load i32, i32* @VFS, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, i32, ...) @cifs_dbg(i32 %34, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %18, align 4
  br label %223

40:                                               ; preds = %8
  %41 = load %struct.get_dfs_referral_rsp*, %struct.get_dfs_referral_rsp** %9, align 8
  %42 = getelementptr inbounds %struct.get_dfs_referral_rsp, %struct.get_dfs_referral_rsp* %41, i32 0, i32 3
  %43 = bitcast i32* %42 to %struct.dfs_referral_level_3*
  store %struct.dfs_referral_level_3* %43, %struct.dfs_referral_level_3** %20, align 8
  %44 = load %struct.dfs_referral_level_3*, %struct.dfs_referral_level_3** %20, align 8
  %45 = getelementptr inbounds %struct.dfs_referral_level_3, %struct.dfs_referral_level_3* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @cpu_to_le16(i32 3)
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %40
  %50 = load i32, i32* @VFS, align 4
  %51 = load %struct.dfs_referral_level_3*, %struct.dfs_referral_level_3** %20, align 8
  %52 = getelementptr inbounds %struct.dfs_referral_level_3, %struct.dfs_referral_level_3* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @le16_to_cpu(i64 %53)
  %55 = call i32 (i32, i8*, i32, ...) @cifs_dbg(i32 %50, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %18, align 4
  br label %223

58:                                               ; preds = %40
  %59 = load %struct.get_dfs_referral_rsp*, %struct.get_dfs_referral_rsp** %9, align 8
  %60 = bitcast %struct.get_dfs_referral_rsp* %59 to i8*
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8* %63, i8** %19, align 8
  %64 = load i32, i32* @FYI, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.get_dfs_referral_rsp*, %struct.get_dfs_referral_rsp** %9, align 8
  %68 = getelementptr inbounds %struct.get_dfs_referral_rsp, %struct.get_dfs_referral_rsp* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @le32_to_cpu(i32 %69)
  %71 = call i32 (i32, i8*, i32, ...) @cifs_dbg(i32 %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %66, i8* %70)
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call %struct.dfs_info3_param* @kcalloc(i32 %73, i32 48, i32 %74)
  %76 = load %struct.dfs_info3_param**, %struct.dfs_info3_param*** %12, align 8
  store %struct.dfs_info3_param* %75, %struct.dfs_info3_param** %76, align 8
  %77 = load %struct.dfs_info3_param**, %struct.dfs_info3_param*** %12, align 8
  %78 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %77, align 8
  %79 = icmp eq %struct.dfs_info3_param* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %58
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %18, align 4
  br label %223

83:                                               ; preds = %58
  store i32 0, i32* %17, align 4
  br label %84

84:                                               ; preds = %219, %83
  %85 = load i32, i32* %17, align 4
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp ult i32 %85, %87
  br i1 %88, label %89, label %222

89:                                               ; preds = %84
  %90 = load %struct.dfs_info3_param**, %struct.dfs_info3_param*** %12, align 8
  %91 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %90, align 8
  %92 = load i32, i32* %17, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %91, i64 %93
  store %struct.dfs_info3_param* %94, %struct.dfs_info3_param** %23, align 8
  %95 = load %struct.get_dfs_referral_rsp*, %struct.get_dfs_referral_rsp** %9, align 8
  %96 = getelementptr inbounds %struct.get_dfs_referral_rsp, %struct.get_dfs_referral_rsp* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @le32_to_cpu(i32 %97)
  %99 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %23, align 8
  %100 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %99, i32 0, i32 6
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %133

103:                                              ; preds = %89
  %104 = load i8*, i8** %15, align 8
  %105 = call i32 @strlen(i8* %104)
  %106 = mul nsw i32 %105, 2
  %107 = add nsw i32 %106, 2
  %108 = load i32, i32* @GFP_KERNEL, align 4
  %109 = call i32* @kmalloc(i32 %107, i32 %108)
  store i32* %109, i32** %24, align 8
  %110 = load i32*, i32** %24, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %103
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %18, align 4
  br label %223

115:                                              ; preds = %103
  %116 = load i32*, i32** %24, align 8
  %117 = load i8*, i8** %15, align 8
  %118 = load i32, i32* @PATH_MAX, align 4
  %119 = load %struct.nls_table*, %struct.nls_table** %13, align 8
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @cifsConvertToUTF16(i32* %116, i8* %117, i32 %118, %struct.nls_table* %119, i32 %120)
  %122 = load i32*, i32** %24, align 8
  %123 = load %struct.get_dfs_referral_rsp*, %struct.get_dfs_referral_rsp** %9, align 8
  %124 = getelementptr inbounds %struct.get_dfs_referral_rsp, %struct.get_dfs_referral_rsp* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @le16_to_cpu(i64 %125)
  %127 = load %struct.nls_table*, %struct.nls_table** %13, align 8
  %128 = call i32 @cifs_utf16_bytes(i32* %122, i32 %126, %struct.nls_table* %127)
  %129 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %23, align 8
  %130 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load i32*, i32** %24, align 8
  %132 = call i32 @kfree(i32* %131)
  br label %140

133:                                              ; preds = %89
  %134 = load %struct.get_dfs_referral_rsp*, %struct.get_dfs_referral_rsp** %9, align 8
  %135 = getelementptr inbounds %struct.get_dfs_referral_rsp, %struct.get_dfs_referral_rsp* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @le16_to_cpu(i64 %136)
  %138 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %23, align 8
  %139 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %133, %115
  %141 = load %struct.dfs_referral_level_3*, %struct.dfs_referral_level_3** %20, align 8
  %142 = getelementptr inbounds %struct.dfs_referral_level_3, %struct.dfs_referral_level_3* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @le16_to_cpu(i64 %143)
  %145 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %23, align 8
  %146 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load %struct.dfs_referral_level_3*, %struct.dfs_referral_level_3** %20, align 8
  %148 = getelementptr inbounds %struct.dfs_referral_level_3, %struct.dfs_referral_level_3* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @le16_to_cpu(i64 %149)
  %151 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %23, align 8
  %152 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  %153 = load %struct.dfs_referral_level_3*, %struct.dfs_referral_level_3** %20, align 8
  %154 = bitcast %struct.dfs_referral_level_3* %153 to i8*
  %155 = load %struct.dfs_referral_level_3*, %struct.dfs_referral_level_3** %20, align 8
  %156 = getelementptr inbounds %struct.dfs_referral_level_3, %struct.dfs_referral_level_3* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @le16_to_cpu(i64 %157)
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %154, i64 %159
  store i8* %160, i8** %21, align 8
  %161 = load i8*, i8** %19, align 8
  %162 = load i8*, i8** %21, align 8
  %163 = ptrtoint i8* %161 to i64
  %164 = ptrtoint i8* %162 to i64
  %165 = sub i64 %163, %164
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %22, align 4
  %167 = load i8*, i8** %21, align 8
  %168 = load i32, i32* %22, align 4
  %169 = load i32, i32* %16, align 4
  %170 = load %struct.nls_table*, %struct.nls_table** %13, align 8
  %171 = call i8* @cifs_strndup_from_utf16(i8* %167, i32 %168, i32 %169, %struct.nls_table* %170)
  %172 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %23, align 8
  %173 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %172, i32 0, i32 5
  store i8* %171, i8** %173, align 8
  %174 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %23, align 8
  %175 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %174, i32 0, i32 5
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %140
  %179 = load i32, i32* @ENOMEM, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %18, align 4
  br label %223

181:                                              ; preds = %140
  %182 = load %struct.dfs_referral_level_3*, %struct.dfs_referral_level_3** %20, align 8
  %183 = bitcast %struct.dfs_referral_level_3* %182 to i8*
  %184 = load %struct.dfs_referral_level_3*, %struct.dfs_referral_level_3** %20, align 8
  %185 = getelementptr inbounds %struct.dfs_referral_level_3, %struct.dfs_referral_level_3* %184, i32 0, i32 4
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @le16_to_cpu(i64 %186)
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %183, i64 %188
  store i8* %189, i8** %21, align 8
  %190 = load i8*, i8** %19, align 8
  %191 = load i8*, i8** %21, align 8
  %192 = ptrtoint i8* %190 to i64
  %193 = ptrtoint i8* %191 to i64
  %194 = sub i64 %192, %193
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %22, align 4
  %196 = load i8*, i8** %21, align 8
  %197 = load i32, i32* %22, align 4
  %198 = load i32, i32* %16, align 4
  %199 = load %struct.nls_table*, %struct.nls_table** %13, align 8
  %200 = call i8* @cifs_strndup_from_utf16(i8* %196, i32 %197, i32 %198, %struct.nls_table* %199)
  %201 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %23, align 8
  %202 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %201, i32 0, i32 4
  store i8* %200, i8** %202, align 8
  %203 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %23, align 8
  %204 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %203, i32 0, i32 4
  %205 = load i8*, i8** %204, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %210, label %207

207:                                              ; preds = %181
  %208 = load i32, i32* @ENOMEM, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %18, align 4
  br label %223

210:                                              ; preds = %181
  %211 = load %struct.dfs_referral_level_3*, %struct.dfs_referral_level_3** %20, align 8
  %212 = getelementptr inbounds %struct.dfs_referral_level_3, %struct.dfs_referral_level_3* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 8
  %214 = call i8* @le32_to_cpu(i32 %213)
  %215 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %23, align 8
  %216 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %215, i32 0, i32 3
  store i8* %214, i8** %216, align 8
  %217 = load %struct.dfs_referral_level_3*, %struct.dfs_referral_level_3** %20, align 8
  %218 = getelementptr inbounds %struct.dfs_referral_level_3, %struct.dfs_referral_level_3* %217, i32 1
  store %struct.dfs_referral_level_3* %218, %struct.dfs_referral_level_3** %20, align 8
  br label %219

219:                                              ; preds = %210
  %220 = load i32, i32* %17, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %17, align 4
  br label %84

222:                                              ; preds = %84
  br label %223

223:                                              ; preds = %222, %207, %178, %112, %80, %49, %33
  %224 = load i32, i32* %18, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %223
  %227 = load %struct.dfs_info3_param**, %struct.dfs_info3_param*** %12, align 8
  %228 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %227, align 8
  %229 = load i32*, i32** %11, align 8
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @free_dfs_info_array(%struct.dfs_info3_param* %228, i32 %230)
  %232 = load %struct.dfs_info3_param**, %struct.dfs_info3_param*** %12, align 8
  store %struct.dfs_info3_param* null, %struct.dfs_info3_param** %232, align 8
  %233 = load i32*, i32** %11, align 8
  store i32 0, i32* %233, align 4
  br label %234

234:                                              ; preds = %226, %223
  %235 = load i32, i32* %18, align 4
  ret i32 %235
}

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i32, ...) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local %struct.dfs_info3_param* @kcalloc(i32, i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cifsConvertToUTF16(i32*, i8*, i32, %struct.nls_table*, i32) #1

declare dso_local i32 @cifs_utf16_bytes(i32*, i32, %struct.nls_table*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i8* @cifs_strndup_from_utf16(i8*, i32, i32, %struct.nls_table*) #1

declare dso_local i32 @free_dfs_info_array(%struct.dfs_info3_param*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
