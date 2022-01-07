; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_configure_termination.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_configure_termination.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32 }
%struct.seeprom_descriptor = type { i32, i32 }

@CFAUTOTERM = common dso_local global i32 0, align 4
@AHC_NEW_TERMCTL = common dso_local global i32 0, align 4
@CFSEAUTOTERM = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"%s: Manual SE Termination\0A\00", align 1
@CFSELOWTERM = common dso_local global i32 0, align 4
@CFSEHIGHTERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: Manual LVD Termination\0A\00", align 1
@CFSTERM = common dso_local global i32 0, align 4
@CFWSTERM = common dso_local global i32 0, align 4
@AHC_SPIOCAP = common dso_local global i32 0, align 4
@AHC_WIDE = common dso_local global i32 0, align 4
@AHC_ULTRA2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"%s: internal 50 cable %s present\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c", internal 68 cable %s present\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"\0A%s: external cable %s present\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"%s: BIOS eeprom %s present\0A\00", align 1
@AHC_INT50_SPEEDFLEX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [94 x i8] c"%s: Illegal cable configuration!!. Only two connectors on the adapter may be used at a time!\0A\00", align 1
@BRDDAT6 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"%s: 68 pin termination Enabled\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"%s: %sHigh byte termination Enabled\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Secondary \00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BRDDAT5 = common dso_local global i32 0, align 4
@STPWEN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [32 x i8] c"%s: 50 pin termination Enabled\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"%s: %sLow byte termination Enabled\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"%s: Primary Low Byte termination Enabled\0A\00", align 1
@SXFRCTL1 = common dso_local global i32 0, align 4
@BRDDAT4 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [43 x i8] c"%s: Primary High Byte termination Enabled\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Primary \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, %struct.seeprom_descriptor*, i32, i32*)* @configure_termination to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_termination(%struct.ahc_softc* %0, %struct.seeprom_descriptor* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ahc_softc*, align 8
  %6 = alloca %struct.seeprom_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %5, align 8
  store %struct.seeprom_descriptor* %1, %struct.seeprom_descriptor** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %19 = load i32*, i32** %8, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %21 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %22 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %25 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %23, %26
  %28 = call i32 @SEEPROM_OUTB(%struct.seeprom_descriptor* %20, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @CFAUTOTERM, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %4
  %34 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %35 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AHC_NEW_TERMCTL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %343

40:                                               ; preds = %33, %4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %41 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %42 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AHC_NEW_TERMCTL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %92

47:                                               ; preds = %40
  %48 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %49 = call i32 @ahc_new_term_detect(%struct.ahc_softc* %48, i32* %14, i32* %15, i32* %16, i32* %17, i32* %13)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @CFSEAUTOTERM, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %47
  %55 = load i64, i64* @bootverbose, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %59 = call i32 @ahc_name(%struct.ahc_softc* %58)
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %57, %54
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @CFSELOWTERM, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @CFSEHIGHTERM, align 4
  %69 = and i32 %67, %68
  store i32 %69, i32* %15, align 4
  br label %70

70:                                               ; preds = %63, %47
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @CFAUTOTERM, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %70
  %76 = load i64, i64* @bootverbose, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %80 = call i32 @ahc_name(%struct.ahc_softc* %79)
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %78, %75
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @CFSTERM, align 4
  %87 = and i32 %85, %86
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @CFWSTERM, align 4
  %90 = and i32 %88, %89
  store i32 %90, i32* %17, align 4
  br label %91

91:                                               ; preds = %84, %70
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %106

92:                                               ; preds = %40
  %93 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %94 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @AHC_SPIOCAP, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %101 = call i32 @aic785X_cable_detect(%struct.ahc_softc* %100, i32* %10, i32* %12, i32* %13)
  store i32 0, i32* %11, align 4
  br label %105

102:                                              ; preds = %92
  %103 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %104 = call i32 @aic787X_cable_detect(%struct.ahc_softc* %103, i32* %10, i32* %11, i32* %12, i32* %13)
  br label %105

105:                                              ; preds = %102, %99
  br label %106

106:                                              ; preds = %105, %91
  %107 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %108 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @AHC_WIDE, align 4
  %111 = and i32 %109, %110
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %113, %106
  %115 = load i64, i64* @bootverbose, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %156

117:                                              ; preds = %114
  %118 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %119 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @AHC_ULTRA2, align 4
  %122 = and i32 %120, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %156

124:                                              ; preds = %117
  %125 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %126 = call i32 @ahc_name(%struct.ahc_softc* %125)
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i8*
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %133 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %128, i8* %132)
  %134 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %135 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @AHC_WIDE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %124
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %145 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %144)
  br label %146

146:                                              ; preds = %140, %124
  %147 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %148 = call i32 @ahc_name(%struct.ahc_softc* %147)
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = load i32, i32* %12, align 4
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %155 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %150, i8* %154)
  br label %156

156:                                              ; preds = %146, %117, %114
  %157 = load i64, i64* @bootverbose, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %156
  %160 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %161 = call i32 @ahc_name(%struct.ahc_softc* %160)
  %162 = sext i32 %161 to i64
  %163 = inttoptr i64 %162 to i8*
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %168 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %163, i8* %167)
  br label %169

169:                                              ; preds = %159, %156
  %170 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %171 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @AHC_INT50_SPEEDFLEX, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  store i32 0, i32* %10, align 4
  br label %177

177:                                              ; preds = %176, %169
  %178 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %179 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @AHC_ULTRA2, align 4
  %182 = and i32 %180, %181
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %199

184:                                              ; preds = %177
  %185 = load i32, i32* %10, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %199

187:                                              ; preds = %184
  %188 = load i32, i32* %11, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %187
  %191 = load i32, i32* %12, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %190
  %194 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %195 = call i32 @ahc_name(%struct.ahc_softc* %194)
  %196 = sext i32 %195 to i64
  %197 = inttoptr i64 %196 to i8*
  %198 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.8, i64 0, i64 0), i8* %197)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %199

199:                                              ; preds = %193, %190, %187, %184, %177
  %200 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %201 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @AHC_WIDE, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %246

206:                                              ; preds = %199
  %207 = load i32, i32* %12, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %215, label %209

209:                                              ; preds = %206
  %210 = load i32, i32* %11, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %209
  %213 = load i32, i32* %15, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %246

215:                                              ; preds = %212, %209, %206
  %216 = load i32, i32* @BRDDAT6, align 4
  %217 = load i32, i32* %9, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %9, align 4
  %219 = load i64, i64* @bootverbose, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %245

221:                                              ; preds = %215
  %222 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %223 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @AHC_INT50_SPEEDFLEX, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %221
  %229 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %230 = call i32 @ahc_name(%struct.ahc_softc* %229)
  %231 = sext i32 %230 to i64
  %232 = inttoptr i64 %231 to i8*
  %233 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %232)
  br label %244

234:                                              ; preds = %221
  %235 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %236 = call i32 @ahc_name(%struct.ahc_softc* %235)
  %237 = sext i32 %236 to i64
  %238 = inttoptr i64 %237 to i8*
  %239 = load i32, i32* %15, align 4
  %240 = icmp ne i32 %239, 0
  %241 = zext i1 %240 to i64
  %242 = select i1 %240, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %243 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %238, i8* %242)
  br label %244

244:                                              ; preds = %234, %228
  br label %245

245:                                              ; preds = %244, %215
  br label %246

246:                                              ; preds = %245, %212, %199
  %247 = load i32, i32* %10, align 4
  %248 = load i32, i32* %11, align 4
  %249 = add nsw i32 %247, %248
  %250 = load i32, i32* %12, align 4
  %251 = add nsw i32 %249, %250
  store i32 %251, i32* %18, align 4
  %252 = load i32, i32* %18, align 4
  %253 = icmp slt i32 %252, 2
  br i1 %253, label %257, label %254

254:                                              ; preds = %246
  %255 = load i32, i32* %14, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %301

257:                                              ; preds = %254, %246
  %258 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %259 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @AHC_ULTRA2, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %257
  %265 = load i32, i32* @BRDDAT5, align 4
  %266 = load i32, i32* %9, align 4
  %267 = or i32 %266, %265
  store i32 %267, i32* %9, align 4
  br label %273

268:                                              ; preds = %257
  %269 = load i32, i32* @STPWEN, align 4
  %270 = load i32*, i32** %8, align 8
  %271 = load i32, i32* %270, align 4
  %272 = or i32 %271, %269
  store i32 %272, i32* %270, align 4
  br label %273

273:                                              ; preds = %268, %264
  %274 = load i64, i64* @bootverbose, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %300

276:                                              ; preds = %273
  %277 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %278 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @AHC_INT50_SPEEDFLEX, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %276
  %284 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %285 = call i32 @ahc_name(%struct.ahc_softc* %284)
  %286 = sext i32 %285 to i64
  %287 = inttoptr i64 %286 to i8*
  %288 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i8* %287)
  br label %299

289:                                              ; preds = %276
  %290 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %291 = call i32 @ahc_name(%struct.ahc_softc* %290)
  %292 = sext i32 %291 to i64
  %293 = inttoptr i64 %292 to i8*
  %294 = load i32, i32* %14, align 4
  %295 = icmp ne i32 %294, 0
  %296 = zext i1 %295 to i64
  %297 = select i1 %295, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %298 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i8* %293, i8* %297)
  br label %299

299:                                              ; preds = %289, %283
  br label %300

300:                                              ; preds = %299, %273
  br label %301

301:                                              ; preds = %300, %254
  %302 = load i32, i32* %16, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %318

304:                                              ; preds = %301
  %305 = load i32, i32* @STPWEN, align 4
  %306 = load i32*, i32** %8, align 8
  %307 = load i32, i32* %306, align 4
  %308 = or i32 %307, %305
  store i32 %308, i32* %306, align 4
  %309 = load i64, i64* @bootverbose, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %317

311:                                              ; preds = %304
  %312 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %313 = call i32 @ahc_name(%struct.ahc_softc* %312)
  %314 = sext i32 %313 to i64
  %315 = inttoptr i64 %314 to i8*
  %316 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i8* %315)
  br label %317

317:                                              ; preds = %311, %304
  br label %318

318:                                              ; preds = %317, %301
  %319 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %320 = load i32, i32* @SXFRCTL1, align 4
  %321 = load i32*, i32** %8, align 8
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @ahc_outb(%struct.ahc_softc* %319, i32 %320, i32 %322)
  %324 = load i32, i32* %17, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %339

326:                                              ; preds = %318
  %327 = load i32, i32* @BRDDAT4, align 4
  %328 = load i32, i32* %9, align 4
  %329 = or i32 %328, %327
  store i32 %329, i32* %9, align 4
  %330 = load i64, i64* @bootverbose, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %338

332:                                              ; preds = %326
  %333 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %334 = call i32 @ahc_name(%struct.ahc_softc* %333)
  %335 = sext i32 %334 to i64
  %336 = inttoptr i64 %335 to i8*
  %337 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0), i8* %336)
  br label %338

338:                                              ; preds = %332, %326
  br label %339

339:                                              ; preds = %338, %318
  %340 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %341 = load i32, i32* %9, align 4
  %342 = call i32 @write_brdctl(%struct.ahc_softc* %340, i32 %341)
  br label %420

343:                                              ; preds = %33
  %344 = load i32, i32* %7, align 4
  %345 = load i32, i32* @CFSTERM, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %370

348:                                              ; preds = %343
  %349 = load i32, i32* @STPWEN, align 4
  %350 = load i32*, i32** %8, align 8
  %351 = load i32, i32* %350, align 4
  %352 = or i32 %351, %349
  store i32 %352, i32* %350, align 4
  %353 = load i64, i64* @bootverbose, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %369

355:                                              ; preds = %348
  %356 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %357 = call i32 @ahc_name(%struct.ahc_softc* %356)
  %358 = sext i32 %357 to i64
  %359 = inttoptr i64 %358 to i8*
  %360 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %361 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @AHC_ULTRA2, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  %366 = zext i1 %365 to i64
  %367 = select i1 %365, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %368 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i8* %359, i8* %367)
  br label %369

369:                                              ; preds = %355, %348
  br label %370

370:                                              ; preds = %369, %343
  %371 = load i32, i32* %7, align 4
  %372 = load i32, i32* @CFWSTERM, align 4
  %373 = and i32 %371, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %403

375:                                              ; preds = %370
  %376 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %377 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @AHC_WIDE, align 4
  %380 = and i32 %378, %379
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %403

382:                                              ; preds = %375
  %383 = load i32, i32* @BRDDAT6, align 4
  %384 = load i32, i32* %9, align 4
  %385 = or i32 %384, %383
  store i32 %385, i32* %9, align 4
  %386 = load i64, i64* @bootverbose, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %402

388:                                              ; preds = %382
  %389 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %390 = call i32 @ahc_name(%struct.ahc_softc* %389)
  %391 = sext i32 %390 to i64
  %392 = inttoptr i64 %391 to i8*
  %393 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %394 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* @AHC_ULTRA2, align 4
  %397 = and i32 %395, %396
  %398 = icmp ne i32 %397, 0
  %399 = zext i1 %398 to i64
  %400 = select i1 %398, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %401 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %392, i8* %400)
  br label %402

402:                                              ; preds = %388, %382
  br label %403

403:                                              ; preds = %402, %375, %370
  %404 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %405 = load i32, i32* @SXFRCTL1, align 4
  %406 = load i32*, i32** %8, align 8
  %407 = load i32, i32* %406, align 4
  %408 = call i32 @ahc_outb(%struct.ahc_softc* %404, i32 %405, i32 %407)
  %409 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %410 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 4
  %412 = load i32, i32* @AHC_WIDE, align 4
  %413 = and i32 %411, %412
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %419

415:                                              ; preds = %403
  %416 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %417 = load i32, i32* %9, align 4
  %418 = call i32 @write_brdctl(%struct.ahc_softc* %416, i32 %417)
  br label %419

419:                                              ; preds = %415, %403
  br label %420

420:                                              ; preds = %419, %339
  %421 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %422 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %423 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = call i32 @SEEPROM_OUTB(%struct.seeprom_descriptor* %421, i32 %424)
  ret void
}

declare dso_local i32 @SEEPROM_OUTB(%struct.seeprom_descriptor*, i32) #1

declare dso_local i32 @ahc_new_term_detect(%struct.ahc_softc*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @printk(i8*, i8*, ...) #1

declare dso_local i32 @ahc_name(%struct.ahc_softc*) #1

declare dso_local i32 @aic785X_cable_detect(%struct.ahc_softc*, i32*, i32*, i32*) #1

declare dso_local i32 @aic787X_cable_detect(%struct.ahc_softc*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @write_brdctl(%struct.ahc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
