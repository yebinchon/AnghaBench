; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8870_bl.c_adp8870_bl_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8870_bl.c_adp8870_bl_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.adp8870_bl = type { i32, i64, %struct.adp8870_backlight_platform_data*, %struct.i2c_client* }
%struct.adp8870_backlight_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.i2c_client = type { i32 }

@ADP8870_BLSEL = common dso_local global i32 0, align 4
@ADP8870_PWMLED = common dso_local global i32 0, align 4
@ADP8870_BLMX1 = common dso_local global i32 0, align 4
@ADP8870_BLDM1 = common dso_local global i32 0, align 4
@ADP8870_BLMX2 = common dso_local global i32 0, align 4
@ADP8870_BLDM2 = common dso_local global i32 0, align 4
@ADP8870_BLMX3 = common dso_local global i32 0, align 4
@ADP8870_BLDM3 = common dso_local global i32 0, align 4
@ADP8870_BLMX4 = common dso_local global i32 0, align 4
@ADP8870_BLDM4 = common dso_local global i32 0, align 4
@ADP8870_BLMX5 = common dso_local global i32 0, align 4
@ADP8870_BLDM5 = common dso_local global i32 0, align 4
@ADP8870_L2TRP = common dso_local global i32 0, align 4
@ADP8870_L2HYS = common dso_local global i32 0, align 4
@ADP8870_L3TRP = common dso_local global i32 0, align 4
@ADP8870_L3HYS = common dso_local global i32 0, align 4
@ADP8870_L4TRP = common dso_local global i32 0, align 4
@ADP8870_L4HYS = common dso_local global i32 0, align 4
@ADP8870_L5TRP = common dso_local global i32 0, align 4
@ADP8870_L5HYS = common dso_local global i32 0, align 4
@ADP8870_ALS1_EN = common dso_local global i32 0, align 4
@L5_EN = common dso_local global i32 0, align 4
@L4_EN = common dso_local global i32 0, align 4
@L3_EN = common dso_local global i32 0, align 4
@L2_EN = common dso_local global i32 0, align 4
@ADP8870_CMP_CTL = common dso_local global i32 0, align 4
@ADP8870_CFGR = common dso_local global i32 0, align 4
@ADP8870_BLFR = common dso_local global i32 0, align 4
@ADP8870_MDCR = common dso_local global i32 0, align 4
@BLEN = common dso_local global i32 0, align 4
@DIM_EN = common dso_local global i32 0, align 4
@NSTBY = common dso_local global i32 0, align 4
@GDWN_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @adp8870_bl_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp8870_bl_setup(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.adp8870_bl*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.adp8870_backlight_platform_data*, align 8
  %7 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %8 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %9 = call %struct.adp8870_bl* @bl_get_data(%struct.backlight_device* %8)
  store %struct.adp8870_bl* %9, %struct.adp8870_bl** %4, align 8
  %10 = load %struct.adp8870_bl*, %struct.adp8870_bl** %4, align 8
  %11 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %10, i32 0, i32 3
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %5, align 8
  %13 = load %struct.adp8870_bl*, %struct.adp8870_bl** %4, align 8
  %14 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %13, i32 0, i32 2
  %15 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %14, align 8
  store %struct.adp8870_backlight_platform_data* %15, %struct.adp8870_backlight_platform_data** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %17 = load i32, i32* @ADP8870_BLSEL, align 4
  %18 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %19 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = xor i32 %20, -1
  %22 = call i32 @adp8870_write(%struct.i2c_client* %16, i32 %17, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %321

27:                                               ; preds = %1
  %28 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %29 = load i32, i32* @ADP8870_PWMLED, align 4
  %30 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %31 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @adp8870_write(%struct.i2c_client* %28, i32 %29, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  br label %321

38:                                               ; preds = %27
  %39 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %40 = load i32, i32* @ADP8870_BLMX1, align 4
  %41 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %42 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @adp8870_write(%struct.i2c_client* %39, i32 %40, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %321

49:                                               ; preds = %38
  %50 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %51 = load i32, i32* @ADP8870_BLDM1, align 4
  %52 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %53 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @adp8870_write(%struct.i2c_client* %50, i32 %51, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %321

60:                                               ; preds = %49
  %61 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %62 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %61, i32 0, i32 24
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %274

65:                                               ; preds = %60
  %66 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %67 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.adp8870_bl*, %struct.adp8870_bl** %4, align 8
  %70 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %72 = load i32, i32* @ADP8870_BLMX2, align 4
  %73 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %74 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @adp8870_write(%struct.i2c_client* %71, i32 %72, i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %65
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %321

81:                                               ; preds = %65
  %82 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %83 = load i32, i32* @ADP8870_BLDM2, align 4
  %84 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %85 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @adp8870_write(%struct.i2c_client* %82, i32 %83, i32 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %321

92:                                               ; preds = %81
  %93 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %94 = load i32, i32* @ADP8870_BLMX3, align 4
  %95 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %96 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @adp8870_write(%struct.i2c_client* %93, i32 %94, i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %321

103:                                              ; preds = %92
  %104 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %105 = load i32, i32* @ADP8870_BLDM3, align 4
  %106 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %107 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @adp8870_write(%struct.i2c_client* %104, i32 %105, i32 %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %103
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %2, align 4
  br label %321

114:                                              ; preds = %103
  %115 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %116 = load i32, i32* @ADP8870_BLMX4, align 4
  %117 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %118 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @adp8870_write(%struct.i2c_client* %115, i32 %116, i32 %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %114
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* %2, align 4
  br label %321

125:                                              ; preds = %114
  %126 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %127 = load i32, i32* @ADP8870_BLDM4, align 4
  %128 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %129 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %128, i32 0, i32 9
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @adp8870_write(%struct.i2c_client* %126, i32 %127, i32 %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %125
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %2, align 4
  br label %321

136:                                              ; preds = %125
  %137 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %138 = load i32, i32* @ADP8870_BLMX5, align 4
  %139 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %140 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %139, i32 0, i32 10
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @adp8870_write(%struct.i2c_client* %137, i32 %138, i32 %141)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %136
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %2, align 4
  br label %321

147:                                              ; preds = %136
  %148 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %149 = load i32, i32* @ADP8870_BLDM5, align 4
  %150 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %151 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %150, i32 0, i32 11
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @adp8870_write(%struct.i2c_client* %148, i32 %149, i32 %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %147
  %157 = load i32, i32* %7, align 4
  store i32 %157, i32* %2, align 4
  br label %321

158:                                              ; preds = %147
  %159 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %160 = load i32, i32* @ADP8870_L2TRP, align 4
  %161 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %162 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %161, i32 0, i32 12
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @adp8870_write(%struct.i2c_client* %159, i32 %160, i32 %163)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %158
  %168 = load i32, i32* %7, align 4
  store i32 %168, i32* %2, align 4
  br label %321

169:                                              ; preds = %158
  %170 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %171 = load i32, i32* @ADP8870_L2HYS, align 4
  %172 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %173 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %172, i32 0, i32 13
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @adp8870_write(%struct.i2c_client* %170, i32 %171, i32 %174)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %169
  %179 = load i32, i32* %7, align 4
  store i32 %179, i32* %2, align 4
  br label %321

180:                                              ; preds = %169
  %181 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %182 = load i32, i32* @ADP8870_L3TRP, align 4
  %183 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %184 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %183, i32 0, i32 14
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @adp8870_write(%struct.i2c_client* %181, i32 %182, i32 %185)
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %180
  %190 = load i32, i32* %7, align 4
  store i32 %190, i32* %2, align 4
  br label %321

191:                                              ; preds = %180
  %192 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %193 = load i32, i32* @ADP8870_L3HYS, align 4
  %194 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %195 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %194, i32 0, i32 15
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @adp8870_write(%struct.i2c_client* %192, i32 %193, i32 %196)
  store i32 %197, i32* %7, align 4
  %198 = load i32, i32* %7, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %191
  %201 = load i32, i32* %7, align 4
  store i32 %201, i32* %2, align 4
  br label %321

202:                                              ; preds = %191
  %203 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %204 = load i32, i32* @ADP8870_L4TRP, align 4
  %205 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %206 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %205, i32 0, i32 16
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @adp8870_write(%struct.i2c_client* %203, i32 %204, i32 %207)
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %202
  %212 = load i32, i32* %7, align 4
  store i32 %212, i32* %2, align 4
  br label %321

213:                                              ; preds = %202
  %214 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %215 = load i32, i32* @ADP8870_L4HYS, align 4
  %216 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %217 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %216, i32 0, i32 17
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @adp8870_write(%struct.i2c_client* %214, i32 %215, i32 %218)
  store i32 %219, i32* %7, align 4
  %220 = load i32, i32* %7, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %213
  %223 = load i32, i32* %7, align 4
  store i32 %223, i32* %2, align 4
  br label %321

224:                                              ; preds = %213
  %225 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %226 = load i32, i32* @ADP8870_L5TRP, align 4
  %227 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %228 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %227, i32 0, i32 18
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @adp8870_write(%struct.i2c_client* %225, i32 %226, i32 %229)
  store i32 %230, i32* %7, align 4
  %231 = load i32, i32* %7, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %224
  %234 = load i32, i32* %7, align 4
  store i32 %234, i32* %2, align 4
  br label %321

235:                                              ; preds = %224
  %236 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %237 = load i32, i32* @ADP8870_L5HYS, align 4
  %238 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %239 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %238, i32 0, i32 19
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @adp8870_write(%struct.i2c_client* %236, i32 %237, i32 %240)
  store i32 %241, i32* %7, align 4
  %242 = load i32, i32* %7, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %235
  %245 = load i32, i32* %7, align 4
  store i32 %245, i32* %2, align 4
  br label %321

246:                                              ; preds = %235
  %247 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %248 = load i32, i32* @ADP8870_ALS1_EN, align 4
  %249 = load i32, i32* @L5_EN, align 4
  %250 = load i32, i32* @L4_EN, align 4
  %251 = or i32 %249, %250
  %252 = load i32, i32* @L3_EN, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* @L2_EN, align 4
  %255 = or i32 %253, %254
  %256 = call i32 @adp8870_write(%struct.i2c_client* %247, i32 %248, i32 %255)
  store i32 %256, i32* %7, align 4
  %257 = load i32, i32* %7, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %246
  %260 = load i32, i32* %7, align 4
  store i32 %260, i32* %2, align 4
  br label %321

261:                                              ; preds = %246
  %262 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %263 = load i32, i32* @ADP8870_CMP_CTL, align 4
  %264 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %265 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %264, i32 0, i32 23
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @ALS_CMPR_CFG_VAL(i32 %266)
  %268 = call i32 @adp8870_write(%struct.i2c_client* %262, i32 %263, i32 %267)
  store i32 %268, i32* %7, align 4
  %269 = load i32, i32* %7, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %261
  %272 = load i32, i32* %7, align 4
  store i32 %272, i32* %2, align 4
  br label %321

273:                                              ; preds = %261
  br label %274

274:                                              ; preds = %273, %60
  %275 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %276 = load i32, i32* @ADP8870_CFGR, align 4
  %277 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %278 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %277, i32 0, i32 22
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @BL_CFGR_VAL(i32 %279, i32 0)
  %281 = call i32 @adp8870_write(%struct.i2c_client* %275, i32 %276, i32 %280)
  store i32 %281, i32* %7, align 4
  %282 = load i32, i32* %7, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %274
  %285 = load i32, i32* %7, align 4
  store i32 %285, i32* %2, align 4
  br label %321

286:                                              ; preds = %274
  %287 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %288 = load i32, i32* @ADP8870_BLFR, align 4
  %289 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %290 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %289, i32 0, i32 21
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %6, align 8
  %293 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %292, i32 0, i32 20
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @FADE_VAL(i32 %291, i32 %294)
  %296 = call i32 @adp8870_write(%struct.i2c_client* %287, i32 %288, i32 %295)
  store i32 %296, i32* %7, align 4
  %297 = load i32, i32* %7, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %286
  %300 = load i32, i32* %7, align 4
  store i32 %300, i32* %2, align 4
  br label %321

301:                                              ; preds = %286
  %302 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %303 = load i32, i32* @ADP8870_MDCR, align 4
  %304 = load i32, i32* @BLEN, align 4
  %305 = load i32, i32* @DIM_EN, align 4
  %306 = or i32 %304, %305
  %307 = load i32, i32* @NSTBY, align 4
  %308 = or i32 %306, %307
  %309 = load %struct.adp8870_bl*, %struct.adp8870_bl** %4, align 8
  %310 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %301
  %314 = load i32, i32* @GDWN_DIS, align 4
  br label %316

315:                                              ; preds = %301
  br label %316

316:                                              ; preds = %315, %313
  %317 = phi i32 [ %314, %313 ], [ 0, %315 ]
  %318 = or i32 %308, %317
  %319 = call i32 @adp8870_set_bits(%struct.i2c_client* %302, i32 %303, i32 %318)
  store i32 %319, i32* %7, align 4
  %320 = load i32, i32* %7, align 4
  store i32 %320, i32* %2, align 4
  br label %321

321:                                              ; preds = %316, %299, %284, %271, %259, %244, %233, %222, %211, %200, %189, %178, %167, %156, %145, %134, %123, %112, %101, %90, %79, %58, %47, %36, %25
  %322 = load i32, i32* %2, align 4
  ret i32 %322
}

declare dso_local %struct.adp8870_bl* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @adp8870_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ALS_CMPR_CFG_VAL(i32) #1

declare dso_local i32 @BL_CFGR_VAL(i32, i32) #1

declare dso_local i32 @FADE_VAL(i32, i32) #1

declare dso_local i32 @adp8870_set_bits(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
