; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_efuse.c_fix_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_efuse.c_fix_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }
%struct.PGPKT_STRUCT = type { i32, i32, i32* }

@efuse_available_max_size = common dso_local global i64 0, align 8
@PGPKG_MAX_WORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._adapter*, i32, i64)* @fix_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fix_header(%struct._adapter* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.PGPKT_STRUCT, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i8* @GET_EFUSE_OFFSET(i32 %15)
  %17 = ptrtoint i8* %16 to i32
  %18 = getelementptr inbounds %struct.PGPKT_STRUCT, %struct.PGPKT_STRUCT* %8, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i8* @GET_EFUSE_WORD_EN(i32 %19)
  %21 = ptrtoint i8* %20 to i32
  %22 = getelementptr inbounds %struct.PGPKT_STRUCT, %struct.PGPKT_STRUCT* %8, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i64, i64* %7, align 8
  %24 = add nsw i64 %23, 1
  %25 = getelementptr inbounds %struct.PGPKT_STRUCT, %struct.PGPKT_STRUCT* %8, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @calculate_word_cnts(i32 %26)
  %28 = mul nsw i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %24, %29
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @efuse_available_max_size, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %240

35:                                               ; preds = %3
  store i64 0, i64* %12, align 8
  br label %36

36:                                               ; preds = %121, %58, %35
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %122

40:                                               ; preds = %36
  %41 = load %struct._adapter*, %struct._adapter** %5, align 8
  %42 = load i64, i64* %12, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %12, align 8
  %44 = call i64 @efuse_one_byte_read(%struct._adapter* %41, i64 %42, i32* %11)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i32 0, i32* %14, align 4
  br label %122

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  %49 = call i8* @GET_EFUSE_OFFSET(i32 %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i8* @GET_EFUSE_WORD_EN(i32 %51)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %10, align 4
  %54 = getelementptr inbounds %struct.PGPKT_STRUCT, %struct.PGPKT_STRUCT* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %47
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @calculate_word_cnts(i32 %59)
  %61 = mul nsw i32 %60, 2
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %12, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %12, align 8
  br label %36

65:                                               ; preds = %47
  store i32 0, i32* %13, align 4
  br label %66

66:                                               ; preds = %118, %65
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @PGPKG_MAX_WORDS, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %121

70:                                               ; preds = %66
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @BIT(i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %117

76:                                               ; preds = %70
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @BIT(i32 %77)
  %79 = getelementptr inbounds %struct.PGPKT_STRUCT, %struct.PGPKT_STRUCT* %8, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %114

83:                                               ; preds = %76
  %84 = load %struct._adapter*, %struct._adapter** %5, align 8
  %85 = load i64, i64* %12, align 8
  %86 = call i64 @efuse_one_byte_read(%struct._adapter* %84, i64 %85, i32* %11)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load i32, i32* %11, align 4
  %90 = getelementptr inbounds %struct.PGPKT_STRUCT, %struct.PGPKT_STRUCT* %8, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = mul nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32 %89, i32* %95, align 4
  br label %97

96:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %240

97:                                               ; preds = %88
  %98 = load %struct._adapter*, %struct._adapter** %5, align 8
  %99 = load i64, i64* %12, align 8
  %100 = add nsw i64 %99, 1
  %101 = call i64 @efuse_one_byte_read(%struct._adapter* %98, i64 %100, i32* %11)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %97
  %104 = load i32, i32* %11, align 4
  %105 = getelementptr inbounds %struct.PGPKT_STRUCT, %struct.PGPKT_STRUCT* %8, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = mul nsw i32 %107, 2
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  store i32 %104, i32* %111, align 4
  br label %113

112:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %240

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %113, %76
  %115 = load i64, i64* %12, align 8
  %116 = add nsw i64 %115, 2
  store i64 %116, i64* %12, align 8
  br label %117

117:                                              ; preds = %114, %70
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %13, align 4
  br label %66

121:                                              ; preds = %66
  br label %36

122:                                              ; preds = %46, %36
  %123 = load i64, i64* %12, align 8
  %124 = load i64, i64* %7, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %240

127:                                              ; preds = %122
  %128 = load i64, i64* %12, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %130

130:                                              ; preds = %235, %127
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* @PGPKG_MAX_WORDS, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %238

134:                                              ; preds = %130
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @BIT(i32 %135)
  %137 = getelementptr inbounds %struct.PGPKT_STRUCT, %struct.PGPKT_STRUCT* %8, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %136, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %232

141:                                              ; preds = %134
  %142 = load %struct._adapter*, %struct._adapter** %5, align 8
  %143 = load i64, i64* %12, align 8
  %144 = getelementptr inbounds %struct.PGPKT_STRUCT, %struct.PGPKT_STRUCT* %8, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %13, align 4
  %147 = mul nsw i32 %146, 2
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @efuse_one_byte_write(%struct._adapter* %142, i64 %143, i32 %150)
  %152 = load %struct._adapter*, %struct._adapter** %5, align 8
  %153 = load i64, i64* %12, align 8
  %154 = add nsw i64 %153, 1
  %155 = getelementptr inbounds %struct.PGPKT_STRUCT, %struct.PGPKT_STRUCT* %8, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %13, align 4
  %158 = mul nsw i32 %157, 2
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %156, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @efuse_one_byte_write(%struct._adapter* %152, i64 %154, i32 %162)
  %164 = load %struct._adapter*, %struct._adapter** %5, align 8
  %165 = load i64, i64* %12, align 8
  %166 = call i64 @efuse_one_byte_read(%struct._adapter* %164, i64 %165, i32* %11)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %141
  store i32 0, i32* %14, align 4
  br label %195

169:                                              ; preds = %141
  %170 = getelementptr inbounds %struct.PGPKT_STRUCT, %struct.PGPKT_STRUCT* %8, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %13, align 4
  %173 = mul nsw i32 %172, 2
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %11, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %194

179:                                              ; preds = %169
  store i32 0, i32* %14, align 4
  %180 = load i32, i32* %11, align 4
  %181 = icmp eq i32 %180, 255
  br i1 %181, label %182, label %193

182:                                              ; preds = %179
  %183 = load %struct._adapter*, %struct._adapter** %5, align 8
  %184 = load i64, i64* %12, align 8
  %185 = getelementptr inbounds %struct.PGPKT_STRUCT, %struct.PGPKT_STRUCT* %8, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %13, align 4
  %188 = mul nsw i32 %187, 2
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @efuse_one_byte_write(%struct._adapter* %183, i64 %184, i32 %191)
  br label %193

193:                                              ; preds = %182, %179
  br label %194

194:                                              ; preds = %193, %169
  br label %195

195:                                              ; preds = %194, %168
  %196 = load %struct._adapter*, %struct._adapter** %5, align 8
  %197 = load i64, i64* %12, align 8
  %198 = add nsw i64 %197, 1
  %199 = call i64 @efuse_one_byte_read(%struct._adapter* %196, i64 %198, i32* %11)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %195
  store i32 0, i32* %14, align 4
  br label %231

202:                                              ; preds = %195
  %203 = getelementptr inbounds %struct.PGPKT_STRUCT, %struct.PGPKT_STRUCT* %8, i32 0, i32 2
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %13, align 4
  %206 = mul nsw i32 %205, 2
  %207 = add nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %204, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %11, align 4
  %212 = icmp ne i32 %210, %211
  br i1 %212, label %213, label %230

213:                                              ; preds = %202
  store i32 0, i32* %14, align 4
  %214 = load i32, i32* %11, align 4
  %215 = icmp eq i32 %214, 255
  br i1 %215, label %216, label %229

216:                                              ; preds = %213
  %217 = load %struct._adapter*, %struct._adapter** %5, align 8
  %218 = load i64, i64* %12, align 8
  %219 = add nsw i64 %218, 1
  %220 = getelementptr inbounds %struct.PGPKT_STRUCT, %struct.PGPKT_STRUCT* %8, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %13, align 4
  %223 = mul nsw i32 %222, 2
  %224 = add nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %221, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @efuse_one_byte_write(%struct._adapter* %217, i64 %219, i32 %227)
  br label %229

229:                                              ; preds = %216, %213
  br label %230

230:                                              ; preds = %229, %202
  br label %231

231:                                              ; preds = %230, %201
  br label %232

232:                                              ; preds = %231, %134
  %233 = load i64, i64* %12, align 8
  %234 = add nsw i64 %233, 2
  store i64 %234, i64* %12, align 8
  br label %235

235:                                              ; preds = %232
  %236 = load i32, i32* %13, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %13, align 4
  br label %130

238:                                              ; preds = %130
  %239 = load i32, i32* %14, align 4
  store i32 %239, i32* %4, align 4
  br label %240

240:                                              ; preds = %238, %126, %112, %96, %34
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

declare dso_local i8* @GET_EFUSE_OFFSET(i32) #1

declare dso_local i8* @GET_EFUSE_WORD_EN(i32) #1

declare dso_local i32 @calculate_word_cnts(i32) #1

declare dso_local i64 @efuse_one_byte_read(%struct._adapter*, i64, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @efuse_one_byte_write(%struct._adapter*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
