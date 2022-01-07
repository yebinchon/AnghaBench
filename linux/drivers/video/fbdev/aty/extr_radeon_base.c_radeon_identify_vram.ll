; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_base.c_radeon_identify_vram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_base.c_radeon_identify_vram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeonfb_info = type { i64, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@CHIP_FAMILY_RS100 = common dso_local global i64 0, align 8
@CHIP_FAMILY_RS200 = common dso_local global i64 0, align 8
@CHIP_FAMILY_RS300 = common dso_local global i64 0, align 8
@CHIP_FAMILY_RC410 = common dso_local global i64 0, align 8
@CHIP_FAMILY_RS400 = common dso_local global i64 0, align 8
@CHIP_FAMILY_RS480 = common dso_local global i64 0, align 8
@NB_TOM = common dso_local global i32 0, align 4
@MC_FB_LOCATION = common dso_local global i32 0, align 4
@DISPLAY_BASE_ADDR = common dso_local global i32 0, align 4
@CRTC2_DISPLAY_BASE_ADDR = common dso_local global i32 0, align 4
@OV0_BASE_ADDR = common dso_local global i32 0, align 4
@GRPH2_BUFFER_CNTL = common dso_local global i32 0, align 4
@CRTC_MORE_CNTL = common dso_local global i32 0, align 4
@CRTC_H_CUTOFF_ACTIVE_EN = common dso_local global i32 0, align 4
@CNFG_MEMSIZE = common dso_local global i32 0, align 4
@CNFG_MEMSIZE_MASK = common dso_local global i32 0, align 4
@CHIP_FAMILY_R300 = common dso_local global i64 0, align 8
@MEM_SDRAM_MODE_REG = common dso_local global i32 0, align 4
@MEM_CNTL = common dso_local global i32 0, align 4
@R300_MEM_NUM_CHANNELS_MASK = common dso_local global i32 0, align 4
@CHIP_FAMILY_RV100 = common dso_local global i64 0, align 8
@RV100_MEM_HALF_MODE = common dso_local global i32 0, align 4
@MEM_NUM_CHANNELS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"radeonfb (%s): Found %ldk of %s %d bits wide videoram\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"DDR\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"SDRAM\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeonfb_info*)* @radeon_identify_vram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_identify_vram(%struct.radeonfb_info* %0) #0 {
  %2 = alloca %struct.radeonfb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.radeonfb_info* %0, %struct.radeonfb_info** %2, align 8
  %5 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %6 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CHIP_FAMILY_RS100, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %40, label %10

10:                                               ; preds = %1
  %11 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %12 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CHIP_FAMILY_RS200, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %40, label %16

16:                                               ; preds = %10
  %17 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %18 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CHIP_FAMILY_RS300, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %40, label %22

22:                                               ; preds = %16
  %23 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %24 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CHIP_FAMILY_RC410, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  %29 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %30 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CHIP_FAMILY_RS400, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %36 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CHIP_FAMILY_RS480, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %93

40:                                               ; preds = %34, %28, %22, %16, %10, %1
  %41 = load i32, i32* @NB_TOM, align 4
  %42 = call i32 @INREG(i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = ashr i32 %43, 16
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, 65535
  %47 = sub nsw i32 %44, %46
  %48 = add nsw i32 %47, 1
  %49 = shl i32 %48, 6
  %50 = mul nsw i32 %49, 1024
  store i32 %50, i32* %3, align 4
  %51 = call i32 @radeon_fifo_wait(i32 6)
  %52 = load i32, i32* @MC_FB_LOCATION, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @OUTREG(i32 %52, i32 %53)
  %55 = load i32, i32* @DISPLAY_BASE_ADDR, align 4
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, 65535
  %58 = shl i32 %57, 16
  %59 = call i32 @OUTREG(i32 %55, i32 %58)
  %60 = load i32, i32* @CRTC2_DISPLAY_BASE_ADDR, align 4
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, 65535
  %63 = shl i32 %62, 16
  %64 = call i32 @OUTREG(i32 %60, i32 %63)
  %65 = load i32, i32* @OV0_BASE_ADDR, align 4
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, 65535
  %68 = shl i32 %67, 16
  %69 = call i32 @OUTREG(i32 %65, i32 %68)
  %70 = load i32, i32* @GRPH2_BUFFER_CNTL, align 4
  %71 = load i32, i32* @GRPH2_BUFFER_CNTL, align 4
  %72 = call i32 @INREG(i32 %71)
  %73 = and i32 %72, -8323073
  %74 = call i32 @OUTREG(i32 %70, i32 %73)
  %75 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %76 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CHIP_FAMILY_RS100, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %40
  %81 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %82 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CHIP_FAMILY_RS200, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80, %40
  %87 = load i32, i32* @CRTC_MORE_CNTL, align 4
  %88 = load i32, i32* @CRTC_H_CUTOFF_ACTIVE_EN, align 4
  %89 = load i32, i32* @CRTC_H_CUTOFF_ACTIVE_EN, align 4
  %90 = xor i32 %89, -1
  %91 = call i32 @OUTREGP(i32 %87, i32 %88, i32 %90)
  br label %92

92:                                               ; preds = %86, %80
  br label %96

93:                                               ; preds = %34
  %94 = load i32, i32* @CNFG_MEMSIZE, align 4
  %95 = call i32 @INREG(i32 %94)
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %93, %92
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @CNFG_MEMSIZE_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %101 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %103 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %96
  %107 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %108 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %107, i32 0, i32 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  switch i32 %111, label %115 [
    i32 129, label %112
    i32 128, label %112
  ]

112:                                              ; preds = %106, %106
  %113 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %114 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %113, i32 0, i32 1
  store i32 8388608, i32* %114, align 8
  br label %116

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %112
  br label %117

117:                                              ; preds = %116, %96
  %118 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %119 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %133, label %122

122:                                              ; preds = %117
  %123 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %124 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @CHIP_FAMILY_R300, align 8
  %127 = icmp sge i64 %125, %126
  br i1 %127, label %133, label %128

128:                                              ; preds = %122
  %129 = load i32, i32* @MEM_SDRAM_MODE_REG, align 4
  %130 = call i32 @INREG(i32 %129)
  %131 = and i32 %130, 1073741824
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128, %122, %117
  %134 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %135 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %134, i32 0, i32 2
  store i32 1, i32* %135, align 4
  br label %139

136:                                              ; preds = %128
  %137 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %138 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %137, i32 0, i32 2
  store i32 0, i32* %138, align 4
  br label %139

139:                                              ; preds = %136, %133
  %140 = load i32, i32* @MEM_CNTL, align 4
  %141 = call i32 @INREG(i32 %140)
  store i32 %141, i32* %3, align 4
  %142 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %143 = call i64 @IS_R300_VARIANT(%struct.radeonfb_info* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %163

145:                                              ; preds = %139
  %146 = load i32, i32* @R300_MEM_NUM_CHANNELS_MASK, align 4
  %147 = load i32, i32* %3, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %3, align 4
  %149 = load i32, i32* %3, align 4
  switch i32 %149, label %159 [
    i32 0, label %150
    i32 1, label %153
    i32 2, label %156
  ]

150:                                              ; preds = %145
  %151 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %152 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %151, i32 0, i32 3
  store i32 64, i32* %152, align 8
  br label %162

153:                                              ; preds = %145
  %154 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %155 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %154, i32 0, i32 3
  store i32 128, i32* %155, align 8
  br label %162

156:                                              ; preds = %145
  %157 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %158 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %157, i32 0, i32 3
  store i32 256, i32* %158, align 8
  br label %162

159:                                              ; preds = %145
  %160 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %161 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %160, i32 0, i32 3
  store i32 128, i32* %161, align 8
  br label %162

162:                                              ; preds = %159, %156, %153, %150
  br label %206

163:                                              ; preds = %139
  %164 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %165 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @CHIP_FAMILY_RV100, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %181, label %169

169:                                              ; preds = %163
  %170 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %171 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @CHIP_FAMILY_RS100, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %181, label %175

175:                                              ; preds = %169
  %176 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %177 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @CHIP_FAMILY_RS200, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %193

181:                                              ; preds = %175, %169, %163
  %182 = load i32, i32* %3, align 4
  %183 = load i32, i32* @RV100_MEM_HALF_MODE, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %188 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %187, i32 0, i32 3
  store i32 32, i32* %188, align 8
  br label %192

189:                                              ; preds = %181
  %190 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %191 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %190, i32 0, i32 3
  store i32 64, i32* %191, align 8
  br label %192

192:                                              ; preds = %189, %186
  br label %205

193:                                              ; preds = %175
  %194 = load i32, i32* %3, align 4
  %195 = load i32, i32* @MEM_NUM_CHANNELS_MASK, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  %199 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %200 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %199, i32 0, i32 3
  store i32 128, i32* %200, align 8
  br label %204

201:                                              ; preds = %193
  %202 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %203 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %202, i32 0, i32 3
  store i32 64, i32* %203, align 8
  br label %204

204:                                              ; preds = %201, %198
  br label %205

205:                                              ; preds = %204, %192
  br label %206

206:                                              ; preds = %205, %162
  %207 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %208 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %207, i32 0, i32 4
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = call i32 @pci_name(%struct.TYPE_2__* %209)
  %211 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %212 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = sdiv i32 %213, 1024
  %215 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %216 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  %219 = zext i1 %218 to i64
  %220 = select i1 %218, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %221 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %222 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %210, i32 %214, i8* %220, i32 %223)
  ret void
}

declare dso_local i32 @INREG(i32) #1

declare dso_local i32 @radeon_fifo_wait(i32) #1

declare dso_local i32 @OUTREG(i32, i32) #1

declare dso_local i32 @OUTREGP(i32, i32, i32) #1

declare dso_local i64 @IS_R300_VARIANT(%struct.radeonfb_info*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @pci_name(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
