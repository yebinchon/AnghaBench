; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_vgacon.c_vgacon_do_font_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_vgacon.c_vgacon_do_font_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.vc_data* }
%struct.vc_data = type { i32, i32* }
%struct.vgastate = type { i32 }

@vga_video_port_reg = common dso_local global i32 0, align 4
@vga_video_type = common dso_local global i64 0, align 8
@VIDEO_TYPE_EGAM = common dso_local global i64 0, align 8
@colourmap = common dso_local global i32 0, align 4
@blackwmap = common dso_local global i32 0, align 4
@vga_font_is_default = common dso_local global i32 0, align 4
@cmapsz = common dso_local global i32 0, align 4
@vga_lock = common dso_local global i32 0, align 4
@VGA_SEQ_RESET = common dso_local global i32 0, align 4
@VGA_SEQ_PLANE_WRITE = common dso_local global i32 0, align 4
@VGA_SEQ_MEMORY_MODE = common dso_local global i32 0, align 4
@VGA_GFX_PLANE_READ = common dso_local global i32 0, align 4
@VGA_GFX_MODE = common dso_local global i32 0, align 4
@VGA_GFX_MISC = common dso_local global i32 0, align 4
@VGA_SEQ_CHARACTER_MAP = common dso_local global i32 0, align 4
@vga_512_chars = common dso_local global i32 0, align 4
@VGA_ATC_PLANE_ENABLE = common dso_local global i32 0, align 4
@VGA_AR_ENABLE_DISPLAY = common dso_local global i32 0, align 4
@MAX_NR_CONSOLES = common dso_local global i32 0, align 4
@vc_cons = common dso_local global %struct.TYPE_2__* null, align 8
@vga_con = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vgastate*, i8*, i32, i32)* @vgacon_do_font_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgacon_do_font_op(%struct.vgastate* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vgastate*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.vc_data*, align 8
  store %struct.vgastate* %0, %struct.vgastate** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* @vga_video_port_reg, align 4
  %17 = add nsw i32 %16, 6
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %9, align 2
  store i32 0, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %19 = load i64, i64* @vga_video_type, align 8
  %20 = load i64, i64* @VIDEO_TYPE_EGAM, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @colourmap, align 4
  %24 = call i64 @VGA_MAP_MEM(i32 %23, i32 0)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %13, align 8
  store i32 14, i32* %11, align 4
  br label %30

26:                                               ; preds = %4
  %27 = load i32, i32* @blackwmap, align 4
  %28 = call i64 @VGA_MAP_MEM(i32 %27, i32 0)
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %13, align 8
  store i32 10, i32* %11, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* @vga_font_is_default, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %40, %33
  %42 = load i8*, i8** %6, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 14, i32 10
  br label %50

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %44
  %51 = phi i32 [ %48, %44 ], [ 0, %49 ]
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %50, %30
  %53 = load i32, i32* @vga_font_is_default, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @cmapsz, align 4
  %57 = mul nsw i32 4, %56
  %58 = load i8*, i8** %13, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %13, align 8
  br label %61

61:                                               ; preds = %55, %52
  %62 = call i32 @raw_spin_lock_irq(i32* @vga_lock)
  %63 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %64 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @VGA_SEQ_RESET, align 4
  %67 = call i32 @vga_wseq(i32 %65, i32 %66, i32 1)
  %68 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %69 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @VGA_SEQ_PLANE_WRITE, align 4
  %72 = call i32 @vga_wseq(i32 %70, i32 %71, i32 4)
  %73 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %74 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @VGA_SEQ_MEMORY_MODE, align 4
  %77 = call i32 @vga_wseq(i32 %75, i32 %76, i32 7)
  %78 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %79 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @VGA_SEQ_RESET, align 4
  %82 = call i32 @vga_wseq(i32 %80, i32 %81, i32 3)
  %83 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %84 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @VGA_GFX_PLANE_READ, align 4
  %87 = call i32 @vga_wgfx(i32 %85, i32 %86, i32 2)
  %88 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %89 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @VGA_GFX_MODE, align 4
  %92 = call i32 @vga_wgfx(i32 %90, i32 %91, i32 0)
  %93 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %94 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @VGA_GFX_MISC, align 4
  %97 = call i32 @vga_wgfx(i32 %95, i32 %96, i32 0)
  %98 = call i32 @raw_spin_unlock_irq(i32* @vga_lock)
  %99 = load i8*, i8** %6, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %203

101:                                              ; preds = %61
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %101
  store i32 0, i32* %12, align 4
  br label %105

105:                                              ; preds = %121, %104
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @cmapsz, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %124

109:                                              ; preds = %105
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = load i8*, i8** %13, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = call i32 @vga_writeb(i8 signext %114, i8* %118)
  %120 = call i32 (...) @cond_resched()
  br label %121

121:                                              ; preds = %109
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %105

124:                                              ; preds = %105
  br label %145

125:                                              ; preds = %101
  store i32 0, i32* %12, align 4
  br label %126

126:                                              ; preds = %141, %125
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @cmapsz, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %126
  %131 = load i8*, i8** %13, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = call signext i8 @vga_readb(i8* %134)
  %136 = load i8*, i8** %6, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  store i8 %135, i8* %139, align 1
  %140 = call i32 (...) @cond_resched()
  br label %141

141:                                              ; preds = %130
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  br label %126

144:                                              ; preds = %126
  br label %145

145:                                              ; preds = %144, %124
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %202

148:                                              ; preds = %145
  %149 = load i32, i32* @cmapsz, align 4
  %150 = mul nsw i32 2, %149
  %151 = load i8*, i8** %13, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  store i8* %153, i8** %13, align 8
  %154 = load i32, i32* @cmapsz, align 4
  %155 = load i8*, i8** %6, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i8, i8* %155, i64 %156
  store i8* %157, i8** %6, align 8
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %181

160:                                              ; preds = %148
  store i32 0, i32* %12, align 4
  br label %161

161:                                              ; preds = %177, %160
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* @cmapsz, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %180

165:                                              ; preds = %161
  %166 = load i8*, i8** %6, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = load i8*, i8** %13, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = call i32 @vga_writeb(i8 signext %170, i8* %174)
  %176 = call i32 (...) @cond_resched()
  br label %177

177:                                              ; preds = %165
  %178 = load i32, i32* %12, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %12, align 4
  br label %161

180:                                              ; preds = %161
  br label %201

181:                                              ; preds = %148
  store i32 0, i32* %12, align 4
  br label %182

182:                                              ; preds = %197, %181
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* @cmapsz, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %200

186:                                              ; preds = %182
  %187 = load i8*, i8** %13, align 8
  %188 = load i32, i32* %12, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = call signext i8 @vga_readb(i8* %190)
  %192 = load i8*, i8** %6, align 8
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  store i8 %191, i8* %195, align 1
  %196 = call i32 (...) @cond_resched()
  br label %197

197:                                              ; preds = %186
  %198 = load i32, i32* %12, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %12, align 4
  br label %182

200:                                              ; preds = %182
  br label %201

201:                                              ; preds = %200, %180
  br label %202

202:                                              ; preds = %201, %145
  br label %203

203:                                              ; preds = %202, %61
  %204 = call i32 @raw_spin_lock_irq(i32* @vga_lock)
  %205 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %206 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @VGA_SEQ_RESET, align 4
  %209 = call i32 @vga_wseq(i32 %207, i32 %208, i32 1)
  %210 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %211 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @VGA_SEQ_PLANE_WRITE, align 4
  %214 = call i32 @vga_wseq(i32 %212, i32 %213, i32 3)
  %215 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %216 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @VGA_SEQ_MEMORY_MODE, align 4
  %219 = call i32 @vga_wseq(i32 %217, i32 %218, i32 3)
  %220 = load i32, i32* %7, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %203
  %223 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %224 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @VGA_SEQ_CHARACTER_MAP, align 4
  %227 = load i32, i32* %10, align 4
  %228 = call i32 @vga_wseq(i32 %225, i32 %226, i32 %227)
  br label %229

229:                                              ; preds = %222, %203
  %230 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %231 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @VGA_SEQ_RESET, align 4
  %234 = call i32 @vga_wseq(i32 %232, i32 %233, i32 3)
  %235 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %236 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @VGA_GFX_PLANE_READ, align 4
  %239 = call i32 @vga_wgfx(i32 %237, i32 %238, i32 0)
  %240 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %241 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @VGA_GFX_MODE, align 4
  %244 = call i32 @vga_wgfx(i32 %242, i32 %243, i32 16)
  %245 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %246 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @VGA_GFX_MISC, align 4
  %249 = load i32, i32* %11, align 4
  %250 = call i32 @vga_wgfx(i32 %247, i32 %248, i32 %249)
  %251 = load i32, i32* %7, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %277

253:                                              ; preds = %229
  %254 = load i32, i32* %8, align 4
  %255 = load i32, i32* @vga_512_chars, align 4
  %256 = icmp ne i32 %254, %255
  br i1 %256, label %257, label %277

257:                                              ; preds = %253
  %258 = load i32, i32* %8, align 4
  store i32 %258, i32* @vga_512_chars, align 4
  %259 = load i16, i16* %9, align 2
  %260 = call i32 @inb_p(i16 zeroext %259)
  %261 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %262 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @VGA_ATC_PLANE_ENABLE, align 4
  %265 = load i32, i32* %8, align 4
  %266 = icmp ne i32 %265, 0
  %267 = zext i1 %266 to i64
  %268 = select i1 %266, i32 7, i32 15
  %269 = call i32 @vga_wattr(i32 %263, i32 %264, i32 %268)
  %270 = load i16, i16* %9, align 2
  %271 = call i32 @inb_p(i16 zeroext %270)
  %272 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %273 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @VGA_AR_ENABLE_DISPLAY, align 4
  %276 = call i32 @vga_wattr(i32 %274, i32 %275, i32 0)
  store i32 1, i32* %14, align 4
  br label %277

277:                                              ; preds = %257, %253, %229
  %278 = call i32 @raw_spin_unlock_irq(i32* @vga_lock)
  %279 = load i32, i32* %14, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %316

281:                                              ; preds = %277
  store i32 0, i32* %12, align 4
  br label %282

282:                                              ; preds = %312, %281
  %283 = load i32, i32* %12, align 4
  %284 = load i32, i32* @MAX_NR_CONSOLES, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %315

286:                                              ; preds = %282
  %287 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vc_cons, align 8
  %288 = load i32, i32* %12, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %290, i32 0, i32 0
  %292 = load %struct.vc_data*, %struct.vc_data** %291, align 8
  store %struct.vc_data* %292, %struct.vc_data** %15, align 8
  %293 = load %struct.vc_data*, %struct.vc_data** %15, align 8
  %294 = icmp ne %struct.vc_data* %293, null
  br i1 %294, label %295, label %311

295:                                              ; preds = %286
  %296 = load %struct.vc_data*, %struct.vc_data** %15, align 8
  %297 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %296, i32 0, i32 1
  %298 = load i32*, i32** %297, align 8
  %299 = icmp eq i32* %298, @vga_con
  br i1 %299, label %300, label %311

300:                                              ; preds = %295
  %301 = load %struct.vc_data*, %struct.vc_data** %15, align 8
  %302 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %301, i32 0, i32 0
  store i32 0, i32* %302, align 8
  %303 = load %struct.vc_data*, %struct.vc_data** %15, align 8
  %304 = call i32 @clear_buffer_attributes(%struct.vc_data* %303)
  %305 = load i32, i32* %8, align 4
  %306 = icmp ne i32 %305, 0
  %307 = zext i1 %306 to i64
  %308 = select i1 %306, i32 2048, i32 0
  %309 = load %struct.vc_data*, %struct.vc_data** %15, align 8
  %310 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %309, i32 0, i32 0
  store i32 %308, i32* %310, align 8
  br label %311

311:                                              ; preds = %300, %295, %286
  br label %312

312:                                              ; preds = %311
  %313 = load i32, i32* %12, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %12, align 4
  br label %282

315:                                              ; preds = %282
  br label %316

316:                                              ; preds = %315, %277
  ret i32 0
}

declare dso_local i64 @VGA_MAP_MEM(i32, i32) #1

declare dso_local i32 @raw_spin_lock_irq(i32*) #1

declare dso_local i32 @vga_wseq(i32, i32, i32) #1

declare dso_local i32 @vga_wgfx(i32, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irq(i32*) #1

declare dso_local i32 @vga_writeb(i8 signext, i8*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local signext i8 @vga_readb(i8*) #1

declare dso_local i32 @inb_p(i16 zeroext) #1

declare dso_local i32 @vga_wattr(i32, i32, i32) #1

declare dso_local i32 @clear_buffer_attributes(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
