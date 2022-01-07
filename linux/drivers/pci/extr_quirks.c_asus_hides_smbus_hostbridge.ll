; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_asus_hides_smbus_hostbridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_asus_hides_smbus_hostbridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i64, i32 }

@PCI_VENDOR_ID_ASUSTEK = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_82845_HB = common dso_local global i64 0, align 8
@asus_hides_smbus = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_82845G_HB = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_82850_HB = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_7205_0 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_E7501_MCH = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_82855GM_HB = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_82855PM_HB = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_82865_HB = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_82915GM_HB = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_HP = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_82875_HB = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_SAMSUNG = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_COMPAQ = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_82810_IG3 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_82801DB_2 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_82815_CGC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @asus_hides_smbus_hostbridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asus_hides_smbus_hostbridge(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %3 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %4 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @PCI_VENDOR_ID_ASUSTEK, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %128

11:                                               ; preds = %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PCI_DEVICE_ID_INTEL_82845_HB, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %22 [
    i32 32805, label %21
    i32 32880, label %21
    i32 32904, label %21
    i32 5670, label %21
  ]

21:                                               ; preds = %17, %17, %17, %17
  store i32 1, i32* @asus_hides_smbus, align 4
  br label %22

22:                                               ; preds = %21, %17
  br label %127

23:                                               ; preds = %11
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PCI_DEVICE_ID_INTEL_82845G_HB, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %34 [
    i32 32945, label %33
    i32 32946, label %33
    i32 32915, label %33
  ]

33:                                               ; preds = %29, %29, %29
  store i32 1, i32* @asus_hides_smbus, align 4
  br label %34

34:                                               ; preds = %33, %29
  br label %126

35:                                               ; preds = %23
  %36 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PCI_DEVICE_ID_INTEL_82850_HB, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %46 [
    i32 32816, label %45
  ]

45:                                               ; preds = %41
  store i32 1, i32* @asus_hides_smbus, align 4
  br label %46

46:                                               ; preds = %45, %41
  br label %125

47:                                               ; preds = %35
  %48 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PCI_DEVICE_ID_INTEL_7205_0, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %58 [
    i32 32880, label %57
  ]

57:                                               ; preds = %53
  store i32 1, i32* @asus_hides_smbus, align 4
  br label %58

58:                                               ; preds = %57, %53
  br label %124

59:                                               ; preds = %47
  %60 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PCI_DEVICE_ID_INTEL_E7501_MCH, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %70 [
    i32 32969, label %69
  ]

69:                                               ; preds = %65
  store i32 1, i32* @asus_hides_smbus, align 4
  br label %70

70:                                               ; preds = %69, %65
  br label %123

71:                                               ; preds = %59
  %72 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PCI_DEVICE_ID_INTEL_82855GM_HB, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  switch i32 %80, label %82 [
    i32 5969, label %81
    i32 6177, label %81
    i32 6295, label %81
  ]

81:                                               ; preds = %77, %77, %77
  store i32 1, i32* @asus_hides_smbus, align 4
  br label %82

82:                                               ; preds = %81, %77
  br label %122

83:                                               ; preds = %71
  %84 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PCI_DEVICE_ID_INTEL_82855PM_HB, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  switch i32 %92, label %94 [
    i32 6219, label %93
    i32 6250, label %93
  ]

93:                                               ; preds = %89, %89
  store i32 1, i32* @asus_hides_smbus, align 4
  br label %94

94:                                               ; preds = %93, %89
  br label %121

95:                                               ; preds = %83
  %96 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %97 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @PCI_DEVICE_ID_INTEL_82865_HB, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %103 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  switch i32 %104, label %106 [
    i32 33010, label %105
  ]

105:                                              ; preds = %101
  store i32 1, i32* @asus_hides_smbus, align 4
  br label %106

106:                                              ; preds = %105, %101
  br label %120

107:                                              ; preds = %95
  %108 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %109 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @PCI_DEVICE_ID_INTEL_82915GM_HB, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %115 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  switch i32 %116, label %118 [
    i32 6274, label %117
    i32 6519, label %117
  ]

117:                                              ; preds = %113, %113
  store i32 1, i32* @asus_hides_smbus, align 4
  br label %118

118:                                              ; preds = %117, %113
  br label %119

119:                                              ; preds = %118, %107
  br label %120

120:                                              ; preds = %119, %106
  br label %121

121:                                              ; preds = %120, %94
  br label %122

122:                                              ; preds = %121, %82
  br label %123

123:                                              ; preds = %122, %70
  br label %124

124:                                              ; preds = %123, %58
  br label %125

125:                                              ; preds = %124, %46
  br label %126

126:                                              ; preds = %125, %34
  br label %127

127:                                              ; preds = %126, %22
  br label %262

128:                                              ; preds = %1
  %129 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %130 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @PCI_VENDOR_ID_HP, align 8
  %133 = icmp eq i64 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i64 @unlikely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %176

137:                                              ; preds = %128
  %138 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %139 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @PCI_DEVICE_ID_INTEL_82855PM_HB, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %145 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  switch i32 %146, label %148 [
    i32 2188, label %147
    i32 2192, label %147
  ]

147:                                              ; preds = %143, %143
  store i32 1, i32* @asus_hides_smbus, align 4
  br label %148

148:                                              ; preds = %147, %143
  br label %175

149:                                              ; preds = %137
  %150 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %151 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @PCI_DEVICE_ID_INTEL_82865_HB, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %149
  %156 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %157 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  switch i32 %158, label %160 [
    i32 4796, label %159
    i32 4797, label %159
    i32 106, label %159
  ]

159:                                              ; preds = %155, %155, %155
  store i32 1, i32* @asus_hides_smbus, align 4
  br label %160

160:                                              ; preds = %159, %155
  br label %174

161:                                              ; preds = %149
  %162 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %163 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @PCI_DEVICE_ID_INTEL_82875_HB, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %161
  %168 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %169 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  switch i32 %170, label %172 [
    i32 4799, label %171
  ]

171:                                              ; preds = %167
  store i32 1, i32* @asus_hides_smbus, align 4
  br label %172

172:                                              ; preds = %171, %167
  br label %173

173:                                              ; preds = %172, %161
  br label %174

174:                                              ; preds = %173, %160
  br label %175

175:                                              ; preds = %174, %148
  br label %261

176:                                              ; preds = %128
  %177 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %178 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @PCI_VENDOR_ID_SAMSUNG, align 8
  %181 = icmp eq i64 %179, %180
  %182 = zext i1 %181 to i32
  %183 = call i64 @unlikely(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %198

185:                                              ; preds = %176
  %186 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %187 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @PCI_DEVICE_ID_INTEL_82855PM_HB, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %185
  %192 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %193 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  switch i32 %194, label %196 [
    i32 49164, label %195
  ]

195:                                              ; preds = %191
  store i32 1, i32* @asus_hides_smbus, align 4
  br label %196

196:                                              ; preds = %195, %191
  br label %197

197:                                              ; preds = %196, %185
  br label %260

198:                                              ; preds = %176
  %199 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %200 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @PCI_VENDOR_ID_COMPAQ, align 8
  %203 = icmp eq i64 %201, %202
  %204 = zext i1 %203 to i32
  %205 = call i64 @unlikely(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %259

207:                                              ; preds = %198
  %208 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %209 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @PCI_DEVICE_ID_INTEL_82855PM_HB, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %207
  %214 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %215 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  switch i32 %216, label %218 [
    i32 88, label %217
  ]

217:                                              ; preds = %213
  store i32 1, i32* @asus_hides_smbus, align 4
  br label %218

218:                                              ; preds = %217, %213
  br label %258

219:                                              ; preds = %207
  %220 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %221 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @PCI_DEVICE_ID_INTEL_82810_IG3, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %231

225:                                              ; preds = %219
  %226 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %227 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  switch i32 %228, label %230 [
    i32 45420, label %229
  ]

229:                                              ; preds = %225
  store i32 1, i32* @asus_hides_smbus, align 4
  br label %230

230:                                              ; preds = %229, %225
  br label %257

231:                                              ; preds = %219
  %232 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %233 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @PCI_DEVICE_ID_INTEL_82801DB_2, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %243

237:                                              ; preds = %231
  %238 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %239 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  switch i32 %240, label %242 [
    i32 184, label %241
    i32 185, label %241
    i32 186, label %241
  ]

241:                                              ; preds = %237, %237, %237
  store i32 1, i32* @asus_hides_smbus, align 4
  br label %242

242:                                              ; preds = %241, %237
  br label %256

243:                                              ; preds = %231
  %244 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %245 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @PCI_DEVICE_ID_INTEL_82815_CGC, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %255

249:                                              ; preds = %243
  %250 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %251 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  switch i32 %252, label %254 [
    i32 26, label %253
  ]

253:                                              ; preds = %249
  store i32 1, i32* @asus_hides_smbus, align 4
  br label %254

254:                                              ; preds = %253, %249
  br label %255

255:                                              ; preds = %254, %243
  br label %256

256:                                              ; preds = %255, %242
  br label %257

257:                                              ; preds = %256, %230
  br label %258

258:                                              ; preds = %257, %218
  br label %259

259:                                              ; preds = %258, %198
  br label %260

260:                                              ; preds = %259, %197
  br label %261

261:                                              ; preds = %260, %175
  br label %262

262:                                              ; preds = %261, %127
  ret void
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
