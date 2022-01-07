; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan_cfg.c_wilc_wlan_parse_response_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan_cfg.c_wilc_wlan_parse_response_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.wilc_cfg_word*, %struct.wilc_cfg_hword*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i8* }
%struct.wilc_cfg_word = type { i32, i8* }
%struct.wilc_cfg_hword = type { i8*, i8* }
%struct.TYPE_4__ = type { i32, i8* }

@WID_NIL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wilc*, i32*, i32)* @wilc_wlan_parse_response_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wilc_wlan_parse_response_frame(%struct.wilc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.wilc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wilc_cfg_hword*, align 8
  %11 = alloca %struct.wilc_cfg_word*, align 8
  store %struct.wilc* %0, %struct.wilc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %12

12:                                               ; preds = %173, %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %184

15:                                               ; preds = %12
  store i64 0, i64* %9, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i8* @get_unaligned_le16(i32* %16)
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @GET_WID_TYPE(i8* %18)
  switch i32 %19, label %172 [
    i32 131, label %20
    i32 129, label %60
    i32 130, label %91
    i32 128, label %122
  ]

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %58, %20
  %22 = load %struct.wilc*, %struct.wilc** %4, align 8
  %23 = getelementptr inbounds %struct.wilc, %struct.wilc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** @WID_NIL, align 8
  %31 = icmp eq i8* %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %59

33:                                               ; preds = %21
  %34 = load %struct.wilc*, %struct.wilc** %4, align 8
  %35 = getelementptr inbounds %struct.wilc, %struct.wilc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = icmp eq i8* %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %33
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.wilc*, %struct.wilc** %4, align 8
  %49 = getelementptr inbounds %struct.wilc, %struct.wilc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %47, i32* %54, align 8
  br label %59

55:                                               ; preds = %33
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %9, align 8
  br label %58

58:                                               ; preds = %55
  br i1 true, label %21, label %59

59:                                               ; preds = %58, %44, %32
  store i64 3, i64* %8, align 8
  br label %173

60:                                               ; preds = %15
  br label %61

61:                                               ; preds = %89, %60
  %62 = load %struct.wilc*, %struct.wilc** %4, align 8
  %63 = getelementptr inbounds %struct.wilc, %struct.wilc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load %struct.wilc_cfg_hword*, %struct.wilc_cfg_hword** %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds %struct.wilc_cfg_hword, %struct.wilc_cfg_hword* %65, i64 %66
  store %struct.wilc_cfg_hword* %67, %struct.wilc_cfg_hword** %10, align 8
  %68 = load %struct.wilc_cfg_hword*, %struct.wilc_cfg_hword** %10, align 8
  %69 = getelementptr inbounds %struct.wilc_cfg_hword, %struct.wilc_cfg_hword* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** @WID_NIL, align 8
  %72 = icmp eq i8* %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %90

74:                                               ; preds = %61
  %75 = load %struct.wilc_cfg_hword*, %struct.wilc_cfg_hword** %10, align 8
  %76 = getelementptr inbounds %struct.wilc_cfg_hword, %struct.wilc_cfg_hword* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = icmp eq i8* %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  %83 = call i8* @get_unaligned_le16(i32* %82)
  %84 = load %struct.wilc_cfg_hword*, %struct.wilc_cfg_hword** %10, align 8
  %85 = getelementptr inbounds %struct.wilc_cfg_hword, %struct.wilc_cfg_hword* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  br label %90

86:                                               ; preds = %74
  %87 = load i64, i64* %9, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %9, align 8
  br label %89

89:                                               ; preds = %86
  br i1 true, label %61, label %90

90:                                               ; preds = %89, %80, %73
  store i64 4, i64* %8, align 8
  br label %173

91:                                               ; preds = %15
  br label %92

92:                                               ; preds = %120, %91
  %93 = load %struct.wilc*, %struct.wilc** %4, align 8
  %94 = getelementptr inbounds %struct.wilc, %struct.wilc* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load %struct.wilc_cfg_word*, %struct.wilc_cfg_word** %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds %struct.wilc_cfg_word, %struct.wilc_cfg_word* %96, i64 %97
  store %struct.wilc_cfg_word* %98, %struct.wilc_cfg_word** %11, align 8
  %99 = load %struct.wilc_cfg_word*, %struct.wilc_cfg_word** %11, align 8
  %100 = getelementptr inbounds %struct.wilc_cfg_word, %struct.wilc_cfg_word* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = load i8*, i8** @WID_NIL, align 8
  %103 = icmp eq i8* %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  br label %121

105:                                              ; preds = %92
  %106 = load %struct.wilc_cfg_word*, %struct.wilc_cfg_word** %11, align 8
  %107 = getelementptr inbounds %struct.wilc_cfg_word, %struct.wilc_cfg_word* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = icmp eq i8* %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load i32*, i32** %5, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 4
  %114 = call i32 @get_unaligned_le32(i32* %113)
  %115 = load %struct.wilc_cfg_word*, %struct.wilc_cfg_word** %11, align 8
  %116 = getelementptr inbounds %struct.wilc_cfg_word, %struct.wilc_cfg_word* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  br label %121

117:                                              ; preds = %105
  %118 = load i64, i64* %9, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %9, align 8
  br label %120

120:                                              ; preds = %117
  br i1 true, label %92, label %121

121:                                              ; preds = %120, %111, %104
  store i64 6, i64* %8, align 8
  br label %173

122:                                              ; preds = %15
  br label %123

123:                                              ; preds = %165, %122
  %124 = load %struct.wilc*, %struct.wilc** %4, align 8
  %125 = getelementptr inbounds %struct.wilc, %struct.wilc* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load i64, i64* %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load i8*, i8** @WID_NIL, align 8
  %133 = icmp eq i8* %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %123
  br label %166

135:                                              ; preds = %123
  %136 = load %struct.wilc*, %struct.wilc** %4, align 8
  %137 = getelementptr inbounds %struct.wilc, %struct.wilc* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = load i64, i64* %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = load i8*, i8** %7, align 8
  %145 = icmp eq i8* %143, %144
  br i1 %145, label %146, label %162

146:                                              ; preds = %135
  %147 = load %struct.wilc*, %struct.wilc** %4, align 8
  %148 = getelementptr inbounds %struct.wilc, %struct.wilc* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = load i64, i64* %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32*, i32** %5, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 2
  %157 = load i32*, i32** %5, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 2
  %161 = call i32 @memcpy(i32 %154, i32* %156, i32 %160)
  br label %166

162:                                              ; preds = %135
  %163 = load i64, i64* %9, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %9, align 8
  br label %165

165:                                              ; preds = %162
  br i1 true, label %123, label %166

166:                                              ; preds = %165, %146, %134
  %167 = load i32*, i32** %5, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 2, %169
  %171 = sext i32 %170 to i64
  store i64 %171, i64* %8, align 8
  br label %173

172:                                              ; preds = %15
  br label %173

173:                                              ; preds = %172, %166, %121, %90, %59
  %174 = load i64, i64* %8, align 8
  %175 = add i64 2, %174
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = sub i64 %177, %175
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %6, align 4
  %180 = load i64, i64* %8, align 8
  %181 = add i64 2, %180
  %182 = load i32*, i32** %5, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 %181
  store i32* %183, i32** %5, align 8
  br label %12

184:                                              ; preds = %12
  ret void
}

declare dso_local i8* @get_unaligned_le16(i32*) #1

declare dso_local i32 @GET_WID_TYPE(i8*) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
