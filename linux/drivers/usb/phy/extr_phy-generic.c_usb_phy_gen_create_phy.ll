; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-generic.c_usb_phy_gen_create_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-generic.c_usb_phy_gen_create_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.usb_phy_generic = type { %struct.TYPE_3__, %struct.device*, i32, i32, i8*, i8* }
%struct.TYPE_3__ = type { i8*, i32, %struct.TYPE_4__*, i32, %struct.device* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.usb_phy_generic_platform_data = type { i32, i32, i8*, i32, i64 }

@USB_PHY_TYPE_USB2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"vcc-supply\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_ASIS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"vbus-detect\00", align 1
@GPIOF_ACTIVE_LOW = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Error requesting RESET or VBUS GPIO\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"main_clk\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Can't get phy clock: %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Error setting clock rate\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Error getting vcc regulator: %ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"nop-xceiv\00", align 1
@nop_set_suspend = common dso_local global i32 0, align 4
@OTG_STATE_UNDEFINED = common dso_local global i32 0, align 4
@nop_set_host = common dso_local global i32 0, align 4
@nop_set_peripheral = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_phy_gen_create_phy(%struct.device* %0, %struct.usb_phy_generic* %1, %struct.usb_phy_generic_platform_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.usb_phy_generic*, align 8
  %7 = alloca %struct.usb_phy_generic_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.usb_phy_generic* %1, %struct.usb_phy_generic** %6, align 8
  store %struct.usb_phy_generic_platform_data* %2, %struct.usb_phy_generic_platform_data** %7, align 8
  %14 = load i32, i32* @USB_PHY_TYPE_USB2, align 4
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %19, label %54

19:                                               ; preds = %3
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load %struct.device_node*, %struct.device_node** %21, align 8
  store %struct.device_node* %22, %struct.device_node** %13, align 8
  %23 = load %struct.device_node*, %struct.device_node** %13, align 8
  %24 = call i64 @of_property_read_u32(%struct.device_node* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64* %10)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i64 0, i64* %10, align 8
  br label %27

27:                                               ; preds = %26, %19
  %28 = load %struct.device_node*, %struct.device_node** %13, align 8
  %29 = call i32 @of_property_read_bool(%struct.device_node* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %29, i32* %11, align 4
  %30 = load %struct.device_node*, %struct.device_node** %13, align 8
  %31 = call i32 @of_property_read_bool(%struct.device_node* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %31, i32* %12, align 4
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load i32, i32* @GPIOD_ASIS, align 4
  %34 = call i8* @devm_gpiod_get_optional(%struct.device* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %36 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %38 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %37, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @PTR_ERR_OR_ZERO(i8* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %27
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = load i32, i32* @GPIOD_ASIS, align 4
  %46 = call i8* @devm_gpiod_get_optional(%struct.device* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %48 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  %49 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %50 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %49, i32 0, i32 5
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @PTR_ERR_OR_ZERO(i8* %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %43, %27
  br label %98

54:                                               ; preds = %3
  %55 = load %struct.usb_phy_generic_platform_data*, %struct.usb_phy_generic_platform_data** %7, align 8
  %56 = icmp ne %struct.usb_phy_generic_platform_data* %55, null
  br i1 %56, label %57, label %97

57:                                               ; preds = %54
  %58 = load %struct.usb_phy_generic_platform_data*, %struct.usb_phy_generic_platform_data** %7, align 8
  %59 = getelementptr inbounds %struct.usb_phy_generic_platform_data, %struct.usb_phy_generic_platform_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %8, align 4
  %61 = load %struct.usb_phy_generic_platform_data*, %struct.usb_phy_generic_platform_data** %7, align 8
  %62 = getelementptr inbounds %struct.usb_phy_generic_platform_data, %struct.usb_phy_generic_platform_data* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %10, align 8
  %64 = load %struct.usb_phy_generic_platform_data*, %struct.usb_phy_generic_platform_data** %7, align 8
  %65 = getelementptr inbounds %struct.usb_phy_generic_platform_data, %struct.usb_phy_generic_platform_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %11, align 4
  %67 = load %struct.usb_phy_generic_platform_data*, %struct.usb_phy_generic_platform_data** %7, align 8
  %68 = getelementptr inbounds %struct.usb_phy_generic_platform_data, %struct.usb_phy_generic_platform_data* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @gpio_is_valid(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %57
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = load %struct.usb_phy_generic_platform_data*, %struct.usb_phy_generic_platform_data** %7, align 8
  %75 = getelementptr inbounds %struct.usb_phy_generic_platform_data, %struct.usb_phy_generic_platform_data* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @GPIOF_ACTIVE_LOW, align 4
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = call i32 @dev_name(%struct.device* %78)
  %80 = call i32 @devm_gpio_request_one(%struct.device* %73, i32 %76, i32 %77, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %72
  %84 = load %struct.usb_phy_generic_platform_data*, %struct.usb_phy_generic_platform_data** %7, align 8
  %85 = getelementptr inbounds %struct.usb_phy_generic_platform_data, %struct.usb_phy_generic_platform_data* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @gpio_to_desc(i32 %86)
  %88 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %89 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  br label %90

90:                                               ; preds = %83, %72
  br label %91

91:                                               ; preds = %90, %57
  %92 = load %struct.usb_phy_generic_platform_data*, %struct.usb_phy_generic_platform_data** %7, align 8
  %93 = getelementptr inbounds %struct.usb_phy_generic_platform_data, %struct.usb_phy_generic_platform_data* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %96 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %95, i32 0, i32 5
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %91, %54
  br label %98

98:                                               ; preds = %97, %53
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @EPROBE_DEFER, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* @EPROBE_DEFER, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %254

106:                                              ; preds = %98
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load %struct.device*, %struct.device** %5, align 8
  %111 = call i32 @dev_err(%struct.device* %110, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %4, align 4
  br label %254

113:                                              ; preds = %106
  %114 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %115 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %114, i32 0, i32 4
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %120 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %119, i32 0, i32 4
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @gpiod_direction_output(i8* %121, i32 1)
  br label %123

123:                                              ; preds = %118, %113
  %124 = load %struct.device*, %struct.device** %5, align 8
  %125 = load i32, i32* @GFP_KERNEL, align 4
  %126 = call %struct.TYPE_4__* @devm_kzalloc(%struct.device* %124, i32 24, i32 %125)
  %127 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %128 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  store %struct.TYPE_4__* %126, %struct.TYPE_4__** %129, align 8
  %130 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %131 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = icmp ne %struct.TYPE_4__* %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %123
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %4, align 4
  br label %254

138:                                              ; preds = %123
  %139 = load %struct.device*, %struct.device** %5, align 8
  %140 = call i32 @devm_clk_get(%struct.device* %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %141 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %142 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  %143 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %144 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @IS_ERR(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %138
  %149 = load %struct.device*, %struct.device** %5, align 8
  %150 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %151 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @PTR_ERR(i32 %152)
  %154 = call i32 @dev_dbg(%struct.device* %149, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %148
  %158 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %159 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @PTR_ERR(i32 %160)
  store i32 %161, i32* %4, align 4
  br label %254

162:                                              ; preds = %148
  br label %163

163:                                              ; preds = %162, %138
  %164 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %165 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @IS_ERR(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %185, label %169

169:                                              ; preds = %163
  %170 = load i64, i64* %10, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %169
  %173 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %174 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load i64, i64* %10, align 8
  %177 = call i32 @clk_set_rate(i32 %175, i64 %176)
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %9, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %172
  %181 = load %struct.device*, %struct.device** %5, align 8
  %182 = call i32 @dev_err(%struct.device* %181, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %183 = load i32, i32* %9, align 4
  store i32 %183, i32* %4, align 4
  br label %254

184:                                              ; preds = %172
  br label %185

185:                                              ; preds = %184, %169, %163
  %186 = load %struct.device*, %struct.device** %5, align 8
  %187 = call i32 @devm_regulator_get(%struct.device* %186, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %188 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %189 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 8
  %190 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %191 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i64 @IS_ERR(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %208

195:                                              ; preds = %185
  %196 = load %struct.device*, %struct.device** %5, align 8
  %197 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %198 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @PTR_ERR(i32 %199)
  %201 = call i32 @dev_dbg(%struct.device* %196, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* %11, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %195
  %205 = load i32, i32* @EPROBE_DEFER, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %4, align 4
  br label %254

207:                                              ; preds = %195
  br label %208

208:                                              ; preds = %207, %185
  %209 = load %struct.device*, %struct.device** %5, align 8
  %210 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %211 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %210, i32 0, i32 1
  store %struct.device* %209, %struct.device** %211, align 8
  %212 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %213 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %212, i32 0, i32 1
  %214 = load %struct.device*, %struct.device** %213, align 8
  %215 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %216 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 4
  store %struct.device* %214, %struct.device** %217, align 8
  %218 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %219 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8** %220, align 8
  %221 = load i32, i32* @nop_set_suspend, align 4
  %222 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %223 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 3
  store i32 %221, i32* %224, align 8
  %225 = load i32, i32* %8, align 4
  %226 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %227 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 1
  store i32 %225, i32* %228, align 8
  %229 = load i32, i32* @OTG_STATE_UNDEFINED, align 4
  %230 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %231 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 2
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 3
  store i32 %229, i32* %234, align 8
  %235 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %236 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %235, i32 0, i32 0
  %237 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %238 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 2
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 2
  store %struct.TYPE_3__* %236, %struct.TYPE_3__** %241, align 8
  %242 = load i32, i32* @nop_set_host, align 4
  %243 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %244 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 2
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 1
  store i32 %242, i32* %247, align 4
  %248 = load i32, i32* @nop_set_peripheral, align 4
  %249 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %250 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 2
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  store i32 %248, i32* %253, align 8
  store i32 0, i32* %4, align 4
  br label %254

254:                                              ; preds = %208, %204, %180, %157, %135, %109, %103
  %255 = load i32, i32* %4, align 4
  ret i32 %255
}

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i8*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i8* @gpio_to_desc(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @gpiod_direction_output(i8*, i32) #1

declare dso_local %struct.TYPE_4__* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
