; ModuleID = '/home/carl/AnghaBench/linux/fs/affs/extr_super.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/affs/extr_super.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Invalid blocksize (512, 1024, 2048, 4096 allowed)\0A\00", align 1
@SF_SETMODE = common dso_local global i32 0, align 4
@SF_MUFS = common dso_local global i32 0, align 4
@SF_NO_TRUNCATE = common dso_local global i32 0, align 4
@SF_PREFIX = common dso_local global i32 0, align 4
@SF_IMMUTABLE = common dso_local global i32 0, align 4
@SF_SETGID = common dso_local global i32 0, align 4
@SF_SETUID = common dso_local global i32 0, align 4
@SF_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Unrecognized mount option \22%s\22 or missing value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*, i32*, i32*, i32*, i8**, i8*, i64*)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_options(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i8** %7, i8* %8, i64* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  store i8* %0, i8** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i8** %7, i8*** %19, align 8
  store i8* %8, i8** %20, align 8
  store i64* %9, i64** %21, align 8
  %30 = load i32, i32* @MAX_OPT_ARGS, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %23, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %24, align 8
  %34 = call i32 (...) @current_uid()
  %35 = load i32*, i32** %13, align 8
  store i32 %34, i32* %35, align 4
  %36 = call i32 (...) @current_gid()
  %37 = load i32*, i32** %14, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %16, align 8
  store i32 2, i32* %38, align 4
  %39 = load i32*, i32** %17, align 8
  store i32 -1, i32* %39, align 4
  %40 = load i32*, i32** %18, align 8
  store i32 -1, i32* %40, align 4
  %41 = load i8*, i8** %20, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 58, i8* %42, align 1
  %43 = load i8*, i8** %20, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  store i8 0, i8* %44, align 1
  %45 = load i64*, i64** %21, align 8
  store i64 0, i64* %45, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %10
  store i32 1, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %206

49:                                               ; preds = %10
  br label %50

50:                                               ; preds = %204, %57, %49
  %51 = call i8* @strsep(i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %51, i8** %22, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %205

53:                                               ; preds = %50
  %54 = load i8*, i8** %22, align 8
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  br label %50

58:                                               ; preds = %53
  %59 = load i8*, i8** %22, align 8
  %60 = load i32, i32* @tokens, align 4
  %61 = call i32 @match_token(i8* %59, i32 %60, i32* %33)
  store i32 %61, i32* %26, align 4
  %62 = load i32, i32* %26, align 4
  switch i32 %62, label %201 [
    i32 140, label %63
    i32 138, label %85
    i32 137, label %98
    i32 136, label %103
    i32 135, label %108
    i32 134, label %124
    i32 133, label %129
    i32 132, label %136
    i32 131, label %143
    i32 130, label %163
    i32 129, label %183
    i32 128, label %188
    i32 139, label %200
  ]

63:                                               ; preds = %58
  %64 = getelementptr inbounds i32, i32* %33, i64 0
  %65 = call i32 @match_int(i32* %64, i32* %27)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 0, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %206

68:                                               ; preds = %63
  %69 = load i32, i32* %27, align 4
  %70 = icmp ne i32 %69, 512
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load i32, i32* %27, align 4
  %73 = icmp ne i32 %72, 1024
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i32, i32* %27, align 4
  %76 = icmp ne i32 %75, 2048
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32, i32* %27, align 4
  %79 = icmp ne i32 %78, 4096
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %206

82:                                               ; preds = %77, %74, %71, %68
  %83 = load i32, i32* %27, align 4
  %84 = load i32*, i32** %18, align 8
  store i32 %83, i32* %84, align 4
  br label %204

85:                                               ; preds = %58
  %86 = getelementptr inbounds i32, i32* %33, i64 0
  %87 = call i32 @match_octal(i32* %86, i32* %28)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i32 0, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %206

90:                                               ; preds = %85
  %91 = load i32, i32* %28, align 4
  %92 = and i32 %91, 511
  %93 = load i32*, i32** %15, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i64*, i64** %21, align 8
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @SF_SETMODE, align 4
  %97 = call i32 @affs_set_opt(i64 %95, i32 %96)
  br label %204

98:                                               ; preds = %58
  %99 = load i64*, i64** %21, align 8
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @SF_MUFS, align 4
  %102 = call i32 @affs_set_opt(i64 %100, i32 %101)
  br label %204

103:                                              ; preds = %58
  %104 = load i64*, i64** %21, align 8
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* @SF_NO_TRUNCATE, align 4
  %107 = call i32 @affs_set_opt(i64 %105, i32 %106)
  br label %204

108:                                              ; preds = %58
  %109 = load i8**, i8*** %19, align 8
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @kfree(i8* %110)
  %112 = getelementptr inbounds i32, i32* %33, i64 0
  %113 = call i8* @match_strdup(i32* %112)
  %114 = load i8**, i8*** %19, align 8
  store i8* %113, i8** %114, align 8
  %115 = load i8**, i8*** %19, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %108
  store i32 0, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %206

119:                                              ; preds = %108
  %120 = load i64*, i64** %21, align 8
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @SF_PREFIX, align 4
  %123 = call i32 @affs_set_opt(i64 %121, i32 %122)
  br label %204

124:                                              ; preds = %58
  %125 = load i64*, i64** %21, align 8
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* @SF_IMMUTABLE, align 4
  %128 = call i32 @affs_set_opt(i64 %126, i32 %127)
  br label %204

129:                                              ; preds = %58
  %130 = getelementptr inbounds i32, i32* %33, i64 0
  %131 = load i32*, i32** %16, align 8
  %132 = call i32 @match_int(i32* %130, i32* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i32 0, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %206

135:                                              ; preds = %129
  br label %204

136:                                              ; preds = %58
  %137 = getelementptr inbounds i32, i32* %33, i64 0
  %138 = load i32*, i32** %17, align 8
  %139 = call i32 @match_int(i32* %137, i32* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i32 0, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %206

142:                                              ; preds = %136
  br label %204

143:                                              ; preds = %58
  %144 = getelementptr inbounds i32, i32* %33, i64 0
  %145 = call i32 @match_int(i32* %144, i32* %28)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  store i32 0, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %206

148:                                              ; preds = %143
  %149 = call i32 (...) @current_user_ns()
  %150 = load i32, i32* %28, align 4
  %151 = call i32 @make_kgid(i32 %149, i32 %150)
  %152 = load i32*, i32** %14, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i32*, i32** %14, align 8
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @gid_valid(i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %148
  store i32 0, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %206

158:                                              ; preds = %148
  %159 = load i64*, i64** %21, align 8
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* @SF_SETGID, align 4
  %162 = call i32 @affs_set_opt(i64 %160, i32 %161)
  br label %204

163:                                              ; preds = %58
  %164 = getelementptr inbounds i32, i32* %33, i64 0
  %165 = call i32 @match_int(i32* %164, i32* %28)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  store i32 0, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %206

168:                                              ; preds = %163
  %169 = call i32 (...) @current_user_ns()
  %170 = load i32, i32* %28, align 4
  %171 = call i32 @make_kuid(i32 %169, i32 %170)
  %172 = load i32*, i32** %13, align 8
  store i32 %171, i32* %172, align 4
  %173 = load i32*, i32** %13, align 8
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @uid_valid(i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %168
  store i32 0, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %206

178:                                              ; preds = %168
  %179 = load i64*, i64** %21, align 8
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* @SF_SETUID, align 4
  %182 = call i32 @affs_set_opt(i64 %180, i32 %181)
  br label %204

183:                                              ; preds = %58
  %184 = load i64*, i64** %21, align 8
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* @SF_VERBOSE, align 4
  %187 = call i32 @affs_set_opt(i64 %185, i32 %186)
  br label %204

188:                                              ; preds = %58
  %189 = getelementptr inbounds i32, i32* %33, i64 0
  %190 = call i8* @match_strdup(i32* %189)
  store i8* %190, i8** %29, align 8
  %191 = load i8*, i8** %29, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %194, label %193

193:                                              ; preds = %188
  store i32 0, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %206

194:                                              ; preds = %188
  %195 = load i8*, i8** %20, align 8
  %196 = load i8*, i8** %29, align 8
  %197 = call i32 @strlcpy(i8* %195, i8* %196, i32 32)
  %198 = load i8*, i8** %29, align 8
  %199 = call i32 @kfree(i8* %198)
  br label %204

200:                                              ; preds = %58
  br label %204

201:                                              ; preds = %58
  %202 = load i8*, i8** %22, align 8
  %203 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %202)
  store i32 0, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %206

204:                                              ; preds = %200, %194, %183, %178, %158, %142, %135, %124, %119, %103, %98, %90, %82
  br label %50

205:                                              ; preds = %50
  store i32 1, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %206

206:                                              ; preds = %205, %201, %193, %177, %167, %157, %147, %141, %134, %118, %89, %80, %67, %48
  %207 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %207)
  %208 = load i32, i32* %11, align 4
  ret i32 %208
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @current_uid(...) #2

declare dso_local i32 @current_gid(...) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i32 @pr_warn(i8*, ...) #2

declare dso_local i32 @match_octal(i32*, i32*) #2

declare dso_local i32 @affs_set_opt(i64, i32) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i8* @match_strdup(i32*) #2

declare dso_local i32 @make_kgid(i32, i32) #2

declare dso_local i32 @current_user_ns(...) #2

declare dso_local i32 @gid_valid(i32) #2

declare dso_local i32 @make_kuid(i32, i32) #2

declare dso_local i32 @uid_valid(i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
