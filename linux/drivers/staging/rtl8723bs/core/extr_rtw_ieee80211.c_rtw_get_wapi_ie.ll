; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ieee80211.c_rtw_get_wapi_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ieee80211.c_rtw_get_wapi_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.rtw_get_wapi_ie.wapi_oui1 = private unnamed_addr constant [4 x i32] [i32 0, i32 20, i32 114, i32 1], align 16
@__const.rtw_get_wapi_ie.wapi_oui2 = private unnamed_addr constant [4 x i32] [i32 0, i32 20, i32 114, i32 2], align 16
@_TIMESTAMP_ = common dso_local global i64 0, align 8
@_BEACON_ITERVAL_ = common dso_local global i64 0, align 8
@_CAPABILITY_ = common dso_local global i64 0, align 8
@_WAPI_IE_ = common dso_local global i32 0, align 4
@_module_rtl871x_mlme_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"\0A %2x,%2x,%2x,%2x,%2x,%2x,%2x,%2x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_get_wapi_ie(i32* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca [4 x i32], align 16
  %15 = alloca [4 x i32], align 16
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([4 x i32]* @__const.rtw_get_wapi_ie.wapi_oui1 to i8*), i64 16, i1 false)
  %17 = bitcast [4 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([4 x i32]* @__const.rtw_get_wapi_ie.wapi_oui2 to i8*), i64 16, i1 false)
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %20, %4
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* %7, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %185

30:                                               ; preds = %25
  %31 = load i64, i64* @_TIMESTAMP_, align 8
  %32 = load i64, i64* @_BEACON_ITERVAL_, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i64, i64* @_CAPABILITY_, align 8
  %35 = add nsw i64 %33, %34
  store i64 %35, i64* %13, align 8
  br label %36

36:                                               ; preds = %176, %30
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %177

40:                                               ; preds = %36
  %41 = load i32*, i32** %6, align 8
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @_WAPI_IE_, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %166

48:                                               ; preds = %40
  %49 = load i32*, i32** %6, align 8
  %50 = load i64, i64* %13, align 8
  %51 = add nsw i64 %50, 6
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %54 = call i32 @memcmp(i32* %52, i32* %53, i32 4)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load i32*, i32** %6, align 8
  %58 = load i64, i64* %13, align 8
  %59 = add nsw i64 %58, 6
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %62 = call i32 @memcmp(i32* %60, i32* %61, i32 4)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %166, label %64

64:                                               ; preds = %56, %48
  %65 = load i32*, i32** %8, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %145

67:                                               ; preds = %64
  %68 = load i32*, i32** %8, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i64, i64* %13, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32*, i32** %6, align 8
  %73 = load i64, i64* %13, align 8
  %74 = add nsw i64 %73, 1
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 2
  %78 = call i32 @memcpy(i32* %68, i32* %71, i32 %77)
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %141, %67
  %80 = load i32, i32* %12, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load i64, i64* %13, align 8
  %83 = add nsw i64 %82, 1
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 2
  %87 = icmp slt i32 %80, %86
  br i1 %87, label %88, label %144

88:                                               ; preds = %79
  %89 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %90 = load i32, i32* @_drv_info_, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 2
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 3
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %8, align 8
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 5
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 6
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, 7
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  %140 = call i32 @RT_TRACE(i32 %89, i32 %90, i8* %139)
  br label %141

141:                                              ; preds = %88
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 8
  store i32 %143, i32* %12, align 4
  br label %79

144:                                              ; preds = %79
  br label %145

145:                                              ; preds = %144, %64
  %146 = load i32*, i32** %9, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %156

148:                                              ; preds = %145
  %149 = load i32*, i32** %6, align 8
  %150 = load i64, i64* %13, align 8
  %151 = add nsw i64 %150, 1
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 2
  %155 = load i32*, i32** %9, align 8
  store i32 %154, i32* %155, align 4
  br label %156

156:                                              ; preds = %148, %145
  %157 = load i32*, i32** %6, align 8
  %158 = load i64, i64* %13, align 8
  %159 = add nsw i64 %158, 1
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 2
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* %13, align 8
  %165 = add nsw i64 %164, %163
  store i64 %165, i64* %13, align 8
  br label %176

166:                                              ; preds = %56, %40
  %167 = load i32*, i32** %6, align 8
  %168 = load i64, i64* %13, align 8
  %169 = add nsw i64 %168, 1
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 2
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* %13, align 8
  %175 = add nsw i64 %174, %173
  store i64 %175, i64* %13, align 8
  br label %176

176:                                              ; preds = %166, %156
  br label %36

177:                                              ; preds = %36
  %178 = load i32*, i32** %9, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i32*, i32** %9, align 8
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %10, align 4
  br label %183

183:                                              ; preds = %180, %177
  %184 = load i32, i32* %10, align 4
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %183, %28
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
