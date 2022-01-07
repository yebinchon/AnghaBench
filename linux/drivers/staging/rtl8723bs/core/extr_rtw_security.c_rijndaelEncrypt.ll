; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_rijndaelEncrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_rijndaelEncrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s = common dso_local global i32 0, align 4
@t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @rijndaelEncrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rijndaelEncrypt(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 10, i32* %15, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @GETU32(i32* %17)
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %18, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  %25 = call i32 @GETU32(i32* %24)
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %25, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 8
  %32 = call i32 @GETU32(i32* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = xor i32 %32, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 12
  %39 = call i32 @GETU32(i32* %38)
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %39, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %15, align 4
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %16, align 4
  br label %46

46:                                               ; preds = %113, %3
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (i32, ...) bitcast (i32 (...)* @TE0 to i32 (i32, ...)*)(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 (i32, ...) bitcast (i32 (...)* @TE1 to i32 (i32, ...)*)(i32 %49)
  %51 = xor i32 %48, %50
  %52 = load i32, i32* %9, align 4
  %53 = call i32 (i32, ...) bitcast (i32 (...)* @TE2 to i32 (i32, ...)*)(i32 %52)
  %54 = xor i32 %51, %53
  %55 = load i32, i32* %10, align 4
  %56 = call i32 (i32, ...) bitcast (i32 (...)* @TE3 to i32 (i32, ...)*)(i32 %55)
  %57 = xor i32 %54, %56
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32, i32* %59, align 4
  %61 = xor i32 %57, %60
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (i32, ...) bitcast (i32 (...)* @TE0 to i32 (i32, ...)*)(i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (i32, ...) bitcast (i32 (...)* @TE1 to i32 (i32, ...)*)(i32 %64)
  %66 = xor i32 %63, %65
  %67 = load i32, i32* %10, align 4
  %68 = call i32 (i32, ...) bitcast (i32 (...)* @TE2 to i32 (i32, ...)*)(i32 %67)
  %69 = xor i32 %66, %68
  %70 = load i32, i32* %7, align 4
  %71 = call i32 (i32, ...) bitcast (i32 (...)* @TE3 to i32 (i32, ...)*)(i32 %70)
  %72 = xor i32 %69, %71
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  %75 = load i32, i32* %74, align 4
  %76 = xor i32 %72, %75
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 (i32, ...) bitcast (i32 (...)* @TE0 to i32 (i32, ...)*)(i32 %77)
  %79 = load i32, i32* %10, align 4
  %80 = call i32 (i32, ...) bitcast (i32 (...)* @TE1 to i32 (i32, ...)*)(i32 %79)
  %81 = xor i32 %78, %80
  %82 = load i32, i32* %7, align 4
  %83 = call i32 (i32, ...) bitcast (i32 (...)* @TE2 to i32 (i32, ...)*)(i32 %82)
  %84 = xor i32 %81, %83
  %85 = load i32, i32* %8, align 4
  %86 = call i32 (i32, ...) bitcast (i32 (...)* @TE3 to i32 (i32, ...)*)(i32 %85)
  %87 = xor i32 %84, %86
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 6
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %87, %90
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 (i32, ...) bitcast (i32 (...)* @TE0 to i32 (i32, ...)*)(i32 %92)
  %94 = load i32, i32* %7, align 4
  %95 = call i32 (i32, ...) bitcast (i32 (...)* @TE1 to i32 (i32, ...)*)(i32 %94)
  %96 = xor i32 %93, %95
  %97 = load i32, i32* %8, align 4
  %98 = call i32 (i32, ...) bitcast (i32 (...)* @TE2 to i32 (i32, ...)*)(i32 %97)
  %99 = xor i32 %96, %98
  %100 = load i32, i32* %9, align 4
  %101 = call i32 (i32, ...) bitcast (i32 (...)* @TE3 to i32 (i32, ...)*)(i32 %100)
  %102 = xor i32 %99, %101
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 7
  %105 = load i32, i32* %104, align 4
  %106 = xor i32 %102, %105
  store i32 %106, i32* %14, align 4
  %107 = load i32*, i32** %4, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 8
  store i32* %108, i32** %4, align 8
  %109 = load i32, i32* %16, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %16, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %46
  br label %174

113:                                              ; preds = %46
  %114 = load i32, i32* %11, align 4
  %115 = call i32 (i32, ...) bitcast (i32 (...)* @TE0 to i32 (i32, ...)*)(i32 %114)
  %116 = load i32, i32* %12, align 4
  %117 = call i32 (i32, ...) bitcast (i32 (...)* @TE1 to i32 (i32, ...)*)(i32 %116)
  %118 = xor i32 %115, %117
  %119 = load i32, i32* %13, align 4
  %120 = call i32 (i32, ...) bitcast (i32 (...)* @TE2 to i32 (i32, ...)*)(i32 %119)
  %121 = xor i32 %118, %120
  %122 = load i32, i32* %14, align 4
  %123 = call i32 (i32, ...) bitcast (i32 (...)* @TE3 to i32 (i32, ...)*)(i32 %122)
  %124 = xor i32 %121, %123
  %125 = load i32*, i32** %4, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = xor i32 %124, %127
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %12, align 4
  %130 = call i32 (i32, ...) bitcast (i32 (...)* @TE0 to i32 (i32, ...)*)(i32 %129)
  %131 = load i32, i32* %13, align 4
  %132 = call i32 (i32, ...) bitcast (i32 (...)* @TE1 to i32 (i32, ...)*)(i32 %131)
  %133 = xor i32 %130, %132
  %134 = load i32, i32* %14, align 4
  %135 = call i32 (i32, ...) bitcast (i32 (...)* @TE2 to i32 (i32, ...)*)(i32 %134)
  %136 = xor i32 %133, %135
  %137 = load i32, i32* %11, align 4
  %138 = call i32 (i32, ...) bitcast (i32 (...)* @TE3 to i32 (i32, ...)*)(i32 %137)
  %139 = xor i32 %136, %138
  %140 = load i32*, i32** %4, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = xor i32 %139, %142
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %13, align 4
  %145 = call i32 (i32, ...) bitcast (i32 (...)* @TE0 to i32 (i32, ...)*)(i32 %144)
  %146 = load i32, i32* %14, align 4
  %147 = call i32 (i32, ...) bitcast (i32 (...)* @TE1 to i32 (i32, ...)*)(i32 %146)
  %148 = xor i32 %145, %147
  %149 = load i32, i32* %11, align 4
  %150 = call i32 (i32, ...) bitcast (i32 (...)* @TE2 to i32 (i32, ...)*)(i32 %149)
  %151 = xor i32 %148, %150
  %152 = load i32, i32* %12, align 4
  %153 = call i32 (i32, ...) bitcast (i32 (...)* @TE3 to i32 (i32, ...)*)(i32 %152)
  %154 = xor i32 %151, %153
  %155 = load i32*, i32** %4, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 2
  %157 = load i32, i32* %156, align 4
  %158 = xor i32 %154, %157
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %14, align 4
  %160 = call i32 (i32, ...) bitcast (i32 (...)* @TE0 to i32 (i32, ...)*)(i32 %159)
  %161 = load i32, i32* %11, align 4
  %162 = call i32 (i32, ...) bitcast (i32 (...)* @TE1 to i32 (i32, ...)*)(i32 %161)
  %163 = xor i32 %160, %162
  %164 = load i32, i32* %12, align 4
  %165 = call i32 (i32, ...) bitcast (i32 (...)* @TE2 to i32 (i32, ...)*)(i32 %164)
  %166 = xor i32 %163, %165
  %167 = load i32, i32* %13, align 4
  %168 = call i32 (i32, ...) bitcast (i32 (...)* @TE3 to i32 (i32, ...)*)(i32 %167)
  %169 = xor i32 %166, %168
  %170 = load i32*, i32** %4, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 3
  %172 = load i32, i32* %171, align 4
  %173 = xor i32 %169, %172
  store i32 %173, i32* %10, align 4
  br label %46

174:                                              ; preds = %112
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @TE41(i32 %175)
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @TE42(i32 %177)
  %179 = xor i32 %176, %178
  %180 = load i32, i32* %13, align 4
  %181 = call i32 @TE43(i32 %180)
  %182 = xor i32 %179, %181
  %183 = load i32, i32* %14, align 4
  %184 = call i32 @TE44(i32 %183)
  %185 = xor i32 %182, %184
  %186 = load i32*, i32** %4, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = xor i32 %185, %188
  store i32 %189, i32* %7, align 4
  %190 = load i32*, i32** %6, align 8
  %191 = load i32, i32* %7, align 4
  %192 = call i32 @PUTU32(i32* %190, i32 %191)
  %193 = load i32, i32* %12, align 4
  %194 = call i32 @TE41(i32 %193)
  %195 = load i32, i32* %13, align 4
  %196 = call i32 @TE42(i32 %195)
  %197 = xor i32 %194, %196
  %198 = load i32, i32* %14, align 4
  %199 = call i32 @TE43(i32 %198)
  %200 = xor i32 %197, %199
  %201 = load i32, i32* %11, align 4
  %202 = call i32 @TE44(i32 %201)
  %203 = xor i32 %200, %202
  %204 = load i32*, i32** %4, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  %206 = load i32, i32* %205, align 4
  %207 = xor i32 %203, %206
  store i32 %207, i32* %8, align 4
  %208 = load i32*, i32** %6, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 4
  %210 = load i32, i32* %8, align 4
  %211 = call i32 @PUTU32(i32* %209, i32 %210)
  %212 = load i32, i32* %13, align 4
  %213 = call i32 @TE41(i32 %212)
  %214 = load i32, i32* %14, align 4
  %215 = call i32 @TE42(i32 %214)
  %216 = xor i32 %213, %215
  %217 = load i32, i32* %11, align 4
  %218 = call i32 @TE43(i32 %217)
  %219 = xor i32 %216, %218
  %220 = load i32, i32* %12, align 4
  %221 = call i32 @TE44(i32 %220)
  %222 = xor i32 %219, %221
  %223 = load i32*, i32** %4, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 2
  %225 = load i32, i32* %224, align 4
  %226 = xor i32 %222, %225
  store i32 %226, i32* %9, align 4
  %227 = load i32*, i32** %6, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 8
  %229 = load i32, i32* %9, align 4
  %230 = call i32 @PUTU32(i32* %228, i32 %229)
  %231 = load i32, i32* %14, align 4
  %232 = call i32 @TE41(i32 %231)
  %233 = load i32, i32* %11, align 4
  %234 = call i32 @TE42(i32 %233)
  %235 = xor i32 %232, %234
  %236 = load i32, i32* %12, align 4
  %237 = call i32 @TE43(i32 %236)
  %238 = xor i32 %235, %237
  %239 = load i32, i32* %13, align 4
  %240 = call i32 @TE44(i32 %239)
  %241 = xor i32 %238, %240
  %242 = load i32*, i32** %4, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 3
  %244 = load i32, i32* %243, align 4
  %245 = xor i32 %241, %244
  store i32 %245, i32* %10, align 4
  %246 = load i32*, i32** %6, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 12
  %248 = load i32, i32* %10, align 4
  %249 = call i32 @PUTU32(i32* %247, i32 %248)
  ret void
}

declare dso_local i32 @GETU32(i32*) #1

declare dso_local i32 @TE0(...) #1

declare dso_local i32 @TE1(...) #1

declare dso_local i32 @TE2(...) #1

declare dso_local i32 @TE3(...) #1

declare dso_local i32 @TE41(i32) #1

declare dso_local i32 @TE42(i32) #1

declare dso_local i32 @TE43(i32) #1

declare dso_local i32 @TE44(i32) #1

declare dso_local i32 @PUTU32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
