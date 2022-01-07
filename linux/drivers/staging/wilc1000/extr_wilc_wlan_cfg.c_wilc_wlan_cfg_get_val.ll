; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan_cfg.c_wilc_wlan_cfg_get_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan_cfg.c_wilc_wlan_cfg_get_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@CFG_BYTE_CMD = common dso_local global i64 0, align 8
@WID_NIL = common dso_local global i64 0, align 8
@CFG_HWORD_CMD = common dso_local global i64 0, align 8
@CFG_WORD_CMD = common dso_local global i64 0, align 8
@CFG_STR_CMD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_wlan_cfg_get_val(%struct.wilc* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.wilc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.wilc* %0, %struct.wilc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %14, 12
  %16 = and i32 %15, 15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @CFG_BYTE_CMD, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %64

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %62, %21
  %23 = load %struct.wilc*, %struct.wilc** %5, align 8
  %24 = getelementptr inbounds %struct.wilc, %struct.wilc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @WID_NIL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %63

35:                                               ; preds = %22
  %36 = load %struct.wilc*, %struct.wilc** %5, align 8
  %37 = getelementptr inbounds %struct.wilc, %struct.wilc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %35
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.wilc*, %struct.wilc** %5, align 8
  %51 = getelementptr inbounds %struct.wilc, %struct.wilc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = call i32 @memcpy(i32* %49, i32* %57, i32 1)
  store i32 1, i32* %11, align 4
  br label %63

59:                                               ; preds = %35
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %59
  br i1 true, label %22, label %63

63:                                               ; preds = %62, %48, %34
  br label %221

64:                                               ; preds = %4
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @CFG_HWORD_CMD, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %111

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %109, %68
  %70 = load %struct.wilc*, %struct.wilc** %5, align 8
  %71 = getelementptr inbounds %struct.wilc, %struct.wilc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @WID_NIL, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  br label %110

82:                                               ; preds = %69
  %83 = load %struct.wilc*, %struct.wilc** %5, align 8
  %84 = getelementptr inbounds %struct.wilc, %struct.wilc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp eq i64 %91, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %82
  %96 = load i32*, i32** %7, align 8
  %97 = load %struct.wilc*, %struct.wilc** %5, align 8
  %98 = getelementptr inbounds %struct.wilc, %struct.wilc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = call i32 @memcpy(i32* %96, i32* %104, i32 2)
  store i32 2, i32* %11, align 4
  br label %110

106:                                              ; preds = %82
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %106
  br i1 true, label %69, label %110

110:                                              ; preds = %109, %95, %81
  br label %220

111:                                              ; preds = %64
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* @CFG_WORD_CMD, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %158

115:                                              ; preds = %111
  br label %116

116:                                              ; preds = %156, %115
  %117 = load %struct.wilc*, %struct.wilc** %5, align 8
  %118 = getelementptr inbounds %struct.wilc, %struct.wilc* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @WID_NIL, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %116
  br label %157

129:                                              ; preds = %116
  %130 = load %struct.wilc*, %struct.wilc** %5, align 8
  %131 = getelementptr inbounds %struct.wilc, %struct.wilc* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = icmp eq i64 %138, %140
  br i1 %141, label %142, label %153

142:                                              ; preds = %129
  %143 = load i32*, i32** %7, align 8
  %144 = load %struct.wilc*, %struct.wilc** %5, align 8
  %145 = getelementptr inbounds %struct.wilc, %struct.wilc* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = call i32 @memcpy(i32* %143, i32* %151, i32 4)
  store i32 4, i32* %11, align 4
  br label %157

153:                                              ; preds = %129
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %156

156:                                              ; preds = %153
  br i1 true, label %116, label %157

157:                                              ; preds = %156, %142, %128
  br label %219

158:                                              ; preds = %111
  %159 = load i64, i64* %9, align 8
  %160 = load i64, i64* @CFG_STR_CMD, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %218

162:                                              ; preds = %158
  br label %163

163:                                              ; preds = %216, %162
  %164 = load %struct.wilc*, %struct.wilc** %5, align 8
  %165 = getelementptr inbounds %struct.wilc, %struct.wilc* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %12, align 8
  %173 = load i64, i64* %12, align 8
  %174 = load i64, i64* @WID_NIL, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %163
  br label %217

177:                                              ; preds = %163
  %178 = load i64, i64* %12, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = icmp eq i64 %178, %180
  br i1 %181, label %182, label %213

182:                                              ; preds = %177
  %183 = load %struct.wilc*, %struct.wilc** %5, align 8
  %184 = getelementptr inbounds %struct.wilc, %struct.wilc* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @get_unaligned_le16(i32* %191)
  store i32 %192, i32* %13, align 4
  %193 = load i64, i64* %8, align 8
  %194 = load i32, i32* %13, align 4
  %195 = sext i32 %194 to i64
  %196 = icmp sge i64 %193, %195
  br i1 %196, label %197, label %212

197:                                              ; preds = %182
  %198 = load i32*, i32** %7, align 8
  %199 = load %struct.wilc*, %struct.wilc** %5, align 8
  %200 = getelementptr inbounds %struct.wilc, %struct.wilc* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 2
  %209 = load i32, i32* %13, align 4
  %210 = call i32 @memcpy(i32* %198, i32* %208, i32 %209)
  %211 = load i32, i32* %13, align 4
  store i32 %211, i32* %11, align 4
  br label %212

212:                                              ; preds = %197, %182
  br label %217

213:                                              ; preds = %177
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %10, align 4
  br label %216

216:                                              ; preds = %213
  br i1 true, label %163, label %217

217:                                              ; preds = %216, %212, %176
  br label %218

218:                                              ; preds = %217, %158
  br label %219

219:                                              ; preds = %218, %157
  br label %220

220:                                              ; preds = %219, %110
  br label %221

221:                                              ; preds = %220, %63
  %222 = load i32, i32* %11, align 4
  ret i32 %222
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
