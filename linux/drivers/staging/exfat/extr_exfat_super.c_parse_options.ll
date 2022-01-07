; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.exfat_mount_options = type { i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@U16_MAX = common dso_local global i32 0, align 4
@exfat_default_codepage = common dso_local global i32 0, align 4
@exfat_default_iocharset = common dso_local global i8* null, align 8
@EXFAT_ERRORS_RO = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@exfat_tokens = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EXFAT_ERRORS_CONT = common dso_local global i8* null, align 8
@EXFAT_ERRORS_PANIC = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"[EXFAT] Unrecognized mount option %s or missing value\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, %struct.exfat_mount_options*)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_options(i8* %0, i32 %1, i32* %2, %struct.exfat_mount_options* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.exfat_mount_options*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.exfat_mount_options* %3, %struct.exfat_mount_options** %9, align 8
  %17 = load i32, i32* @MAX_OPT_ARGS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = call i32 (...) @current_uid()
  %22 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %23 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 4
  %24 = call i32 (...) @current_gid()
  %25 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %26 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %33 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %35 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 8
  %36 = load i32, i32* @U16_MAX, align 4
  %37 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %38 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @exfat_default_codepage, align 4
  %40 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %41 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i8*, i8** @exfat_default_iocharset, align 8
  %43 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %44 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %46 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %45, i32 0, i32 5
  store i32 0, i32* %46, align 8
  %47 = load i8*, i8** @EXFAT_ERRORS_RO, align 8
  %48 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %49 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %48, i32 0, i32 7
  store i8* %47, i8** %49, align 8
  %50 = load i32*, i32** %8, align 8
  store i32 0, i32* %50, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %4
  br label %185

54:                                               ; preds = %4
  br label %55

55:                                               ; preds = %183, %62, %54
  %56 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %56, i8** %10, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %184

58:                                               ; preds = %55
  %59 = load i8*, i8** %10, align 8
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  br label %55

63:                                               ; preds = %58
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* @exfat_tokens, align 4
  %66 = call i32 @match_token(i8* %64, i32 %65, i32* %20)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  switch i32 %67, label %174 [
    i32 130, label %68
    i32 132, label %78
    i32 129, label %88
    i32 137, label %88
    i32 133, label %88
    i32 142, label %108
    i32 140, label %118
    i32 141, label %127
    i32 131, label %150
    i32 136, label %159
    i32 135, label %163
    i32 134, label %167
    i32 139, label %171
    i32 128, label %173
  ]

68:                                               ; preds = %63
  %69 = getelementptr inbounds i32, i32* %20, i64 0
  %70 = call i32 @match_int(i32* %69, i32* %13)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %200

73:                                               ; preds = %68
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @KUIDT_INIT(i32 %74)
  %76 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %77 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %76, i32 0, i32 9
  store i32 %75, i32* %77, align 4
  br label %183

78:                                               ; preds = %63
  %79 = getelementptr inbounds i32, i32* %20, i64 0
  %80 = call i32 @match_int(i32* %79, i32* %13)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %200

83:                                               ; preds = %78
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @KGIDT_INIT(i32 %84)
  %86 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %87 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %86, i32 0, i32 8
  store i32 %85, i32* %87, align 8
  br label %183

88:                                               ; preds = %63, %63, %63
  %89 = getelementptr inbounds i32, i32* %20, i64 0
  %90 = call i32 @match_octal(i32* %89, i32* %13)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %200

93:                                               ; preds = %88
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 137
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %99 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %96, %93
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 133
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %106 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %103, %100
  br label %183

108:                                              ; preds = %63
  %109 = getelementptr inbounds i32, i32* %20, i64 0
  %110 = call i32 @match_octal(i32* %109, i32* %13)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %200

113:                                              ; preds = %108
  %114 = load i32, i32* %13, align 4
  %115 = and i32 %114, 18
  %116 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %117 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  br label %183

118:                                              ; preds = %63
  %119 = getelementptr inbounds i32, i32* %20, i64 0
  %120 = call i32 @match_int(i32* %119, i32* %13)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %200

123:                                              ; preds = %118
  %124 = load i32, i32* %13, align 4
  %125 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %126 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  br label %183

127:                                              ; preds = %63
  %128 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %129 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %128, i32 0, i32 4
  %130 = load i8*, i8** %129, align 8
  %131 = load i8*, i8** @exfat_default_iocharset, align 8
  %132 = icmp ne i8* %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %127
  %134 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %135 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %134, i32 0, i32 4
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @kfree(i8* %136)
  br label %138

138:                                              ; preds = %133, %127
  %139 = getelementptr inbounds i32, i32* %20, i64 0
  %140 = call i8* @match_strdup(i32* %139)
  store i8* %140, i8** %14, align 8
  %141 = load i8*, i8** %14, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %200

146:                                              ; preds = %138
  %147 = load i8*, i8** %14, align 8
  %148 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %149 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %148, i32 0, i32 4
  store i8* %147, i8** %149, align 8
  br label %183

150:                                              ; preds = %63
  %151 = getelementptr inbounds i32, i32* %20, i64 0
  %152 = call i32 @match_int(i32* %151, i32* %13)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %200

155:                                              ; preds = %150
  %156 = load i32, i32* %13, align 4
  %157 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %158 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %157, i32 0, i32 5
  store i32 %156, i32* %158, align 8
  br label %183

159:                                              ; preds = %63
  %160 = load i8*, i8** @EXFAT_ERRORS_CONT, align 8
  %161 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %162 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %161, i32 0, i32 7
  store i8* %160, i8** %162, align 8
  br label %183

163:                                              ; preds = %63
  %164 = load i8*, i8** @EXFAT_ERRORS_PANIC, align 8
  %165 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %166 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %165, i32 0, i32 7
  store i8* %164, i8** %166, align 8
  br label %183

167:                                              ; preds = %63
  %168 = load i8*, i8** @EXFAT_ERRORS_RO, align 8
  %169 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %170 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %169, i32 0, i32 7
  store i8* %168, i8** %170, align 8
  br label %183

171:                                              ; preds = %63
  %172 = load i32*, i32** %8, align 8
  store i32 1, i32* %172, align 4
  br label %183

173:                                              ; preds = %63
  br label %183

174:                                              ; preds = %63
  %175 = load i32, i32* %7, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %174
  %178 = load i8*, i8** %10, align 8
  %179 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %178)
  br label %180

180:                                              ; preds = %177, %174
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %200

183:                                              ; preds = %173, %171, %167, %163, %159, %155, %146, %123, %113, %107, %83, %73
  br label %55

184:                                              ; preds = %55
  br label %185

185:                                              ; preds = %184, %53
  %186 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %187 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @U16_MAX, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %199

191:                                              ; preds = %185
  %192 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %193 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = xor i32 %194, -1
  %196 = and i32 %195, 18
  %197 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %9, align 8
  %198 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 8
  br label %199

199:                                              ; preds = %191, %185
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %200

200:                                              ; preds = %199, %180, %154, %143, %122, %112, %92, %82, %72
  %201 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %201)
  %202 = load i32, i32* %5, align 4
  ret i32 %202
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @current_uid(...) #2

declare dso_local i32 @current_gid(...) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i32 @KUIDT_INIT(i32) #2

declare dso_local i32 @KGIDT_INIT(i32) #2

declare dso_local i32 @match_octal(i32*, i32*) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i8* @match_strdup(i32*) #2

declare dso_local i32 @pr_err(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
