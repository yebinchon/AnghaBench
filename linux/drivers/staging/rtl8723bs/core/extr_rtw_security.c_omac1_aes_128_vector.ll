; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_omac1_aes_128_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_omac1_aes_128_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32**, i64*, i32*)* @omac1_aes_128_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omac1_aes_128_vector(i32* %0, i64 %1, i32** %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32** %2, i32*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %23 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %13, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %27 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %15, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i8* @aes_encrypt_init(i32* %30, i32 16)
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %187

35:                                               ; preds = %5
  %36 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %37 = call i32 @memset(i32* %26, i32 0, i32 %36)
  store i64 0, i64* %21, align 8
  store i64 0, i64* %19, align 8
  br label %38

38:                                               ; preds = %49, %35
  %39 = load i64, i64* %19, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i64*, i64** %10, align 8
  %44 = load i64, i64* %19, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %21, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %21, align 8
  br label %49

49:                                               ; preds = %42
  %50 = load i64, i64* %19, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %19, align 8
  br label %38

52:                                               ; preds = %38
  %53 = load i64, i64* %21, align 8
  store i64 %53, i64* %20, align 8
  store i64 0, i64* %19, align 8
  %54 = load i32**, i32*** %9, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 0
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %16, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = load i64*, i64** %10, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  store i32* %61, i32** %17, align 8
  br label %62

62:                                               ; preds = %109, %52
  %63 = load i64, i64* %20, align 8
  %64 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp uge i64 %63, %65
  br i1 %66, label %67, label %114

67:                                               ; preds = %62
  store i64 0, i64* %18, align 8
  br label %68

68:                                               ; preds = %98, %67
  %69 = load i64, i64* %18, align 8
  %70 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp ult i64 %69, %71
  br i1 %72, label %73, label %101

73:                                               ; preds = %68
  %74 = load i32*, i32** %16, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %16, align 8
  %76 = load i32, i32* %74, align 4
  %77 = load i64, i64* %18, align 8
  %78 = getelementptr inbounds i32, i32* %26, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = xor i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load i32*, i32** %16, align 8
  %82 = load i32*, i32** %17, align 8
  %83 = icmp uge i32* %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %73
  %85 = load i64, i64* %19, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %19, align 8
  %87 = load i32**, i32*** %9, align 8
  %88 = load i64, i64* %19, align 8
  %89 = getelementptr inbounds i32*, i32** %87, i64 %88
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %16, align 8
  %91 = load i32*, i32** %16, align 8
  %92 = load i64*, i64** %10, align 8
  %93 = load i64, i64* %19, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  store i32* %96, i32** %17, align 8
  br label %97

97:                                               ; preds = %84, %73
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %18, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %18, align 8
  br label %68

101:                                              ; preds = %68
  %102 = load i64, i64* %20, align 8
  %103 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %104 = sext i32 %103 to i64
  %105 = icmp ugt i64 %102, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i8*, i8** %12, align 8
  %108 = call i32 @aes_128_encrypt(i8* %107, i32* %26, i32* %26)
  br label %109

109:                                              ; preds = %106, %101
  %110 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %20, align 8
  %113 = sub i64 %112, %111
  store i64 %113, i64* %20, align 8
  br label %62

114:                                              ; preds = %62
  %115 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %116 = call i32 @memset(i32* %29, i32 0, i32 %115)
  %117 = load i8*, i8** %12, align 8
  %118 = call i32 @aes_128_encrypt(i8* %117, i32* %29, i32* %29)
  %119 = call i32 @gf_mulx(i32* %29)
  %120 = load i64, i64* %20, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %114
  %123 = load i64, i64* %21, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %164

125:                                              ; preds = %122, %114
  store i64 0, i64* %18, align 8
  br label %126

126:                                              ; preds = %155, %125
  %127 = load i64, i64* %18, align 8
  %128 = load i64, i64* %20, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %158

130:                                              ; preds = %126
  %131 = load i32*, i32** %16, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %16, align 8
  %133 = load i32, i32* %131, align 4
  %134 = load i64, i64* %18, align 8
  %135 = getelementptr inbounds i32, i32* %26, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = xor i32 %136, %133
  store i32 %137, i32* %135, align 4
  %138 = load i32*, i32** %16, align 8
  %139 = load i32*, i32** %17, align 8
  %140 = icmp uge i32* %138, %139
  br i1 %140, label %141, label %154

141:                                              ; preds = %130
  %142 = load i64, i64* %19, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %19, align 8
  %144 = load i32**, i32*** %9, align 8
  %145 = load i64, i64* %19, align 8
  %146 = getelementptr inbounds i32*, i32** %144, i64 %145
  %147 = load i32*, i32** %146, align 8
  store i32* %147, i32** %16, align 8
  %148 = load i32*, i32** %16, align 8
  %149 = load i64*, i64** %10, align 8
  %150 = load i64, i64* %19, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds i32, i32* %148, i64 %152
  store i32* %153, i32** %17, align 8
  br label %154

154:                                              ; preds = %141, %130
  br label %155

155:                                              ; preds = %154
  %156 = load i64, i64* %18, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %18, align 8
  br label %126

158:                                              ; preds = %126
  %159 = load i64, i64* %20, align 8
  %160 = getelementptr inbounds i32, i32* %26, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = xor i32 %161, 128
  store i32 %162, i32* %160, align 4
  %163 = call i32 @gf_mulx(i32* %29)
  br label %164

164:                                              ; preds = %158, %122
  store i64 0, i64* %18, align 8
  br label %165

165:                                              ; preds = %178, %164
  %166 = load i64, i64* %18, align 8
  %167 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %168 = sext i32 %167 to i64
  %169 = icmp ult i64 %166, %168
  br i1 %169, label %170, label %181

170:                                              ; preds = %165
  %171 = load i64, i64* %18, align 8
  %172 = getelementptr inbounds i32, i32* %26, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i64, i64* %18, align 8
  %175 = getelementptr inbounds i32, i32* %29, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = xor i32 %176, %173
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %170
  %179 = load i64, i64* %18, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %18, align 8
  br label %165

181:                                              ; preds = %165
  %182 = load i8*, i8** %12, align 8
  %183 = load i32*, i32** %11, align 8
  %184 = call i32 @aes_128_encrypt(i8* %182, i32* %29, i32* %183)
  %185 = load i8*, i8** %12, align 8
  %186 = call i32 @aes_encrypt_deinit(i8* %185)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %187

187:                                              ; preds = %181, %34
  %188 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %188)
  %189 = load i32, i32* %6, align 4
  ret i32 %189
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @aes_encrypt_init(i32*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @aes_128_encrypt(i8*, i32*, i32*) #2

declare dso_local i32 @gf_mulx(i32*) #2

declare dso_local i32 @aes_encrypt_deinit(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
