; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_pci.c_ahd_configure_termination.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_pci.c_ahd_configure_termination.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32 }

@DEVCONFIG = common dso_local global i32 0, align 4
@STPWLEVEL = common dso_local global i32 0, align 4
@AHD_STPWLEVEL_A = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"%s: STPWLEVEL is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@AHD_CURRENT_SENSING = common dso_local global i32 0, align 4
@FLXADDR_ROMSTAT_CURSENSECTL = common dso_local global i32 0, align 4
@FLXADDR_TERMCTL = common dso_local global i32 0, align 4
@CFAUTOTERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"%s: Manual Primary Termination\0A\00", align 1
@FLX_TERMCTL_ENPRILOW = common dso_local global i32 0, align 4
@FLX_TERMCTL_ENPRIHIGH = common dso_local global i32 0, align 4
@CFSTERM = common dso_local global i32 0, align 4
@CFWSTERM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"%s: Primary Auto-Term Sensing failed! Using Defaults.\0A\00", align 1
@CFSEAUTOTERM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"%s: Manual Secondary Termination\0A\00", align 1
@FLX_TERMCTL_ENSECLOW = common dso_local global i32 0, align 4
@FLX_TERMCTL_ENSECHIGH = common dso_local global i32 0, align 4
@CFSELOWTERM = common dso_local global i32 0, align 4
@CFSEHIGHTERM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [57 x i8] c"%s: Secondary Auto-Term Sensing failed! Using Defaults.\0A\00", align 1
@SXFRCTL1 = common dso_local global i32 0, align 4
@STPWEN = common dso_local global i32 0, align 4
@AHD_TERM_ENB_A = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"%s: Unable to set termination settings!\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"%s: Primary High byte termination %sabled\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"%s: Primary Low byte termination %sabled\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"%s: Secondary High byte termination %sabled\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"%s: Secondary Low byte termination %sabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, i32)* @ahd_configure_termination to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_configure_termination(%struct.ahd_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DEVCONFIG, align 4
  %13 = call i32 @ahd_pci_read_config(i32 %11, i32 %12, i32 4)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @STPWLEVEL, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %8, align 4
  %18 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AHD_STPWLEVEL_A, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @STPWLEVEL, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i64, i64* @bootverbose, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %33 = call i32 @ahd_name(%struct.ahd_softc* %32)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @STPWLEVEL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %40 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %33, i8* %39)
  br label %41

41:                                               ; preds = %31, %28
  %42 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DEVCONFIG, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @ahd_pci_write_config(i32 %44, i32 %45, i32 %46, i32 4)
  %48 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AHD_CURRENT_SENSING, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %41
  %55 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %56 = load i32, i32* @FLXADDR_ROMSTAT_CURSENSECTL, align 4
  %57 = call i32 @ahd_write_flexport(%struct.ahd_softc* %55, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %54, %41
  %59 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %60 = load i32, i32* @FLXADDR_TERMCTL, align 4
  %61 = call i32 @ahd_read_flexport(%struct.ahd_softc* %59, i32 %60, i32* %7)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @CFAUTOTERM, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %98

66:                                               ; preds = %58
  %67 = load i64, i64* @bootverbose, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %71 = call i32 @ahd_name(%struct.ahd_softc* %70)
  %72 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %69, %66
  %74 = load i32, i32* @FLX_TERMCTL_ENPRILOW, align 4
  %75 = load i32, i32* @FLX_TERMCTL_ENPRIHIGH, align 4
  %76 = or i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @CFSTERM, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %73
  %85 = load i32, i32* @FLX_TERMCTL_ENPRILOW, align 4
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %84, %73
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @CFWSTERM, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @FLX_TERMCTL_ENPRIHIGH, align 4
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %93, %88
  br label %109

98:                                               ; preds = %58
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %103 = call i32 @ahd_name(%struct.ahd_softc* %102)
  %104 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @FLX_TERMCTL_ENPRILOW, align 4
  %106 = load i32, i32* @FLX_TERMCTL_ENPRIHIGH, align 4
  %107 = or i32 %105, %106
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %101, %98
  br label %109

109:                                              ; preds = %108, %97
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @CFSEAUTOTERM, align 4
  %112 = and i32 %110, %111
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %146

114:                                              ; preds = %109
  %115 = load i64, i64* @bootverbose, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %119 = call i32 @ahd_name(%struct.ahd_softc* %118)
  %120 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i32, i32* @FLX_TERMCTL_ENSECLOW, align 4
  %123 = load i32, i32* @FLX_TERMCTL_ENSECHIGH, align 4
  %124 = or i32 %122, %123
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %7, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @CFSELOWTERM, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %121
  %133 = load i32, i32* @FLX_TERMCTL_ENSECLOW, align 4
  %134 = load i32, i32* %7, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %132, %121
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @CFSEHIGHTERM, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load i32, i32* @FLX_TERMCTL_ENSECHIGH, align 4
  %143 = load i32, i32* %7, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %141, %136
  br label %159

146:                                              ; preds = %109
  %147 = load i32, i32* %5, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %151 = call i32 @ahd_name(%struct.ahd_softc* %150)
  %152 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* @FLX_TERMCTL_ENSECLOW, align 4
  %154 = load i32, i32* @FLX_TERMCTL_ENSECHIGH, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* %7, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %7, align 4
  br label %158

158:                                              ; preds = %149, %146
  br label %159

159:                                              ; preds = %158, %145
  %160 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %161 = load i32, i32* @SXFRCTL1, align 4
  %162 = call i32 @ahd_inb(%struct.ahd_softc* %160, i32 %161)
  %163 = load i32, i32* @STPWEN, align 4
  %164 = xor i32 %163, -1
  %165 = and i32 %162, %164
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* @AHD_TERM_ENB_A, align 4
  %167 = xor i32 %166, -1
  %168 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %169 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, %167
  store i32 %171, i32* %169, align 4
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* @FLX_TERMCTL_ENPRILOW, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %159
  %177 = load i32, i32* @AHD_TERM_ENB_A, align 4
  %178 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %179 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 4
  %182 = load i32, i32* @STPWEN, align 4
  %183 = load i32, i32* %6, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %6, align 4
  br label %185

185:                                              ; preds = %176, %159
  %186 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %187 = load i32, i32* @SXFRCTL1, align 4
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* @STPWEN, align 4
  %190 = or i32 %188, %189
  %191 = call i32 @ahd_outb(%struct.ahd_softc* %186, i32 %187, i32 %190)
  %192 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %193 = load i32, i32* @SXFRCTL1, align 4
  %194 = load i32, i32* %6, align 4
  %195 = call i32 @ahd_outb(%struct.ahd_softc* %192, i32 %193, i32 %194)
  %196 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %197 = load i32, i32* @FLXADDR_TERMCTL, align 4
  %198 = load i32, i32* %7, align 4
  %199 = call i32 @ahd_write_flexport(%struct.ahd_softc* %196, i32 %197, i32 %198)
  store i32 %199, i32* %5, align 4
  %200 = load i32, i32* %5, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %185
  %203 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %204 = call i32 @ahd_name(%struct.ahd_softc* %203)
  %205 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %204)
  br label %247

206:                                              ; preds = %185
  %207 = load i64, i64* @bootverbose, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %246

209:                                              ; preds = %206
  %210 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %211 = call i32 @ahd_name(%struct.ahd_softc* %210)
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* @FLX_TERMCTL_ENPRIHIGH, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  %218 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %211, i8* %217)
  %219 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %220 = call i32 @ahd_name(%struct.ahd_softc* %219)
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* @FLX_TERMCTL_ENPRILOW, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  %225 = zext i1 %224 to i64
  %226 = select i1 %224, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  %227 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 %220, i8* %226)
  %228 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %229 = call i32 @ahd_name(%struct.ahd_softc* %228)
  %230 = load i32, i32* %7, align 4
  %231 = load i32, i32* @FLX_TERMCTL_ENSECHIGH, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  %234 = zext i1 %233 to i64
  %235 = select i1 %233, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  %236 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i32 %229, i8* %235)
  %237 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %238 = call i32 @ahd_name(%struct.ahd_softc* %237)
  %239 = load i32, i32* %7, align 4
  %240 = load i32, i32* @FLX_TERMCTL_ENSECLOW, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  %243 = zext i1 %242 to i64
  %244 = select i1 %242, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  %245 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), i32 %238, i8* %244)
  br label %246

246:                                              ; preds = %209, %206
  br label %247

247:                                              ; preds = %246, %202
  ret void
}

declare dso_local i32 @ahd_pci_read_config(i32, i32, i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @ahd_write_flexport(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_read_flexport(%struct.ahd_softc*, i32, i32*) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
