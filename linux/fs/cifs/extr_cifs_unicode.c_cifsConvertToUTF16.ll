; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifs_unicode.c_cifsConvertToUTF16.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifs_unicode.c_cifsConvertToUTF16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { i32 (i8*, i32, i32*)*, i32 }

@NO_MAP_UNI_RSVD = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SFU_MAP_UNI_RSVD = common dso_local global i32 0, align 4
@SFM_MAP_UNI_RSVD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@UTF16_LITTLE_ENDIAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifsConvertToUTF16(i64* %0, i8* %1, i32 %2, %struct.nls_table* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nls_table*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.nls_table* %3, %struct.nls_table** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @NO_MAP_UNI_RSVD, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %5
  %26 = load i64*, i64** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* @PATH_MAX, align 4
  %29 = load %struct.nls_table*, %struct.nls_table** %10, align 8
  %30 = call i32 @cifs_strtoUTF16(i64* %26, i8* %27, i32 %28, %struct.nls_table* %29)
  store i32 %30, i32* %6, align 4
  br label %235

31:                                               ; preds = %5
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32* @kzalloc(i32 6, i32 %32)
  store i32* %33, i32** %18, align 8
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %222, %31
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %225

38:                                               ; preds = %34
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %15, align 1
  store i32 1, i32* %13, align 4
  %44 = load i8, i8* %15, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %226

48:                                               ; preds = %38
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @SFU_MAP_UNI_RSVD, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i8, i8* %15, align 1
  %54 = call i64 @convert_to_sfu_char(i8 signext %53)
  store i64 %54, i64* %16, align 8
  br label %72

55:                                               ; preds = %48
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @SFM_MAP_UNI_RSVD, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 1, i32* %21, align 4
  br label %66

65:                                               ; preds = %59
  store i32 0, i32* %21, align 4
  br label %66

66:                                               ; preds = %65, %64
  %67 = load i8, i8* %15, align 1
  %68 = load i32, i32* %21, align 4
  %69 = call i64 @convert_to_sfm_char(i8 signext %67, i32 %68)
  store i64 %69, i64* %16, align 8
  br label %71

70:                                               ; preds = %55
  store i64 0, i64* %16, align 8
  br label %71

71:                                               ; preds = %70, %66
  br label %72

72:                                               ; preds = %71, %52
  %73 = load i64, i64* %16, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %211

75:                                               ; preds = %72
  %76 = load %struct.nls_table*, %struct.nls_table** %10, align 8
  %77 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %76, i32 0, i32 0
  %78 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %77, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %12, align 4
  %85 = sub nsw i32 %83, %84
  %86 = call i32 %78(i8* %82, i32 %85, i32* %17)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %17, align 4
  %88 = call i64 @cpu_to_le16(i32 %87)
  store i64 %88, i64* %16, align 8
  %89 = load i32, i32* %13, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %75
  br label %212

92:                                               ; preds = %75
  %93 = load %struct.nls_table*, %struct.nls_table** %10, align 8
  %94 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @strcmp(i32 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %92
  %99 = load i32*, i32** %18, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %98, %92
  br label %209

102:                                              ; preds = %98
  %103 = load i8*, i8** %8, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = and i32 %108, 128
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %102
  %112 = load i8*, i8** %8, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = call i32 @utf8_to_utf32(i8* %115, i32 6, i32* %20)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %209

120:                                              ; preds = %111
  br label %122

121:                                              ; preds = %102
  br label %209

122:                                              ; preds = %120
  %123 = load i8*, i8** %8, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %129 = load i32*, i32** %18, align 8
  %130 = call i32 @utf8s_to_utf16s(i8* %126, i32 %127, i32 %128, i32* %129, i32 6)
  store i32 %130, i32* %19, align 4
  %131 = load i32, i32* %19, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %122
  br label %209

134:                                              ; preds = %122
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %12, align 4
  %138 = load i32*, i32** %18, align 8
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @cpu_to_le16(i32 %139)
  store i64 %140, i64* %16, align 8
  %141 = load i32, i32* %13, align 4
  %142 = icmp sle i32 %141, 3
  br i1 %142, label %143, label %150

143:                                              ; preds = %134
  %144 = load i64, i64* %16, align 8
  %145 = load i64*, i64** %7, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = call i32 @put_unaligned(i64 %144, i64* %148)
  br label %208

150:                                              ; preds = %134
  %151 = load i32, i32* %13, align 4
  %152 = icmp eq i32 %151, 4
  br i1 %152, label %153, label %172

153:                                              ; preds = %150
  %154 = load i64, i64* %16, align 8
  %155 = load i64*, i64** %7, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  %159 = call i32 @put_unaligned(i64 %154, i64* %158)
  %160 = load i32*, i32** %18, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @cpu_to_le16(i32 %162)
  store i64 %163, i64* %16, align 8
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %14, align 4
  %166 = load i64, i64* %16, align 8
  %167 = load i64*, i64** %7, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = call i32 @put_unaligned(i64 %166, i64* %170)
  br label %207

172:                                              ; preds = %150
  %173 = load i32, i32* %13, align 4
  %174 = icmp sge i32 %173, 5
  br i1 %174, label %175, label %206

175:                                              ; preds = %172
  %176 = load i64, i64* %16, align 8
  %177 = load i64*, i64** %7, align 8
  %178 = load i32, i32* %14, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  %181 = call i32 @put_unaligned(i64 %176, i64* %180)
  %182 = load i32*, i32** %18, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @cpu_to_le16(i32 %184)
  store i64 %185, i64* %16, align 8
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %14, align 4
  %188 = load i64, i64* %16, align 8
  %189 = load i64*, i64** %7, align 8
  %190 = load i32, i32* %14, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = call i32 @put_unaligned(i64 %188, i64* %192)
  %194 = load i32*, i32** %18, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  %196 = load i32, i32* %195, align 4
  %197 = call i64 @cpu_to_le16(i32 %196)
  store i64 %197, i64* %16, align 8
  %198 = load i32, i32* %14, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %14, align 4
  %200 = load i64, i64* %16, align 8
  %201 = load i64*, i64** %7, align 8
  %202 = load i32, i32* %14, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i64, i64* %201, i64 %203
  %205 = call i32 @put_unaligned(i64 %200, i64* %204)
  br label %206

206:                                              ; preds = %175, %172
  br label %207

207:                                              ; preds = %206, %153
  br label %208

208:                                              ; preds = %207, %143
  br label %222

209:                                              ; preds = %133, %121, %119, %101
  %210 = call i64 @cpu_to_le16(i32 63)
  store i64 %210, i64* %16, align 8
  store i32 1, i32* %13, align 4
  br label %211

211:                                              ; preds = %209, %72
  br label %212

212:                                              ; preds = %211, %91
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* %12, align 4
  %215 = add nsw i32 %214, %213
  store i32 %215, i32* %12, align 4
  %216 = load i64, i64* %16, align 8
  %217 = load i64*, i64** %7, align 8
  %218 = load i32, i32* %14, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i64, i64* %217, i64 %219
  %221 = call i32 @put_unaligned(i64 %216, i64* %220)
  br label %222

222:                                              ; preds = %212, %208
  %223 = load i32, i32* %14, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %14, align 4
  br label %34

225:                                              ; preds = %34
  br label %226

226:                                              ; preds = %225, %47
  %227 = load i64*, i64** %7, align 8
  %228 = load i32, i32* %14, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i64, i64* %227, i64 %229
  %231 = call i32 @put_unaligned(i64 0, i64* %230)
  %232 = load i32*, i32** %18, align 8
  %233 = call i32 @kfree(i32* %232)
  %234 = load i32, i32* %14, align 4
  store i32 %234, i32* %6, align 4
  br label %235

235:                                              ; preds = %226, %25
  %236 = load i32, i32* %6, align 4
  ret i32 %236
}

declare dso_local i32 @cifs_strtoUTF16(i64*, i8*, i32, %struct.nls_table*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i64 @convert_to_sfu_char(i8 signext) #1

declare dso_local i64 @convert_to_sfm_char(i8 signext, i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @utf8_to_utf32(i8*, i32, i32*) #1

declare dso_local i32 @utf8s_to_utf16s(i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @put_unaligned(i64, i64*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
