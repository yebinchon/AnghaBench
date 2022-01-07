; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_nls.c_nls_cstring_to_uniname.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_nls.c_nls_cstring_to_uniname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.uni_name_t = type { i32*, i32, i32 }
%struct.nls_table = type { i32 }
%struct.TYPE_2__ = type { %struct.nls_table* }

@MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@UTF16_HOST_ENDIAN = common dso_local global i32 0, align 4
@bad_uni_chars = common dso_local global i32 0, align 4
@CS_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nls_cstring_to_uniname(%struct.super_block* %0, %struct.uni_name_t* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.uni_name_t*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.nls_table*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.uni_name_t* %1, %struct.uni_name_t** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %18 = mul nsw i32 %17, 2
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = load %struct.uni_name_t*, %struct.uni_name_t** %6, align 8
  %23 = getelementptr inbounds %struct.uni_name_t, %struct.uni_name_t* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %15, align 8
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.nls_table*, %struct.nls_table** %27, align 8
  store %struct.nls_table* %28, %struct.nls_table** %16, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  store i8* %33, i8** %12, align 8
  br label %34

34:                                               ; preds = %45, %4
  %35 = load i8*, i8** %12, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 -1
  store i8* %36, i8** %12, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i8*, i8** %12, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ult i8* %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %46

45:                                               ; preds = %40
  br label %34

46:                                               ; preds = %44, %34
  %47 = load i8*, i8** %12, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %12, align 8
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %7, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %46
  %53 = load i8*, i8** %7, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %68, %56
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 -1
  store i8* %59, i8** %12, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 46
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i8*, i8** %12, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = icmp ult i8* %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %69

68:                                               ; preds = %63
  br label %57

69:                                               ; preds = %67, %57
  %70 = load i8*, i8** %12, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %12, align 8
  store i8 0, i8* %71, align 1
  br label %72

72:                                               ; preds = %69, %52, %46
  %73 = load i8*, i8** %7, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 1, i32* %11, align 4
  br label %78

78:                                               ; preds = %77, %72
  %79 = load %struct.nls_table*, %struct.nls_table** %16, align 8
  %80 = icmp ne %struct.nls_table* %79, null
  br i1 %80, label %113, label %81

81:                                               ; preds = %78
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %84 = load i32, i32* @UTF16_HOST_ENDIAN, align 4
  %85 = load i32*, i32** %15, align 8
  %86 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %87 = call i32 @utf8s_to_utf16s(i8* %82, i32 %83, i32 %84, i32* %85, i32 %86)
  store i32 %87, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %105, %81
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %88
  %93 = load i32, i32* %10, align 4
  %94 = mul nsw i32 %93, 2
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %21, i64 %95
  %97 = load %struct.super_block*, %struct.super_block** %5, align 8
  %98 = load i32*, i32** %15, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @nls_upper(%struct.super_block* %97, i32 %102)
  %104 = call i32 @SET16_A(i8* %96, i32 %103)
  br label %105

105:                                              ; preds = %92
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %88

108:                                              ; preds = %88
  %109 = load i32*, i32** %15, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 0, i32* %112, align 4
  br label %175

113:                                              ; preds = %78
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %114

114:                                              ; preds = %150, %113
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %117 = sub nsw i32 %116, 1
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %164

119:                                              ; preds = %114
  %120 = load i8*, i8** %7, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %164

128:                                              ; preds = %119
  %129 = load %struct.nls_table*, %struct.nls_table** %16, align 8
  %130 = load i32*, i32** %15, align 8
  %131 = load i8*, i8** %7, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = call i64 @convert_ch_to_uni(%struct.nls_table* %129, i32* %130, i8* %134, i32* %11)
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, %135
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %9, align 4
  %140 = load i32*, i32** %15, align 8
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %141, 32
  br i1 %142, label %149, label %143

143:                                              ; preds = %128
  %144 = load i32, i32* @bad_uni_chars, align 4
  %145 = load i32*, i32** %15, align 8
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @nls_wstrchr(i32 %144, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %143, %128
  store i32 1, i32* %11, align 4
  br label %150

150:                                              ; preds = %149, %143
  %151 = load i32, i32* %10, align 4
  %152 = mul nsw i32 %151, 2
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %21, i64 %153
  %155 = load %struct.super_block*, %struct.super_block** %5, align 8
  %156 = load i32*, i32** %15, align 8
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @nls_upper(%struct.super_block* %155, i32 %157)
  %159 = call i32 @SET16_A(i8* %154, i32 %158)
  %160 = load i32*, i32** %15, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %15, align 8
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %10, align 4
  br label %114

164:                                              ; preds = %127, %114
  %165 = load i8*, i8** %7, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  store i32 1, i32* %11, align 4
  br label %173

173:                                              ; preds = %172, %164
  %174 = load i32*, i32** %15, align 8
  store i32 0, i32* %174, align 4
  br label %175

175:                                              ; preds = %173, %108
  %176 = load i32, i32* %10, align 4
  %177 = load %struct.uni_name_t*, %struct.uni_name_t** %6, align 8
  %178 = getelementptr inbounds %struct.uni_name_t, %struct.uni_name_t* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* %10, align 4
  %180 = shl i32 %179, 1
  %181 = load i32, i32* @CS_DEFAULT, align 4
  %182 = call i32 @calc_checksum_2byte(i8* %21, i32 %180, i32 0, i32 %181)
  %183 = load %struct.uni_name_t*, %struct.uni_name_t** %6, align 8
  %184 = getelementptr inbounds %struct.uni_name_t, %struct.uni_name_t* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 4
  %185 = load i32*, i32** %8, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %175
  %188 = load i32, i32* %11, align 4
  %189 = load i32*, i32** %8, align 8
  store i32 %188, i32* %189, align 4
  br label %190

190:                                              ; preds = %187, %175
  %191 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %191)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @utf8s_to_utf16s(i8*, i32, i32, i32*, i32) #2

declare dso_local i32 @SET16_A(i8*, i32) #2

declare dso_local i32 @nls_upper(%struct.super_block*, i32) #2

declare dso_local i64 @convert_ch_to_uni(%struct.nls_table*, i32*, i8*, i32*) #2

declare dso_local i64 @nls_wstrchr(i32, i32) #2

declare dso_local i32 @calc_checksum_2byte(i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
