; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-apb-ctrl.c_apb_ctrl_get_devtree_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-apb-ctrl.c_apb_ctrl_get_devtree_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.arche_apb_ctrl_drvdata = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed requesting reset GPIO: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"boot-ret\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed requesting bootret GPIO: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"pwr-off\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed requesting pwroff_n GPIO: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"clock-en\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Failed requesting APB clock en GPIO: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"pwr-down\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Failed requesting power down GPIO: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"vcore\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"no core regulator found\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"vio\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"no IO regulator found\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"could not get pinctrl handle\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"could not get default pin state\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"gb,spi-en-active-high\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.arche_apb_ctrl_drvdata*)* @apb_ctrl_get_devtree_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apb_ctrl_get_devtree_data(%struct.platform_device* %0, %struct.arche_apb_ctrl_drvdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.arche_apb_ctrl_drvdata*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.arche_apb_ctrl_drvdata* %1, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %12 = call i8* @devm_gpiod_get(%struct.device* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %14 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %13, i32 0, i32 9
  store i8* %12, i8** %14, align 8
  %15 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %16 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %15, i32 0, i32 9
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @IS_ERR(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %22 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %21, i32 0, i32 9
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @PTR_ERR(i8* %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %185

29:                                               ; preds = %2
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %32 = call i8* @devm_gpiod_get(%struct.device* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %34 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %33, i32 0, i32 8
  store i8* %32, i8** %34, align 8
  %35 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %36 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %35, i32 0, i32 8
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @IS_ERR(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %29
  %41 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %42 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %41, i32 0, i32 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @PTR_ERR(i8* %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %185

49:                                               ; preds = %29
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = load i32, i32* @GPIOD_IN, align 4
  %52 = call i8* @devm_gpiod_get_optional(%struct.device* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %54 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %53, i32 0, i32 7
  store i8* %52, i8** %54, align 8
  %55 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %56 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %55, i32 0, i32 7
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @IS_ERR(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %49
  %61 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %62 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %61, i32 0, i32 7
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @PTR_ERR(i8* %63)
  store i32 %64, i32* %7, align 4
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %185

69:                                               ; preds = %49
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %72 = call i8* @devm_gpiod_get_optional(%struct.device* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %71)
  %73 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %74 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %73, i32 0, i32 6
  store i8* %72, i8** %74, align 8
  %75 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %76 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %75, i32 0, i32 6
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @IS_ERR(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %69
  %81 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %82 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %81, i32 0, i32 6
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @PTR_ERR(i8* %83)
  store i32 %84, i32* %7, align 4
  %85 = load %struct.device*, %struct.device** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %3, align 4
  br label %185

89:                                               ; preds = %69
  %90 = load %struct.device*, %struct.device** %6, align 8
  %91 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %92 = call i8* @devm_gpiod_get(%struct.device* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %91)
  %93 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %94 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %93, i32 0, i32 5
  store i8* %92, i8** %94, align 8
  %95 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %96 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %95, i32 0, i32 5
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @IS_ERR(i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %89
  %101 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %102 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %101, i32 0, i32 5
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @PTR_ERR(i8* %103)
  store i32 %104, i32* %7, align 4
  %105 = load %struct.device*, %struct.device** %6, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %105, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %3, align 4
  br label %185

109:                                              ; preds = %89
  %110 = load %struct.device*, %struct.device** %6, align 8
  %111 = call i8* @devm_regulator_get(%struct.device* %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %112 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %113 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %112, i32 0, i32 4
  store i8* %111, i8** %113, align 8
  %114 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %115 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %114, i32 0, i32 4
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @IS_ERR(i8* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %109
  %120 = load %struct.device*, %struct.device** %6, align 8
  %121 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %109
  %123 = load %struct.device*, %struct.device** %6, align 8
  %124 = call i8* @devm_regulator_get(%struct.device* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %125 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %126 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %125, i32 0, i32 3
  store i8* %124, i8** %126, align 8
  %127 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %128 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %127, i32 0, i32 3
  %129 = load i8*, i8** %128, align 8
  %130 = call i64 @IS_ERR(i8* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %122
  %133 = load %struct.device*, %struct.device** %6, align 8
  %134 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %133, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %135

135:                                              ; preds = %132, %122
  %136 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i8* @devm_pinctrl_get(%struct.device* %137)
  %139 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %140 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %139, i32 0, i32 2
  store i8* %138, i8** %140, align 8
  %141 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %142 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @IS_ERR(i8* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %135
  %147 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %148, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  %150 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %151 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %150, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @PTR_ERR(i8* %152)
  store i32 %153, i32* %3, align 4
  br label %185

154:                                              ; preds = %135
  %155 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %156 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %155, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  %158 = call i8* @pinctrl_lookup_state(i8* %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %159 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %160 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %159, i32 0, i32 1
  store i8* %158, i8** %160, align 8
  %161 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %162 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = call i64 @IS_ERR(i8* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %154
  %167 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %168, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  %170 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %171 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @PTR_ERR(i8* %172)
  store i32 %173, i32* %3, align 4
  br label %185

174:                                              ; preds = %154
  %175 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.device, %struct.device* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @of_property_read_bool(i32 %178, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %174
  %182 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %183 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %182, i32 0, i32 0
  store i32 1, i32* %183, align 8
  br label %184

184:                                              ; preds = %181, %174
  store i32 0, i32* %3, align 4
  br label %185

185:                                              ; preds = %184, %166, %146, %100, %80, %60, %40, %20
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i8* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i8* @devm_pinctrl_get(%struct.device*) #1

declare dso_local i8* @pinctrl_lookup_state(i8*, i8*) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
