; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_efuse.c_Efuse_PgPacketRead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_efuse.c_Efuse_PgPacketRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@PG_STATE_HEADER = common dso_local global i32 0, align 4
@EFUSE_MAX_SECTION_88E = common dso_local global i32 0, align 4
@PGPKT_DATA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error, All words disabled\0A\00", align 1
@PG_STATE_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Efuse_PgPacketRead(%struct.adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [8 x i32], align 16
  %18 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %19 = load i32, i32* @PG_STATE_HEADER, align 4
  store i32 %19, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %218

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @EFUSE_MAX_SECTION_88E, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %218

28:                                               ; preds = %23
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @PGPKT_DATA_SIZE, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 4, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memset(i32* %29, i32 255, i32 %33)
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 0
  %36 = load i32, i32* @PGPKT_DATA_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memset(i32* %35, i32 255, i32 %39)
  br label %41

41:                                               ; preds = %175, %87, %28
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i64, i64* %13, align 8
  %46 = call i64 @AVAILABLE_EFUSE_ADDR(i64 %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i1 [ false, %41 ], [ %47, %44 ]
  br i1 %49, label %50, label %176

50:                                               ; preds = %48
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @PG_STATE_HEADER, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %157

55:                                               ; preds = %50
  %56 = load %struct.adapter*, %struct.adapter** %5, align 8
  %57 = load i64, i64* %13, align 8
  %58 = call i64 @efuse_OneByteRead(%struct.adapter* %56, i64 %57, i32* %11)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %155

60:                                               ; preds = %55
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 255
  br i1 %62, label %63, label %155

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = call i64 @EXT_HEADER(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %63
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %18, align 4
  %69 = load i64, i64* %13, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %13, align 8
  %71 = load %struct.adapter*, %struct.adapter** %5, align 8
  %72 = load i64, i64* %13, align 8
  %73 = call i64 @efuse_OneByteRead(%struct.adapter* %71, i64 %72, i32* %11)
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @ALL_WORDS_DISABLED(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %67
  %78 = load i32, i32* %18, align 4
  %79 = and i32 %78, 224
  %80 = ashr i32 %79, 5
  %81 = load i32, i32* %11, align 4
  %82 = and i32 %81, 240
  %83 = ashr i32 %82, 1
  %84 = or i32 %80, %83
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %11, align 4
  %86 = and i32 %85, 15
  store i32 %86, i32* %15, align 4
  br label %91

87:                                               ; preds = %67
  %88 = call i32 @DBG_88E(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %89 = load i64, i64* %13, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %13, align 8
  br label %41

91:                                               ; preds = %77
  br label %98

92:                                               ; preds = %63
  %93 = load i32, i32* %11, align 4
  %94 = ashr i32 %93, 4
  %95 = and i32 %94, 15
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %11, align 4
  %97 = and i32 %96, 15
  store i32 %97, i32* %15, align 4
  br label %98

98:                                               ; preds = %92, %91
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @Efuse_CalculateWordCnts(i32 %99)
  store i32 %100, i32* %12, align 4
  store i32 1, i32* %10, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %146

104:                                              ; preds = %98
  store i32 0, i32* %16, align 4
  br label %105

105:                                              ; preds = %129, %104
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %12, align 4
  %108 = mul nsw i32 %107, 2
  %109 = icmp slt i32 %106, %108
  br i1 %109, label %110, label %132

110:                                              ; preds = %105
  %111 = load %struct.adapter*, %struct.adapter** %5, align 8
  %112 = load i64, i64* %13, align 8
  %113 = add nsw i64 %112, 1
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %113, %115
  %117 = call i64 @efuse_OneByteRead(%struct.adapter* %111, i64 %116, i32* %11)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %110
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 %122
  store i32 %120, i32* %123, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 255
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  store i32 0, i32* %10, align 4
  br label %127

127:                                              ; preds = %126, %119
  br label %128

128:                                              ; preds = %127, %110
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %16, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %16, align 4
  br label %105

132:                                              ; preds = %105
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* @PG_STATE_DATA, align 4
  store i32 %136, i32* %8, align 4
  br label %145

137:                                              ; preds = %132
  %138 = load i64, i64* %13, align 8
  %139 = load i32, i32* %12, align 4
  %140 = mul nsw i32 %139, 2
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %138, %141
  %143 = add nsw i64 %142, 1
  store i64 %143, i64* %13, align 8
  %144 = load i32, i32* @PG_STATE_HEADER, align 4
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %137, %135
  br label %154

146:                                              ; preds = %98
  %147 = load i64, i64* %13, align 8
  %148 = load i32, i32* %12, align 4
  %149 = mul nsw i32 %148, 2
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %147, %150
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %13, align 8
  %153 = load i32, i32* @PG_STATE_HEADER, align 4
  store i32 %153, i32* %8, align 4
  br label %154

154:                                              ; preds = %146, %145
  br label %156

155:                                              ; preds = %60, %55
  store i32 0, i32* %9, align 4
  br label %156

156:                                              ; preds = %155, %154
  br label %175

157:                                              ; preds = %50
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @PG_STATE_DATA, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %157
  %163 = load i32, i32* %15, align 4
  %164 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 0
  %165 = load i32*, i32** %7, align 8
  %166 = call i32 @efuse_WordEnableDataRead(i32 %163, i32* %164, i32* %165)
  %167 = load i64, i64* %13, align 8
  %168 = load i32, i32* %12, align 4
  %169 = mul nsw i32 %168, 2
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %167, %170
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %13, align 8
  %173 = load i32, i32* @PG_STATE_HEADER, align 4
  store i32 %173, i32* %8, align 4
  br label %174

174:                                              ; preds = %162, %157
  br label %175

175:                                              ; preds = %174, %156
  br label %41

176:                                              ; preds = %48
  %177 = load i32*, i32** %7, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 255
  br i1 %180, label %181, label %217

181:                                              ; preds = %176
  %182 = load i32*, i32** %7, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 255
  br i1 %185, label %186, label %217

186:                                              ; preds = %181
  %187 = load i32*, i32** %7, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 2
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 255
  br i1 %190, label %191, label %217

191:                                              ; preds = %186
  %192 = load i32*, i32** %7, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 3
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 255
  br i1 %195, label %196, label %217

196:                                              ; preds = %191
  %197 = load i32*, i32** %7, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 4
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %199, 255
  br i1 %200, label %201, label %217

201:                                              ; preds = %196
  %202 = load i32*, i32** %7, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 5
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, 255
  br i1 %205, label %206, label %217

206:                                              ; preds = %201
  %207 = load i32*, i32** %7, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 6
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 255
  br i1 %210, label %211, label %217

211:                                              ; preds = %206
  %212 = load i32*, i32** %7, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 7
  %214 = load i32, i32* %213, align 4
  %215 = icmp eq i32 %214, 255
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  store i32 0, i32* %4, align 4
  br label %218

217:                                              ; preds = %211, %206, %201, %196, %191, %186, %181, %176
  store i32 1, i32* %4, align 4
  br label %218

218:                                              ; preds = %217, %216, %27, %22
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @AVAILABLE_EFUSE_ADDR(i64) #1

declare dso_local i64 @efuse_OneByteRead(%struct.adapter*, i64, i32*) #1

declare dso_local i64 @EXT_HEADER(i32) #1

declare dso_local i32 @ALL_WORDS_DISABLED(i32) #1

declare dso_local i32 @DBG_88E(i8*) #1

declare dso_local i32 @Efuse_CalculateWordCnts(i32) #1

declare dso_local i32 @efuse_WordEnableDataRead(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
