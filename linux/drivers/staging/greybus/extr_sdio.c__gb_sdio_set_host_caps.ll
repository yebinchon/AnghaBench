; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c__gb_sdio_set_host_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c__gb_sdio_set_host_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_sdio_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@GB_SDIO_CAP_NONREMOVABLE = common dso_local global i32 0, align 4
@MMC_CAP_NONREMOVABLE = common dso_local global i32 0, align 4
@GB_SDIO_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@GB_SDIO_CAP_8_BIT_DATA = common dso_local global i32 0, align 4
@MMC_CAP_8_BIT_DATA = common dso_local global i32 0, align 4
@GB_SDIO_CAP_MMC_HS = common dso_local global i32 0, align 4
@MMC_CAP_MMC_HIGHSPEED = common dso_local global i32 0, align 4
@GB_SDIO_CAP_SD_HS = common dso_local global i32 0, align 4
@MMC_CAP_SD_HIGHSPEED = common dso_local global i32 0, align 4
@GB_SDIO_CAP_ERASE = common dso_local global i32 0, align 4
@MMC_CAP_ERASE = common dso_local global i32 0, align 4
@GB_SDIO_CAP_1_2V_DDR = common dso_local global i32 0, align 4
@MMC_CAP_1_2V_DDR = common dso_local global i32 0, align 4
@GB_SDIO_CAP_1_8V_DDR = common dso_local global i32 0, align 4
@MMC_CAP_1_8V_DDR = common dso_local global i32 0, align 4
@GB_SDIO_CAP_POWER_OFF_CARD = common dso_local global i32 0, align 4
@MMC_CAP_POWER_OFF_CARD = common dso_local global i32 0, align 4
@GB_SDIO_CAP_UHS_SDR12 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR12 = common dso_local global i32 0, align 4
@GB_SDIO_CAP_UHS_SDR25 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR25 = common dso_local global i32 0, align 4
@GB_SDIO_CAP_UHS_SDR50 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR50 = common dso_local global i32 0, align 4
@GB_SDIO_CAP_UHS_SDR104 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR104 = common dso_local global i32 0, align 4
@GB_SDIO_CAP_UHS_DDR50 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_DDR50 = common dso_local global i32 0, align 4
@GB_SDIO_CAP_DRIVER_TYPE_A = common dso_local global i32 0, align 4
@MMC_CAP_DRIVER_TYPE_A = common dso_local global i32 0, align 4
@GB_SDIO_CAP_DRIVER_TYPE_C = common dso_local global i32 0, align 4
@MMC_CAP_DRIVER_TYPE_C = common dso_local global i32 0, align 4
@GB_SDIO_CAP_DRIVER_TYPE_D = common dso_local global i32 0, align 4
@MMC_CAP_DRIVER_TYPE_D = common dso_local global i32 0, align 4
@GB_SDIO_CAP_HS200_1_2V = common dso_local global i32 0, align 4
@MMC_CAP2_HS200_1_2V_SDR = common dso_local global i32 0, align 4
@GB_SDIO_CAP_HS400_1_2V = common dso_local global i32 0, align 4
@MMC_CAP2_HS400_1_2V = common dso_local global i32 0, align 4
@GB_SDIO_CAP_HS400_1_8V = common dso_local global i32 0, align 4
@MMC_CAP2_HS400_1_8V = common dso_local global i32 0, align 4
@GB_SDIO_CAP_HS200_1_8V = common dso_local global i32 0, align 4
@MMC_CAP2_HS200_1_8V_SDR = common dso_local global i32 0, align 4
@MMC_CAP2_CORE_RUNTIME_PM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_sdio_host*, i32)* @_gb_sdio_set_host_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_gb_sdio_set_host_caps(%struct.gb_sdio_host* %0, i32 %1) #0 {
  %3 = alloca %struct.gb_sdio_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gb_sdio_host* %0, %struct.gb_sdio_host** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @GB_SDIO_CAP_NONREMOVABLE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @MMC_CAP_NONREMOVABLE, align 4
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i32 [ %12, %11 ], [ 0, %13 ]
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @GB_SDIO_CAP_4_BIT_DATA, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  br label %23

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  %25 = or i32 %15, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @GB_SDIO_CAP_8_BIT_DATA, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  br label %33

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  %35 = or i32 %25, %34
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @GB_SDIO_CAP_MMC_HS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @MMC_CAP_MMC_HIGHSPEED, align 4
  br label %43

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = or i32 %35, %44
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @GB_SDIO_CAP_SD_HS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @MMC_CAP_SD_HIGHSPEED, align 4
  br label %53

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 0, %52 ]
  %55 = or i32 %45, %54
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @GB_SDIO_CAP_ERASE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @MMC_CAP_ERASE, align 4
  br label %63

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ 0, %62 ]
  %65 = or i32 %55, %64
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @GB_SDIO_CAP_1_2V_DDR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @MMC_CAP_1_2V_DDR, align 4
  br label %73

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i32 [ %71, %70 ], [ 0, %72 ]
  %75 = or i32 %65, %74
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @GB_SDIO_CAP_1_8V_DDR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @MMC_CAP_1_8V_DDR, align 4
  br label %83

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i32 [ %81, %80 ], [ 0, %82 ]
  %85 = or i32 %75, %84
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @GB_SDIO_CAP_POWER_OFF_CARD, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* @MMC_CAP_POWER_OFF_CARD, align 4
  br label %93

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32 [ %91, %90 ], [ 0, %92 ]
  %95 = or i32 %85, %94
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @GB_SDIO_CAP_UHS_SDR12, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* @MMC_CAP_UHS_SDR12, align 4
  br label %103

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i32 [ %101, %100 ], [ 0, %102 ]
  %105 = or i32 %95, %104
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @GB_SDIO_CAP_UHS_SDR25, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* @MMC_CAP_UHS_SDR25, align 4
  br label %113

112:                                              ; preds = %103
  br label %113

113:                                              ; preds = %112, %110
  %114 = phi i32 [ %111, %110 ], [ 0, %112 ]
  %115 = or i32 %105, %114
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @GB_SDIO_CAP_UHS_SDR50, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  br label %123

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122, %120
  %124 = phi i32 [ %121, %120 ], [ 0, %122 ]
  %125 = or i32 %115, %124
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @GB_SDIO_CAP_UHS_SDR104, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  br label %133

132:                                              ; preds = %123
  br label %133

133:                                              ; preds = %132, %130
  %134 = phi i32 [ %131, %130 ], [ 0, %132 ]
  %135 = or i32 %125, %134
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @GB_SDIO_CAP_UHS_DDR50, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = load i32, i32* @MMC_CAP_UHS_DDR50, align 4
  br label %143

142:                                              ; preds = %133
  br label %143

143:                                              ; preds = %142, %140
  %144 = phi i32 [ %141, %140 ], [ 0, %142 ]
  %145 = or i32 %135, %144
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @GB_SDIO_CAP_DRIVER_TYPE_A, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = load i32, i32* @MMC_CAP_DRIVER_TYPE_A, align 4
  br label %153

152:                                              ; preds = %143
  br label %153

153:                                              ; preds = %152, %150
  %154 = phi i32 [ %151, %150 ], [ 0, %152 ]
  %155 = or i32 %145, %154
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @GB_SDIO_CAP_DRIVER_TYPE_C, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %153
  %161 = load i32, i32* @MMC_CAP_DRIVER_TYPE_C, align 4
  br label %163

162:                                              ; preds = %153
  br label %163

163:                                              ; preds = %162, %160
  %164 = phi i32 [ %161, %160 ], [ 0, %162 ]
  %165 = or i32 %155, %164
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @GB_SDIO_CAP_DRIVER_TYPE_D, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %163
  %171 = load i32, i32* @MMC_CAP_DRIVER_TYPE_D, align 4
  br label %173

172:                                              ; preds = %163
  br label %173

173:                                              ; preds = %172, %170
  %174 = phi i32 [ %171, %170 ], [ 0, %172 ]
  %175 = or i32 %165, %174
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @GB_SDIO_CAP_HS200_1_2V, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %173
  %181 = load i32, i32* @MMC_CAP2_HS200_1_2V_SDR, align 4
  br label %183

182:                                              ; preds = %173
  br label %183

183:                                              ; preds = %182, %180
  %184 = phi i32 [ %181, %180 ], [ 0, %182 ]
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* @GB_SDIO_CAP_HS400_1_2V, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %183
  %190 = load i32, i32* @MMC_CAP2_HS400_1_2V, align 4
  br label %192

191:                                              ; preds = %183
  br label %192

192:                                              ; preds = %191, %189
  %193 = phi i32 [ %190, %189 ], [ 0, %191 ]
  %194 = or i32 %184, %193
  %195 = load i32, i32* %4, align 4
  %196 = load i32, i32* @GB_SDIO_CAP_HS400_1_8V, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %192
  %200 = load i32, i32* @MMC_CAP2_HS400_1_8V, align 4
  br label %202

201:                                              ; preds = %192
  br label %202

202:                                              ; preds = %201, %199
  %203 = phi i32 [ %200, %199 ], [ 0, %201 ]
  %204 = or i32 %194, %203
  %205 = load i32, i32* %4, align 4
  %206 = load i32, i32* @GB_SDIO_CAP_HS200_1_8V, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %202
  %210 = load i32, i32* @MMC_CAP2_HS200_1_8V_SDR, align 4
  br label %212

211:                                              ; preds = %202
  br label %212

212:                                              ; preds = %211, %209
  %213 = phi i32 [ %210, %209 ], [ 0, %211 ]
  %214 = or i32 %204, %213
  store i32 %214, i32* %6, align 4
  %215 = load i32, i32* %5, align 4
  %216 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %217 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %216, i32 0, i32 1
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  store i32 %215, i32* %219, align 4
  %220 = load i32, i32* %6, align 4
  %221 = load i32, i32* @MMC_CAP2_CORE_RUNTIME_PM, align 4
  %222 = or i32 %220, %221
  %223 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %224 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %223, i32 0, i32 1
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 1
  store i32 %222, i32* %226, align 4
  %227 = load i32, i32* %5, align 4
  %228 = load i32, i32* @MMC_CAP_NONREMOVABLE, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %212
  %232 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %233 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %232, i32 0, i32 0
  store i32 1, i32* %233, align 8
  br label %234

234:                                              ; preds = %231, %212
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
