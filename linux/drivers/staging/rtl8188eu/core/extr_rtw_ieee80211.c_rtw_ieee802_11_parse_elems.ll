; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_ieee80211.c_rtw_ieee802_11_parse_elems.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_ieee80211.c_rtw_ieee802_11_parse_elems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_ieee802_11_elems = type { i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32 }

@.str = private unnamed_addr constant [59 x i8] c"IEEE 802.11 element parse failed (id=%d elen=%d left=%lu)\0A\00", align 1
@ParseFailed = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"IEEE 802.11 element parse ignored unknown element (id=%d elen=%d)\0A\00", align 1
@ParseUnknown = common dso_local global i32 0, align 4
@ParseOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_ieee802_11_parse_elems(i32* %0, i32 %1, %struct.rtw_ieee802_11_elems* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtw_ieee802_11_elems*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.rtw_ieee802_11_elems* %2, %struct.rtw_ieee802_11_elems** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32*, i32** %6, align 8
  store i32* %16, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %18 = call i32 @memset(%struct.rtw_ieee802_11_elems* %17, i32 0, i32 288)
  br label %19

19:                                               ; preds = %194, %4
  %20 = load i32, i32* %10, align 4
  %21 = icmp sge i32 %20, 2
  br i1 %21, label %22, label %202

22:                                               ; preds = %19
  %23 = load i32*, i32** %11, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %11, align 8
  %25 = load i32, i32* %23, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %11, align 8
  %28 = load i32, i32* %26, align 4
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sub nsw i32 %29, 2
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %22
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = call i32 (i8*, i32, i32, ...) @DBG_88E(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39, i64 %41)
  br label %43

43:                                               ; preds = %37, %34
  %44 = load i32, i32* @ParseFailed, align 4
  store i32 %44, i32* %5, align 4
  br label %216

45:                                               ; preds = %22
  %46 = load i32, i32* %13, align 4
  switch i32 %46, label %184 [
    i32 133, label %47
    i32 131, label %54
    i32 140, label %61
    i32 144, label %68
    i32 146, label %75
    i32 130, label %82
    i32 137, label %89
    i32 145, label %96
    i32 143, label %103
    i32 142, label %110
    i32 128, label %117
    i32 134, label %128
    i32 135, label %135
    i32 132, label %142
    i32 136, label %149
    i32 141, label %156
    i32 129, label %163
    i32 139, label %170
    i32 138, label %177
  ]

47:                                               ; preds = %45
  %48 = load i32*, i32** %11, align 8
  %49 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %50 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %49, i32 0, i32 0
  store i32* %48, i32** %50, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %53 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  br label %194

54:                                               ; preds = %45
  %55 = load i32*, i32** %11, align 8
  %56 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %57 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %56, i32 0, i32 2
  store i32* %55, i32** %57, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %60 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  br label %194

61:                                               ; preds = %45
  %62 = load i32*, i32** %11, align 8
  %63 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %64 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %63, i32 0, i32 4
  store i32* %62, i32** %64, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %67 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 8
  br label %194

68:                                               ; preds = %45
  %69 = load i32*, i32** %11, align 8
  %70 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %71 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %70, i32 0, i32 6
  store i32* %69, i32** %71, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %74 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %73, i32 0, i32 7
  store i32 %72, i32* %74, align 8
  br label %194

75:                                               ; preds = %45
  %76 = load i32*, i32** %11, align 8
  %77 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %78 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %77, i32 0, i32 8
  store i32* %76, i32** %78, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %81 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %80, i32 0, i32 9
  store i32 %79, i32* %81, align 8
  br label %194

82:                                               ; preds = %45
  %83 = load i32*, i32** %11, align 8
  %84 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %85 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %84, i32 0, i32 10
  store i32* %83, i32** %85, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %88 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %87, i32 0, i32 11
  store i32 %86, i32* %88, align 8
  br label %194

89:                                               ; preds = %45
  %90 = load i32*, i32** %11, align 8
  %91 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %92 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %91, i32 0, i32 12
  store i32* %90, i32** %92, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %95 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %94, i32 0, i32 13
  store i32 %93, i32* %95, align 8
  br label %194

96:                                               ; preds = %45
  %97 = load i32*, i32** %11, align 8
  %98 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %99 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %98, i32 0, i32 14
  store i32* %97, i32** %99, align 8
  %100 = load i32, i32* %14, align 4
  %101 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %102 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %101, i32 0, i32 15
  store i32 %100, i32* %102, align 8
  br label %194

103:                                              ; preds = %45
  %104 = load i32*, i32** %11, align 8
  %105 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %106 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %105, i32 0, i32 16
  store i32* %104, i32** %106, align 8
  %107 = load i32, i32* %14, align 4
  %108 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %109 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %108, i32 0, i32 17
  store i32 %107, i32* %109, align 8
  br label %194

110:                                              ; preds = %45
  %111 = load i32*, i32** %11, align 8
  %112 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %113 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %112, i32 0, i32 18
  store i32* %111, i32** %113, align 8
  %114 = load i32, i32* %14, align 4
  %115 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %116 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %115, i32 0, i32 19
  store i32 %114, i32* %116, align 8
  br label %194

117:                                              ; preds = %45
  %118 = load i32*, i32** %11, align 8
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @rtw_ieee802_11_parse_vendor_specific(i32* %118, i32 %119, %struct.rtw_ieee802_11_elems* %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %12, align 4
  br label %127

127:                                              ; preds = %124, %117
  br label %194

128:                                              ; preds = %45
  %129 = load i32*, i32** %11, align 8
  %130 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %131 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %130, i32 0, i32 20
  store i32* %129, i32** %131, align 8
  %132 = load i32, i32* %14, align 4
  %133 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %134 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %133, i32 0, i32 21
  store i32 %132, i32* %134, align 8
  br label %194

135:                                              ; preds = %45
  %136 = load i32*, i32** %11, align 8
  %137 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %138 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %137, i32 0, i32 22
  store i32* %136, i32** %138, align 8
  %139 = load i32, i32* %14, align 4
  %140 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %141 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %140, i32 0, i32 23
  store i32 %139, i32* %141, align 8
  br label %194

142:                                              ; preds = %45
  %143 = load i32*, i32** %11, align 8
  %144 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %145 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %144, i32 0, i32 24
  store i32* %143, i32** %145, align 8
  %146 = load i32, i32* %14, align 4
  %147 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %148 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %147, i32 0, i32 25
  store i32 %146, i32* %148, align 8
  br label %194

149:                                              ; preds = %45
  %150 = load i32*, i32** %11, align 8
  %151 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %152 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %151, i32 0, i32 26
  store i32* %150, i32** %152, align 8
  %153 = load i32, i32* %14, align 4
  %154 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %155 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %154, i32 0, i32 27
  store i32 %153, i32* %155, align 8
  br label %194

156:                                              ; preds = %45
  %157 = load i32*, i32** %11, align 8
  %158 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %159 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %158, i32 0, i32 28
  store i32* %157, i32** %159, align 8
  %160 = load i32, i32* %14, align 4
  %161 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %162 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %161, i32 0, i32 29
  store i32 %160, i32* %162, align 8
  br label %194

163:                                              ; preds = %45
  %164 = load i32*, i32** %11, align 8
  %165 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %166 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %165, i32 0, i32 30
  store i32* %164, i32** %166, align 8
  %167 = load i32, i32* %14, align 4
  %168 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %169 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %168, i32 0, i32 31
  store i32 %167, i32* %169, align 8
  br label %194

170:                                              ; preds = %45
  %171 = load i32*, i32** %11, align 8
  %172 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %173 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %172, i32 0, i32 32
  store i32* %171, i32** %173, align 8
  %174 = load i32, i32* %14, align 4
  %175 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %176 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %175, i32 0, i32 33
  store i32 %174, i32* %176, align 8
  br label %194

177:                                              ; preds = %45
  %178 = load i32*, i32** %11, align 8
  %179 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %180 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %179, i32 0, i32 34
  store i32* %178, i32** %180, align 8
  %181 = load i32, i32* %14, align 4
  %182 = load %struct.rtw_ieee802_11_elems*, %struct.rtw_ieee802_11_elems** %8, align 8
  %183 = getelementptr inbounds %struct.rtw_ieee802_11_elems, %struct.rtw_ieee802_11_elems* %182, i32 0, i32 35
  store i32 %181, i32* %183, align 8
  br label %194

184:                                              ; preds = %45
  %185 = load i32, i32* %12, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %12, align 4
  %187 = load i32, i32* %9, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %184
  br label %194

190:                                              ; preds = %184
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* %14, align 4
  %193 = call i32 (i8*, i32, i32, ...) @DBG_88E(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %190, %189, %177, %170, %163, %156, %149, %142, %135, %128, %127, %110, %103, %96, %89, %82, %75, %68, %61, %54, %47
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* %10, align 4
  %197 = sub nsw i32 %196, %195
  store i32 %197, i32* %10, align 4
  %198 = load i32, i32* %14, align 4
  %199 = load i32*, i32** %11, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  store i32* %201, i32** %11, align 8
  br label %19

202:                                              ; preds = %19
  %203 = load i32, i32* %10, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = load i32, i32* @ParseFailed, align 4
  store i32 %206, i32* %5, align 4
  br label %216

207:                                              ; preds = %202
  %208 = load i32, i32* %12, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %207
  %211 = load i32, i32* @ParseUnknown, align 4
  br label %214

212:                                              ; preds = %207
  %213 = load i32, i32* @ParseOK, align 4
  br label %214

214:                                              ; preds = %212, %210
  %215 = phi i32 [ %211, %210 ], [ %213, %212 ]
  store i32 %215, i32* %5, align 4
  br label %216

216:                                              ; preds = %214, %205, %43
  %217 = load i32, i32* %5, align 4
  ret i32 %217
}

declare dso_local i32 @memset(%struct.rtw_ieee802_11_elems*, i32, i32) #1

declare dso_local i32 @DBG_88E(i8*, i32, i32, ...) #1

declare dso_local i32 @rtw_ieee802_11_parse_vendor_specific(i32*, i32, %struct.rtw_ieee802_11_elems*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
