; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_bos_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_bos_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_composite_dev = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.usb_ssp_cap_descriptor* }
%struct.usb_ssp_cap_descriptor = type { i32, i32, i8*, i8**, i8*, i8*, i64, i64, i32, i8*, i64, i8*, i32, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_8__*, %struct.usb_dcd_config_params*)* }
%struct.usb_dcd_config_params = type { i64, i64, i8*, i32 }
%struct.usb_ext_cap_descriptor = type { i32, i32, i8*, i8**, i8*, i8*, i64, i64, i32, i8*, i64, i8*, i32, i8* }
%struct.usb_bos_descriptor = type { i32, i32, i8*, i8**, i8*, i8*, i64, i64, i32, i8*, i64, i8*, i32, i8* }
%struct.usb_ss_cap_descriptor = type { i32, i32, i8*, i8**, i8*, i8*, i64, i64, i32, i8*, i64, i8*, i32, i8* }

@USB_DT_BOS_SIZE = common dso_local global i32 0, align 4
@USB_DT_BOS = common dso_local global i8* null, align 8
@USB_DEFAULT_BESL_UNSPECIFIED = common dso_local global i64 0, align 8
@USB_DEFAULT_U1_DEV_EXIT_LAT = common dso_local global i32 0, align 4
@USB_DEFAULT_U2_DEV_EXIT_LAT = common dso_local global i32 0, align 4
@USB_BESL_BASELINE_VALID = common dso_local global i32 0, align 4
@USB_BESL_DEEP_VALID = common dso_local global i32 0, align 4
@USB_DT_USB_EXT_CAP_SIZE = common dso_local global i8* null, align 8
@USB_DT_DEVICE_CAPABILITY = common dso_local global i8* null, align 8
@USB_CAP_TYPE_EXT = common dso_local global i32 0, align 4
@USB_LPM_SUPPORT = common dso_local global i32 0, align 4
@USB_BESL_SUPPORT = common dso_local global i32 0, align 4
@USB_DT_USB_SS_CAP_SIZE = common dso_local global i8* null, align 8
@USB_SS_CAP_TYPE = common dso_local global i32 0, align 4
@USB_LOW_SPEED_OPERATION = common dso_local global i32 0, align 4
@USB_FULL_SPEED_OPERATION = common dso_local global i32 0, align 4
@USB_HIGH_SPEED_OPERATION = common dso_local global i32 0, align 4
@USB_5GBPS_OPERATION = common dso_local global i32 0, align 4
@USB_SSP_CAP_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_composite_dev*)* @bos_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bos_desc(%struct.usb_composite_dev* %0) #0 {
  %2 = alloca %struct.usb_composite_dev*, align 8
  %3 = alloca %struct.usb_ext_cap_descriptor*, align 8
  %4 = alloca %struct.usb_dcd_config_params, align 8
  %5 = alloca %struct.usb_bos_descriptor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_ss_cap_descriptor*, align 8
  %8 = alloca %struct.usb_ssp_cap_descriptor*, align 8
  store %struct.usb_composite_dev* %0, %struct.usb_composite_dev** %2, align 8
  %9 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %2, align 8
  %10 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.usb_ssp_cap_descriptor*, %struct.usb_ssp_cap_descriptor** %12, align 8
  %14 = bitcast %struct.usb_ssp_cap_descriptor* %13 to %struct.usb_bos_descriptor*
  store %struct.usb_bos_descriptor* %14, %struct.usb_bos_descriptor** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load i32, i32* @USB_DT_BOS_SIZE, align 4
  %16 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %5, align 8
  %17 = getelementptr inbounds %struct.usb_bos_descriptor, %struct.usb_bos_descriptor* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i8*, i8** @USB_DT_BOS, align 8
  %19 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %5, align 8
  %20 = getelementptr inbounds %struct.usb_bos_descriptor, %struct.usb_bos_descriptor* %19, i32 0, i32 9
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @USB_DT_BOS_SIZE, align 4
  %22 = call i8* @cpu_to_le16(i32 %21)
  %23 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %5, align 8
  %24 = getelementptr inbounds %struct.usb_bos_descriptor, %struct.usb_bos_descriptor* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %5, align 8
  %26 = getelementptr inbounds %struct.usb_bos_descriptor, %struct.usb_bos_descriptor* %25, i32 0, i32 10
  store i64 0, i64* %26, align 8
  %27 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %2, align 8
  %28 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_8__*, %struct.usb_dcd_config_params*)*, i32 (%struct.TYPE_8__*, %struct.usb_dcd_config_params*)** %32, align 8
  %34 = icmp ne i32 (%struct.TYPE_8__*, %struct.usb_dcd_config_params*)* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %1
  %36 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %2, align 8
  %37 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_8__*, %struct.usb_dcd_config_params*)*, i32 (%struct.TYPE_8__*, %struct.usb_dcd_config_params*)** %41, align 8
  %43 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %2, align 8
  %44 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = call i32 %42(%struct.TYPE_8__* %45, %struct.usb_dcd_config_params* %4)
  br label %57

47:                                               ; preds = %1
  %48 = load i64, i64* @USB_DEFAULT_BESL_UNSPECIFIED, align 8
  %49 = getelementptr inbounds %struct.usb_dcd_config_params, %struct.usb_dcd_config_params* %4, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = load i64, i64* @USB_DEFAULT_BESL_UNSPECIFIED, align 8
  %51 = getelementptr inbounds %struct.usb_dcd_config_params, %struct.usb_dcd_config_params* %4, i32 0, i32 1
  store i64 %50, i64* %51, align 8
  %52 = load i32, i32* @USB_DEFAULT_U1_DEV_EXIT_LAT, align 4
  %53 = getelementptr inbounds %struct.usb_dcd_config_params, %struct.usb_dcd_config_params* %4, i32 0, i32 3
  store i32 %52, i32* %53, align 8
  %54 = load i32, i32* @USB_DEFAULT_U2_DEV_EXIT_LAT, align 4
  %55 = call i8* @cpu_to_le16(i32 %54)
  %56 = getelementptr inbounds %struct.usb_dcd_config_params, %struct.usb_dcd_config_params* %4, i32 0, i32 2
  store i8* %55, i8** %56, align 8
  br label %57

57:                                               ; preds = %47, %35
  %58 = getelementptr inbounds %struct.usb_dcd_config_params, %struct.usb_dcd_config_params* %4, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @USB_DEFAULT_BESL_UNSPECIFIED, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32, i32* @USB_BESL_BASELINE_VALID, align 4
  %64 = getelementptr inbounds %struct.usb_dcd_config_params, %struct.usb_dcd_config_params* %4, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @USB_SET_BESL_BASELINE(i64 %65)
  %67 = or i32 %63, %66
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %62, %57
  %69 = getelementptr inbounds %struct.usb_dcd_config_params, %struct.usb_dcd_config_params* %4, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @USB_DEFAULT_BESL_UNSPECIFIED, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load i32, i32* @USB_BESL_DEEP_VALID, align 4
  %75 = getelementptr inbounds %struct.usb_dcd_config_params, %struct.usb_dcd_config_params* %4, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @USB_SET_BESL_DEEP(i64 %76)
  %78 = or i32 %74, %77
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %73, %68
  %82 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %2, align 8
  %83 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load %struct.usb_ssp_cap_descriptor*, %struct.usb_ssp_cap_descriptor** %85, align 8
  %87 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %5, align 8
  %88 = getelementptr inbounds %struct.usb_bos_descriptor, %struct.usb_bos_descriptor* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @le16_to_cpu(i8* %89)
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.usb_ssp_cap_descriptor, %struct.usb_ssp_cap_descriptor* %86, i64 %91
  %93 = bitcast %struct.usb_ssp_cap_descriptor* %92 to %struct.usb_ext_cap_descriptor*
  store %struct.usb_ext_cap_descriptor* %93, %struct.usb_ext_cap_descriptor** %3, align 8
  %94 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %5, align 8
  %95 = getelementptr inbounds %struct.usb_bos_descriptor, %struct.usb_bos_descriptor* %94, i32 0, i32 10
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %95, align 8
  %98 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %5, align 8
  %99 = getelementptr inbounds %struct.usb_bos_descriptor, %struct.usb_bos_descriptor* %98, i32 0, i32 2
  %100 = load i8*, i8** @USB_DT_USB_EXT_CAP_SIZE, align 8
  %101 = call i32 @le16_add_cpu(i8** %99, i8* %100)
  %102 = load i8*, i8** @USB_DT_USB_EXT_CAP_SIZE, align 8
  %103 = ptrtoint i8* %102 to i32
  %104 = load %struct.usb_ext_cap_descriptor*, %struct.usb_ext_cap_descriptor** %3, align 8
  %105 = getelementptr inbounds %struct.usb_ext_cap_descriptor, %struct.usb_ext_cap_descriptor* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i8*, i8** @USB_DT_DEVICE_CAPABILITY, align 8
  %107 = load %struct.usb_ext_cap_descriptor*, %struct.usb_ext_cap_descriptor** %3, align 8
  %108 = getelementptr inbounds %struct.usb_ext_cap_descriptor, %struct.usb_ext_cap_descriptor* %107, i32 0, i32 9
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* @USB_CAP_TYPE_EXT, align 4
  %110 = load %struct.usb_ext_cap_descriptor*, %struct.usb_ext_cap_descriptor** %3, align 8
  %111 = getelementptr inbounds %struct.usb_ext_cap_descriptor, %struct.usb_ext_cap_descriptor* %110, i32 0, i32 8
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @USB_LPM_SUPPORT, align 4
  %113 = load i32, i32* @USB_BESL_SUPPORT, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* %6, align 4
  %116 = or i32 %114, %115
  %117 = call i8* @cpu_to_le32(i32 %116)
  %118 = load %struct.usb_ext_cap_descriptor*, %struct.usb_ext_cap_descriptor** %3, align 8
  %119 = getelementptr inbounds %struct.usb_ext_cap_descriptor, %struct.usb_ext_cap_descriptor* %118, i32 0, i32 5
  store i8* %117, i8** %119, align 8
  %120 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %2, align 8
  %121 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %120, i32 0, i32 1
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = call i64 @gadget_is_superspeed(%struct.TYPE_8__* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %179

125:                                              ; preds = %81
  %126 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %2, align 8
  %127 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load %struct.usb_ssp_cap_descriptor*, %struct.usb_ssp_cap_descriptor** %129, align 8
  %131 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %5, align 8
  %132 = getelementptr inbounds %struct.usb_bos_descriptor, %struct.usb_bos_descriptor* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @le16_to_cpu(i8* %133)
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.usb_ssp_cap_descriptor, %struct.usb_ssp_cap_descriptor* %130, i64 %135
  %137 = bitcast %struct.usb_ssp_cap_descriptor* %136 to %struct.usb_ss_cap_descriptor*
  store %struct.usb_ss_cap_descriptor* %137, %struct.usb_ss_cap_descriptor** %7, align 8
  %138 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %5, align 8
  %139 = getelementptr inbounds %struct.usb_bos_descriptor, %struct.usb_bos_descriptor* %138, i32 0, i32 10
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %139, align 8
  %142 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %5, align 8
  %143 = getelementptr inbounds %struct.usb_bos_descriptor, %struct.usb_bos_descriptor* %142, i32 0, i32 2
  %144 = load i8*, i8** @USB_DT_USB_SS_CAP_SIZE, align 8
  %145 = call i32 @le16_add_cpu(i8** %143, i8* %144)
  %146 = load i8*, i8** @USB_DT_USB_SS_CAP_SIZE, align 8
  %147 = ptrtoint i8* %146 to i32
  %148 = load %struct.usb_ss_cap_descriptor*, %struct.usb_ss_cap_descriptor** %7, align 8
  %149 = getelementptr inbounds %struct.usb_ss_cap_descriptor, %struct.usb_ss_cap_descriptor* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load i8*, i8** @USB_DT_DEVICE_CAPABILITY, align 8
  %151 = load %struct.usb_ss_cap_descriptor*, %struct.usb_ss_cap_descriptor** %7, align 8
  %152 = getelementptr inbounds %struct.usb_ss_cap_descriptor, %struct.usb_ss_cap_descriptor* %151, i32 0, i32 9
  store i8* %150, i8** %152, align 8
  %153 = load i32, i32* @USB_SS_CAP_TYPE, align 4
  %154 = load %struct.usb_ss_cap_descriptor*, %struct.usb_ss_cap_descriptor** %7, align 8
  %155 = getelementptr inbounds %struct.usb_ss_cap_descriptor, %struct.usb_ss_cap_descriptor* %154, i32 0, i32 8
  store i32 %153, i32* %155, align 8
  %156 = load %struct.usb_ss_cap_descriptor*, %struct.usb_ss_cap_descriptor** %7, align 8
  %157 = getelementptr inbounds %struct.usb_ss_cap_descriptor, %struct.usb_ss_cap_descriptor* %156, i32 0, i32 5
  store i8* null, i8** %157, align 8
  %158 = load i32, i32* @USB_LOW_SPEED_OPERATION, align 4
  %159 = load i32, i32* @USB_FULL_SPEED_OPERATION, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @USB_HIGH_SPEED_OPERATION, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @USB_5GBPS_OPERATION, align 4
  %164 = or i32 %162, %163
  %165 = call i8* @cpu_to_le16(i32 %164)
  %166 = load %struct.usb_ss_cap_descriptor*, %struct.usb_ss_cap_descriptor** %7, align 8
  %167 = getelementptr inbounds %struct.usb_ss_cap_descriptor, %struct.usb_ss_cap_descriptor* %166, i32 0, i32 13
  store i8* %165, i8** %167, align 8
  %168 = load i32, i32* @USB_LOW_SPEED_OPERATION, align 4
  %169 = load %struct.usb_ss_cap_descriptor*, %struct.usb_ss_cap_descriptor** %7, align 8
  %170 = getelementptr inbounds %struct.usb_ss_cap_descriptor, %struct.usb_ss_cap_descriptor* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = getelementptr inbounds %struct.usb_dcd_config_params, %struct.usb_dcd_config_params* %4, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.usb_ss_cap_descriptor*, %struct.usb_ss_cap_descriptor** %7, align 8
  %174 = getelementptr inbounds %struct.usb_ss_cap_descriptor, %struct.usb_ss_cap_descriptor* %173, i32 0, i32 12
  store i32 %172, i32* %174, align 8
  %175 = getelementptr inbounds %struct.usb_dcd_config_params, %struct.usb_dcd_config_params* %4, i32 0, i32 2
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.usb_ss_cap_descriptor*, %struct.usb_ss_cap_descriptor** %7, align 8
  %178 = getelementptr inbounds %struct.usb_ss_cap_descriptor, %struct.usb_ss_cap_descriptor* %177, i32 0, i32 11
  store i8* %176, i8** %178, align 8
  br label %179

179:                                              ; preds = %125, %81
  %180 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %2, align 8
  %181 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %180, i32 0, i32 1
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = call i64 @gadget_is_superspeed_plus(%struct.TYPE_8__* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %235

185:                                              ; preds = %179
  %186 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %2, align 8
  %187 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %186, i32 0, i32 0
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load %struct.usb_ssp_cap_descriptor*, %struct.usb_ssp_cap_descriptor** %189, align 8
  %191 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %5, align 8
  %192 = getelementptr inbounds %struct.usb_bos_descriptor, %struct.usb_bos_descriptor* %191, i32 0, i32 2
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @le16_to_cpu(i8* %193)
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.usb_ssp_cap_descriptor, %struct.usb_ssp_cap_descriptor* %190, i64 %195
  store %struct.usb_ssp_cap_descriptor* %196, %struct.usb_ssp_cap_descriptor** %8, align 8
  %197 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %5, align 8
  %198 = getelementptr inbounds %struct.usb_bos_descriptor, %struct.usb_bos_descriptor* %197, i32 0, i32 10
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %199, 1
  store i64 %200, i64* %198, align 8
  %201 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %5, align 8
  %202 = getelementptr inbounds %struct.usb_bos_descriptor, %struct.usb_bos_descriptor* %201, i32 0, i32 2
  %203 = call i8* @USB_DT_USB_SSP_CAP_SIZE(i32 1)
  %204 = call i32 @le16_add_cpu(i8** %202, i8* %203)
  %205 = call i8* @USB_DT_USB_SSP_CAP_SIZE(i32 1)
  %206 = ptrtoint i8* %205 to i32
  %207 = load %struct.usb_ssp_cap_descriptor*, %struct.usb_ssp_cap_descriptor** %8, align 8
  %208 = getelementptr inbounds %struct.usb_ssp_cap_descriptor, %struct.usb_ssp_cap_descriptor* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  %209 = load i8*, i8** @USB_DT_DEVICE_CAPABILITY, align 8
  %210 = load %struct.usb_ssp_cap_descriptor*, %struct.usb_ssp_cap_descriptor** %8, align 8
  %211 = getelementptr inbounds %struct.usb_ssp_cap_descriptor, %struct.usb_ssp_cap_descriptor* %210, i32 0, i32 9
  store i8* %209, i8** %211, align 8
  %212 = load i32, i32* @USB_SSP_CAP_TYPE, align 4
  %213 = load %struct.usb_ssp_cap_descriptor*, %struct.usb_ssp_cap_descriptor** %8, align 8
  %214 = getelementptr inbounds %struct.usb_ssp_cap_descriptor, %struct.usb_ssp_cap_descriptor* %213, i32 0, i32 8
  store i32 %212, i32* %214, align 8
  %215 = load %struct.usb_ssp_cap_descriptor*, %struct.usb_ssp_cap_descriptor** %8, align 8
  %216 = getelementptr inbounds %struct.usb_ssp_cap_descriptor, %struct.usb_ssp_cap_descriptor* %215, i32 0, i32 7
  store i64 0, i64* %216, align 8
  %217 = load %struct.usb_ssp_cap_descriptor*, %struct.usb_ssp_cap_descriptor** %8, align 8
  %218 = getelementptr inbounds %struct.usb_ssp_cap_descriptor, %struct.usb_ssp_cap_descriptor* %217, i32 0, i32 6
  store i64 0, i64* %218, align 8
  %219 = call i8* @cpu_to_le32(i32 1)
  %220 = load %struct.usb_ssp_cap_descriptor*, %struct.usb_ssp_cap_descriptor** %8, align 8
  %221 = getelementptr inbounds %struct.usb_ssp_cap_descriptor, %struct.usb_ssp_cap_descriptor* %220, i32 0, i32 5
  store i8* %219, i8** %221, align 8
  %222 = call i8* @cpu_to_le16(i32 4352)
  %223 = load %struct.usb_ssp_cap_descriptor*, %struct.usb_ssp_cap_descriptor** %8, align 8
  %224 = getelementptr inbounds %struct.usb_ssp_cap_descriptor, %struct.usb_ssp_cap_descriptor* %223, i32 0, i32 4
  store i8* %222, i8** %224, align 8
  %225 = call i8* @cpu_to_le32(i32 671792)
  %226 = load %struct.usb_ssp_cap_descriptor*, %struct.usb_ssp_cap_descriptor** %8, align 8
  %227 = getelementptr inbounds %struct.usb_ssp_cap_descriptor, %struct.usb_ssp_cap_descriptor* %226, i32 0, i32 3
  %228 = load i8**, i8*** %227, align 8
  %229 = getelementptr inbounds i8*, i8** %228, i64 0
  store i8* %225, i8** %229, align 8
  %230 = call i8* @cpu_to_le32(i32 671920)
  %231 = load %struct.usb_ssp_cap_descriptor*, %struct.usb_ssp_cap_descriptor** %8, align 8
  %232 = getelementptr inbounds %struct.usb_ssp_cap_descriptor, %struct.usb_ssp_cap_descriptor* %231, i32 0, i32 3
  %233 = load i8**, i8*** %232, align 8
  %234 = getelementptr inbounds i8*, i8** %233, i64 1
  store i8* %230, i8** %234, align 8
  br label %235

235:                                              ; preds = %185, %179
  %236 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %5, align 8
  %237 = getelementptr inbounds %struct.usb_bos_descriptor, %struct.usb_bos_descriptor* %236, i32 0, i32 2
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @le16_to_cpu(i8* %238)
  ret i32 %239
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @USB_SET_BESL_BASELINE(i64) #1

declare dso_local i32 @USB_SET_BESL_DEEP(i64) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @le16_add_cpu(i8**, i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @gadget_is_superspeed(%struct.TYPE_8__*) #1

declare dso_local i64 @gadget_is_superspeed_plus(%struct.TYPE_8__*) #1

declare dso_local i8* @USB_DT_USB_SSP_CAP_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
