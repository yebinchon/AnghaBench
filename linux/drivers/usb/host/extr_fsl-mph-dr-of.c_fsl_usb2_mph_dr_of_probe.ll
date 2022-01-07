; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fsl-mph-dr-of.c_fsl_usb2_mph_dr_of_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fsl-mph-dr-of.c_fsl_usb2_mph_dr_of_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.fsl_usb2_platform_data = type { i32, i32, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.fsl_usb2_dev_data = type { i32*, i32 }
%struct.of_device_id = type { i64 }

@fsl_usb2_mph_dr_of_probe.idx = internal global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@fsl_usb2_mph_dr_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"fsl-usb2-mph\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"port0\00", align 1
@FSL_USB2_PORT0_ENABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"port1\00", align 1
@FSL_USB2_PORT1_ENABLED = common dso_local global i32 0, align 4
@FSL_USB2_MPH_HOST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"fsl,invert-drvvbus\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"fsl,invert-pwr-fault\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"phy_type\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"fsl,usb-erratum-a007792\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"fsl,usb-erratum-a005275\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"fsl,usb_erratum-a005697\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"fsl,usb_erratum-a006918\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"fsl,usb_erratum-14\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"phy-clk-valid\00", align 1
@FSL_USB_VER_NONE = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [34 x i8] c"Could not get controller version\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Can't register usb device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsl_usb2_mph_dr_of_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_usb2_mph_dr_of_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.fsl_usb2_platform_data, align 8
  %7 = alloca %struct.fsl_usb2_platform_data*, align 8
  %8 = alloca %struct.fsl_usb2_dev_data*, align 8
  %9 = alloca %struct.of_device_id*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %4, align 8
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = call i32 @of_device_is_available(%struct.device_node* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %194

22:                                               ; preds = %1
  %23 = load i32, i32* @fsl_usb2_mph_dr_of_match, align 4
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call %struct.of_device_id* @of_match_device(i32 %23, %struct.TYPE_4__* %25)
  store %struct.of_device_id* %26, %struct.of_device_id** %9, align 8
  %27 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %28 = icmp ne %struct.of_device_id* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %194

32:                                               ; preds = %22
  store %struct.fsl_usb2_platform_data* %6, %struct.fsl_usb2_platform_data** %7, align 8
  %33 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %34 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %7, align 8
  %39 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %40 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @memcpy(%struct.fsl_usb2_platform_data* %38, i64 %41, i32 88)
  br label %46

43:                                               ; preds = %32
  %44 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %7, align 8
  %45 = call i32 @memset(%struct.fsl_usb2_platform_data* %44, i32 0, i32 88)
  br label %46

46:                                               ; preds = %43, %37
  %47 = load %struct.device_node*, %struct.device_node** %4, align 8
  %48 = call %struct.fsl_usb2_dev_data* @get_dr_mode_data(%struct.device_node* %47)
  store %struct.fsl_usb2_dev_data* %48, %struct.fsl_usb2_dev_data** %8, align 8
  %49 = load %struct.device_node*, %struct.device_node** %4, align 8
  %50 = call i64 @of_device_is_compatible(%struct.device_node* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %46
  %53 = load %struct.device_node*, %struct.device_node** %4, align 8
  %54 = call i8* @of_get_property(%struct.device_node* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* @FSL_USB2_PORT0_ENABLED, align 4
  %58 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %7, align 8
  %59 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %58, i32 0, i32 12
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %56, %52
  %63 = load %struct.device_node*, %struct.device_node** %4, align 8
  %64 = call i8* @of_get_property(%struct.device_node* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32, i32* @FSL_USB2_PORT1_ENABLED, align 4
  %68 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %7, align 8
  %69 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %68, i32 0, i32 12
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %66, %62
  %73 = load i32, i32* @FSL_USB2_MPH_HOST, align 4
  %74 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %7, align 8
  %75 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %74, i32 0, i32 11
  store i32 %73, i32* %75, align 4
  br label %96

76:                                               ; preds = %46
  %77 = load %struct.device_node*, %struct.device_node** %4, align 8
  %78 = call i8* @of_get_property(%struct.device_node* %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %7, align 8
  %82 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %76
  %84 = load %struct.device_node*, %struct.device_node** %4, align 8
  %85 = call i8* @of_get_property(%struct.device_node* %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %7, align 8
  %89 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %83
  %91 = load %struct.fsl_usb2_dev_data*, %struct.fsl_usb2_dev_data** %8, align 8
  %92 = getelementptr inbounds %struct.fsl_usb2_dev_data, %struct.fsl_usb2_dev_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %7, align 8
  %95 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %94, i32 0, i32 11
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %90, %72
  %97 = load %struct.device_node*, %struct.device_node** %4, align 8
  %98 = call i8* @of_get_property(%struct.device_node* %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* null)
  store i8* %98, i8** %10, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 @determine_usb_phy(i8* %99)
  %101 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %7, align 8
  %102 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %101, i32 0, i32 10
  store i32 %100, i32* %102, align 8
  %103 = load %struct.device_node*, %struct.device_node** %4, align 8
  %104 = call i64 @usb_get_ver_info(%struct.device_node* %103)
  %105 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %7, align 8
  %106 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %105, i32 0, i32 2
  store i64 %104, i64* %106, align 8
  %107 = load %struct.device_node*, %struct.device_node** %4, align 8
  %108 = call i8* @of_property_read_bool(%struct.device_node* %107, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %109 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %7, align 8
  %110 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %109, i32 0, i32 9
  store i8* %108, i8** %110, align 8
  %111 = load %struct.device_node*, %struct.device_node** %4, align 8
  %112 = call i8* @of_property_read_bool(%struct.device_node* %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %113 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %7, align 8
  %114 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %113, i32 0, i32 8
  store i8* %112, i8** %114, align 8
  %115 = load %struct.device_node*, %struct.device_node** %4, align 8
  %116 = call i8* @of_property_read_bool(%struct.device_node* %115, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %117 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %7, align 8
  %118 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %117, i32 0, i32 7
  store i8* %116, i8** %118, align 8
  %119 = load %struct.device_node*, %struct.device_node** %4, align 8
  %120 = call i8* @of_property_read_bool(%struct.device_node* %119, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %121 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %7, align 8
  %122 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %121, i32 0, i32 6
  store i8* %120, i8** %122, align 8
  %123 = load %struct.device_node*, %struct.device_node** %4, align 8
  %124 = call i8* @of_property_read_bool(%struct.device_node* %123, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %125 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %7, align 8
  %126 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %125, i32 0, i32 5
  store i8* %124, i8** %126, align 8
  %127 = load %struct.device_node*, %struct.device_node** %4, align 8
  %128 = call i8* @of_property_read_bool(%struct.device_node* %127, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %129 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %7, align 8
  %130 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %129, i32 0, i32 4
  store i8* %128, i8** %130, align 8
  %131 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %7, align 8
  %132 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %96
  %136 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %7, align 8
  %137 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @FSL_USB_VER_NONE, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %135
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i32 @dev_warn(%struct.TYPE_4__* %143, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %145 = load i32, i32* @ENODEV, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %2, align 4
  br label %194

147:                                              ; preds = %135
  br label %148

148:                                              ; preds = %147, %96
  store i32 0, i32* %11, align 4
  br label %149

149:                                              ; preds = %188, %148
  %150 = load i32, i32* %11, align 4
  %151 = load %struct.fsl_usb2_dev_data*, %struct.fsl_usb2_dev_data** %8, align 8
  %152 = getelementptr inbounds %struct.fsl_usb2_dev_data, %struct.fsl_usb2_dev_data* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @ARRAY_SIZE(i32* %153)
  %155 = icmp slt i32 %150, %154
  br i1 %155, label %156, label %191

156:                                              ; preds = %149
  %157 = load %struct.fsl_usb2_dev_data*, %struct.fsl_usb2_dev_data** %8, align 8
  %158 = getelementptr inbounds %struct.fsl_usb2_dev_data, %struct.fsl_usb2_dev_data* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %156
  br label %188

166:                                              ; preds = %156
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %7, align 8
  %169 = load %struct.fsl_usb2_dev_data*, %struct.fsl_usb2_dev_data** %8, align 8
  %170 = getelementptr inbounds %struct.fsl_usb2_dev_data, %struct.fsl_usb2_dev_data* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @fsl_usb2_mph_dr_of_probe.idx, align 4
  %177 = call %struct.platform_device* @fsl_usb2_device_register(%struct.platform_device* %167, %struct.fsl_usb2_platform_data* %168, i32 %175, i32 %176)
  store %struct.platform_device* %177, %struct.platform_device** %5, align 8
  %178 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %179 = call i64 @IS_ERR(%struct.platform_device* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %166
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 0
  %184 = call i32 @dev_err(%struct.TYPE_4__* %183, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %185 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %186 = call i32 @PTR_ERR(%struct.platform_device* %185)
  store i32 %186, i32* %2, align 4
  br label %194

187:                                              ; preds = %166
  br label %188

188:                                              ; preds = %187, %165
  %189 = load i32, i32* %11, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %11, align 4
  br label %149

191:                                              ; preds = %149
  %192 = load i32, i32* @fsl_usb2_mph_dr_of_probe.idx, align 4
  %193 = add i32 %192, 1
  store i32 %193, i32* @fsl_usb2_mph_dr_of_probe.idx, align 4
  store i32 0, i32* %2, align 4
  br label %194

194:                                              ; preds = %191, %181, %141, %29, %19
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(%struct.fsl_usb2_platform_data*, i64, i32) #1

declare dso_local i32 @memset(%struct.fsl_usb2_platform_data*, i32, i32) #1

declare dso_local %struct.fsl_usb2_dev_data* @get_dr_mode_data(%struct.device_node*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @determine_usb_phy(i8*) #1

declare dso_local i64 @usb_get_ver_info(%struct.device_node*) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.platform_device* @fsl_usb2_device_register(%struct.platform_device*, %struct.fsl_usb2_platform_data*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
