; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_usbpd_logger.c_cros_usbpd_print_log_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_usbpd_logger.c_cros_usbpd_print_log_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_response_pd_log = type { i32, i32, i32, i32, i32* }
%struct.usb_chg_measures = type { i32, i32, i32 }
%struct.mcdp_info = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i64, i64 }

@BUF_SIZE = common dso_local global i32 0, align 4
@PD_LOG_TIMESTAMP_SHIFT = common dso_local global i32 0, align 4
@CHARGE_FLAGS_OVERRIDE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"override \00", align 1
@CHARGE_FLAGS_DELAYED_OVERRIDE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"pending_override \00", align 1
@CHARGE_FLAGS_ROLE_MASK = common dso_local global i32 0, align 4
@role_names = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@CHARGE_FLAGS_TYPE_MASK = common dso_local global i32 0, align 4
@CHARGE_FLAGS_TYPE_SHIFT = common dso_local global i32 0, align 4
@chg_type_names = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@USB_PD_PORT_POWER_DISCONNECTED = common dso_local global i32 0, align 4
@USB_PD_PORT_POWER_SOURCE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%s %s %s %dmV max %dmV / %dmA\00", align 1
@CHARGE_FLAGS_DUAL_ROLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"DRP\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Charger\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"RW signature check failed\00", align 1
@fault_names = common dso_local global i8** null, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"Power supply fault: %s\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"DP mode %sabled\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"HDMI info: family:%04x chipid:%04x \00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"irom:%d.%d.%d fw:%d.%d.%d\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Event %02x (%04x) [\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@MSEC_PER_SEC = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [47 x i8] c"PDLOG %d/%02d/%02d %02d:%02d:%02d.%03d P%d %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ec_response_pd_log*, i32)* @cros_usbpd_print_log_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cros_usbpd_print_log_entry(%struct.ec_response_pd_log* %0, i32 %1) #0 {
  %3 = alloca %struct.ec_response_pd_log*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.usb_chg_measures*, align 8
  %9 = alloca %struct.mcdp_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.rtc_time, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.rtc_time, align 8
  store %struct.ec_response_pd_log* %0, %struct.ec_response_pd_log** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load i32, i32* @BUF_SIZE, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.ec_response_pd_log*, %struct.ec_response_pd_log** %3, align 8
  %26 = getelementptr inbounds %struct.ec_response_pd_log, %struct.ec_response_pd_log* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @PD_LOG_TIMESTAMP_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = call i32 @ktime_sub_us(i32 %24, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  call void @rtc_ktime_to_tm(%struct.rtc_time* sret %18, i32 %31)
  %32 = bitcast %struct.rtc_time* %14 to i8*
  %33 = bitcast %struct.rtc_time* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 32, i1 false)
  %34 = load %struct.ec_response_pd_log*, %struct.ec_response_pd_log** %3, align 8
  %35 = getelementptr inbounds %struct.ec_response_pd_log, %struct.ec_response_pd_log* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %225 [
    i32 131, label %37
    i32 132, label %141
    i32 130, label %146
    i32 128, label %169
    i32 129, label %180
  ]

37:                                               ; preds = %2
  %38 = load %struct.ec_response_pd_log*, %struct.ec_response_pd_log** %3, align 8
  %39 = getelementptr inbounds %struct.ec_response_pd_log, %struct.ec_response_pd_log* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @CHARGE_FLAGS_OVERRIDE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i32, i32* %15, align 4
  %46 = call i32 (i8*, i32, i8*, ...) @append_str(i8* %23, i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %15, align 4
  br label %49

49:                                               ; preds = %44, %37
  %50 = load %struct.ec_response_pd_log*, %struct.ec_response_pd_log** %3, align 8
  %51 = getelementptr inbounds %struct.ec_response_pd_log, %struct.ec_response_pd_log* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CHARGE_FLAGS_DELAYED_OVERRIDE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load i32, i32* %15, align 4
  %58 = call i32 (i8*, i32, i8*, ...) @append_str(i8* %23, i32 %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %56, %49
  %62 = load %struct.ec_response_pd_log*, %struct.ec_response_pd_log** %3, align 8
  %63 = getelementptr inbounds %struct.ec_response_pd_log, %struct.ec_response_pd_log* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @CHARGE_FLAGS_ROLE_MASK, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i8**, i8*** @role_names, align 8
  %69 = call i32 @ARRAY_SIZE(i8** %68)
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %61
  %72 = load i8**, i8*** @role_names, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  br label %78

77:                                               ; preds = %61
  br label %78

78:                                               ; preds = %77, %71
  %79 = phi i8* [ %76, %71 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %77 ]
  store i8* %79, i8** %6, align 8
  %80 = load %struct.ec_response_pd_log*, %struct.ec_response_pd_log** %3, align 8
  %81 = getelementptr inbounds %struct.ec_response_pd_log, %struct.ec_response_pd_log* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @CHARGE_FLAGS_TYPE_MASK, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @CHARGE_FLAGS_TYPE_SHIFT, align 4
  %86 = ashr i32 %84, %85
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i8**, i8*** @chg_type_names, align 8
  %89 = call i32 @ARRAY_SIZE(i8** %88)
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %78
  %92 = load i8**, i8*** @chg_type_names, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  br label %98

97:                                               ; preds = %78
  br label %98

98:                                               ; preds = %97, %91
  %99 = phi i8* [ %96, %91 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %97 ]
  store i8* %99, i8** %7, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @USB_PD_PORT_POWER_DISCONNECTED, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @USB_PD_PORT_POWER_SOURCE, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %103, %98
  %108 = load i32, i32* %15, align 4
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 (i8*, i32, i8*, ...) @append_str(i8* %23, i32 %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %109)
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %15, align 4
  br label %263

113:                                              ; preds = %103
  %114 = load %struct.ec_response_pd_log*, %struct.ec_response_pd_log** %3, align 8
  %115 = getelementptr inbounds %struct.ec_response_pd_log, %struct.ec_response_pd_log* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = bitcast i32* %116 to %struct.usb_chg_measures*
  store %struct.usb_chg_measures* %117, %struct.usb_chg_measures** %8, align 8
  %118 = load i32, i32* %15, align 4
  %119 = load i8*, i8** %6, align 8
  %120 = load %struct.ec_response_pd_log*, %struct.ec_response_pd_log** %3, align 8
  %121 = getelementptr inbounds %struct.ec_response_pd_log, %struct.ec_response_pd_log* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @CHARGE_FLAGS_DUAL_ROLE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)
  %128 = load i8*, i8** %7, align 8
  %129 = load %struct.usb_chg_measures*, %struct.usb_chg_measures** %8, align 8
  %130 = getelementptr inbounds %struct.usb_chg_measures, %struct.usb_chg_measures* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.usb_chg_measures*, %struct.usb_chg_measures** %8, align 8
  %133 = getelementptr inbounds %struct.usb_chg_measures, %struct.usb_chg_measures* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.usb_chg_measures*, %struct.usb_chg_measures** %8, align 8
  %136 = getelementptr inbounds %struct.usb_chg_measures, %struct.usb_chg_measures* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i8*, i32, i8*, ...) @append_str(i8* %23, i32 %118, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %119, i8* %127, i8* %128, i32 %131, i32 %134, i32 %137)
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %15, align 4
  br label %263

141:                                              ; preds = %2
  %142 = load i32, i32* %15, align 4
  %143 = call i32 (i8*, i32, i8*, ...) @append_str(i8* %23, i32 %142, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %144 = load i32, i32* %15, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %15, align 4
  br label %263

146:                                              ; preds = %2
  %147 = load %struct.ec_response_pd_log*, %struct.ec_response_pd_log** %3, align 8
  %148 = getelementptr inbounds %struct.ec_response_pd_log, %struct.ec_response_pd_log* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i8**, i8*** @fault_names, align 8
  %151 = call i32 @ARRAY_SIZE(i8** %150)
  %152 = icmp slt i32 %149, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %146
  %154 = load i8**, i8*** @fault_names, align 8
  %155 = load %struct.ec_response_pd_log*, %struct.ec_response_pd_log** %3, align 8
  %156 = getelementptr inbounds %struct.ec_response_pd_log, %struct.ec_response_pd_log* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %154, i64 %158
  %160 = load i8*, i8** %159, align 8
  br label %162

161:                                              ; preds = %146
  br label %162

162:                                              ; preds = %161, %153
  %163 = phi i8* [ %160, %153 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %161 ]
  store i8* %163, i8** %5, align 8
  %164 = load i32, i32* %15, align 4
  %165 = load i8*, i8** %5, align 8
  %166 = call i32 (i8*, i32, i8*, ...) @append_str(i8* %23, i32 %164, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %165)
  %167 = load i32, i32* %15, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %15, align 4
  br label %263

169:                                              ; preds = %2
  %170 = load i32, i32* %15, align 4
  %171 = load %struct.ec_response_pd_log*, %struct.ec_response_pd_log** %3, align 8
  %172 = getelementptr inbounds %struct.ec_response_pd_log, %struct.ec_response_pd_log* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %173, 1
  %175 = zext i1 %174 to i64
  %176 = select i1 %174, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %177 = call i32 (i8*, i32, i8*, ...) @append_str(i8* %23, i32 %170, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* %176)
  %178 = load i32, i32* %15, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %15, align 4
  br label %263

180:                                              ; preds = %2
  %181 = load %struct.ec_response_pd_log*, %struct.ec_response_pd_log** %3, align 8
  %182 = getelementptr inbounds %struct.ec_response_pd_log, %struct.ec_response_pd_log* %181, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = bitcast i32* %183 to %struct.mcdp_info*
  store %struct.mcdp_info* %184, %struct.mcdp_info** %9, align 8
  %185 = load i32, i32* %15, align 4
  %186 = load %struct.mcdp_info*, %struct.mcdp_info** %9, align 8
  %187 = getelementptr inbounds %struct.mcdp_info, %struct.mcdp_info* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @MCDP_FAMILY(i32 %188)
  %190 = load %struct.mcdp_info*, %struct.mcdp_info** %9, align 8
  %191 = getelementptr inbounds %struct.mcdp_info, %struct.mcdp_info* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @MCDP_CHIPID(i32 %192)
  %194 = call i32 (i8*, i32, i8*, ...) @append_str(i8* %23, i32 %185, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 %189, i32 %193)
  %195 = load i32, i32* %15, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %15, align 4
  %197 = load i32, i32* %15, align 4
  %198 = load %struct.mcdp_info*, %struct.mcdp_info** %9, align 8
  %199 = getelementptr inbounds %struct.mcdp_info, %struct.mcdp_info* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.mcdp_info*, %struct.mcdp_info** %9, align 8
  %203 = getelementptr inbounds %struct.mcdp_info, %struct.mcdp_info* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.mcdp_info*, %struct.mcdp_info** %9, align 8
  %207 = getelementptr inbounds %struct.mcdp_info, %struct.mcdp_info* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.mcdp_info*, %struct.mcdp_info** %9, align 8
  %211 = getelementptr inbounds %struct.mcdp_info, %struct.mcdp_info* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.mcdp_info*, %struct.mcdp_info** %9, align 8
  %215 = getelementptr inbounds %struct.mcdp_info, %struct.mcdp_info* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.mcdp_info*, %struct.mcdp_info** %9, align 8
  %219 = getelementptr inbounds %struct.mcdp_info, %struct.mcdp_info* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (i8*, i32, i8*, ...) @append_str(i8* %23, i32 %197, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %201, i32 %205, i32 %209, i32 %213, i32 %217, i32 %221)
  %223 = load i32, i32* %15, align 4
  %224 = add nsw i32 %223, %222
  store i32 %224, i32* %15, align 4
  br label %263

225:                                              ; preds = %2
  %226 = load i32, i32* %15, align 4
  %227 = load %struct.ec_response_pd_log*, %struct.ec_response_pd_log** %3, align 8
  %228 = getelementptr inbounds %struct.ec_response_pd_log, %struct.ec_response_pd_log* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.ec_response_pd_log*, %struct.ec_response_pd_log** %3, align 8
  %231 = getelementptr inbounds %struct.ec_response_pd_log, %struct.ec_response_pd_log* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = call i32 (i8*, i32, i8*, ...) @append_str(i8* %23, i32 %226, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 %229, i32 %232)
  %234 = load i32, i32* %15, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %236

236:                                              ; preds = %255, %225
  %237 = load i32, i32* %17, align 4
  %238 = load %struct.ec_response_pd_log*, %struct.ec_response_pd_log** %3, align 8
  %239 = getelementptr inbounds %struct.ec_response_pd_log, %struct.ec_response_pd_log* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @PD_LOG_SIZE(i32 %240)
  %242 = icmp slt i32 %237, %241
  br i1 %242, label %243, label %258

243:                                              ; preds = %236
  %244 = load i32, i32* %15, align 4
  %245 = load %struct.ec_response_pd_log*, %struct.ec_response_pd_log** %3, align 8
  %246 = getelementptr inbounds %struct.ec_response_pd_log, %struct.ec_response_pd_log* %245, i32 0, i32 4
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %17, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = call i32 (i8*, i32, i8*, ...) @append_str(i8* %23, i32 %244, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %251)
  %253 = load i32, i32* %15, align 4
  %254 = add nsw i32 %253, %252
  store i32 %254, i32* %15, align 4
  br label %255

255:                                              ; preds = %243
  %256 = load i32, i32* %17, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %17, align 4
  br label %236

258:                                              ; preds = %236
  %259 = load i32, i32* %15, align 4
  %260 = call i32 (i8*, i32, i8*, ...) @append_str(i8* %23, i32 %259, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %261 = load i32, i32* %15, align 4
  %262 = add nsw i32 %261, %260
  store i32 %262, i32* %15, align 4
  br label %263

263:                                              ; preds = %258, %180, %169, %162, %141, %113, %107
  %264 = load i32, i32* %4, align 4
  %265 = call i32 @ktime_to_ms(i32 %264)
  %266 = load i32, i32* @MSEC_PER_SEC, align 4
  %267 = call i32 @div_s64_rem(i32 %265, i32 %266, i32* %16)
  %268 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 5
  %269 = load i64, i64* %268, align 8
  %270 = add nsw i64 %269, 1900
  %271 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 4
  %272 = load i64, i64* %271, align 8
  %273 = add nsw i64 %272, 1
  %274 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* %16, align 4
  %283 = load %struct.ec_response_pd_log*, %struct.ec_response_pd_log** %3, align 8
  %284 = getelementptr inbounds %struct.ec_response_pd_log, %struct.ec_response_pd_log* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @PD_LOG_PORT(i32 %285)
  %287 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0), i64 %270, i64 %273, i32 %275, i32 %277, i32 %279, i32 %281, i32 %282, i32 %286, i8* %23)
  %288 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %288)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ktime_sub_us(i32, i32) #2

declare dso_local void @rtc_ktime_to_tm(%struct.rtc_time* sret, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @append_str(i8*, i32, i8*, ...) #2

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @MCDP_FAMILY(i32) #2

declare dso_local i32 @MCDP_CHIPID(i32) #2

declare dso_local i32 @PD_LOG_SIZE(i32) #2

declare dso_local i32 @div_s64_rem(i32, i32, i32*) #2

declare dso_local i32 @ktime_to_ms(i32) #2

declare dso_local i32 @pr_info(i8*, i64, i64, i32, i32, i32, i32, i32, i32, i8*) #2

declare dso_local i32 @PD_LOG_PORT(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
