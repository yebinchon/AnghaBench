; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_core_hardsetup_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_core_hardsetup_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_14__*, %struct.TYPE_13__, %struct.TYPE_12__, i64, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"hrdsetup\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Retrying to do IDX activates on device %x.\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"break1\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"1err%d\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"break2\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"3err%d\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"break3\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"4err%d\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"5err%d\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"6err%d\00", align 1
@ENETDOWN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"The LAN is offline\0A\00", align 1
@QETH_PROT_IPV4 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPA_IPV6 = common dso_local global i32 0, align 4
@QETH_PROT_IPV6 = common dso_local global i32 0, align 4
@IPA_SETADAPTERPARMS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"7err%d\00", align 1
@IPA_SETADP_SET_DIAG_ASSIST = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"8err%d\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"The qeth device driver failed to recover an error on the device\0A\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c"Initialization for device %x failed in hardsetup! rc=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_core_hardsetup_card(%struct.qeth_card* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 3, i32* %6, align 4
  %8 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %9 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %8, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %11 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %10, i32 0, i32 4
  %12 = call i32 @atomic_set(i32* %11, i32 0)
  %13 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %14 = call i32 @qeth_update_from_chp_desc(%struct.qeth_card* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %264

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %142, %118, %88, %19
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %25 = call i32 @CARD_DEVID(%struct.qeth_card* %24)
  %26 = call i32 (i32, i8*, i32, ...) @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %20
  %28 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %29 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %30 = call i32 @IS_IQD(%struct.qeth_card* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @qeth_qdio_clear_card(%struct.qeth_card* %28, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %36 = call i32 @CARD_DDEV(%struct.qeth_card* %35)
  %37 = call i32 @ccw_device_set_offline(i32 %36)
  %38 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %39 = call i32 @CARD_WDEV(%struct.qeth_card* %38)
  %40 = call i32 @ccw_device_set_offline(i32 %39)
  %41 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %42 = call i32 @CARD_RDEV(%struct.qeth_card* %41)
  %43 = call i32 @ccw_device_set_offline(i32 %42)
  %44 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %45 = call i32 @CARD_DDEV(%struct.qeth_card* %44)
  %46 = call i32 @qdio_free(i32 %45)
  %47 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %48 = call i32 @CARD_RDEV(%struct.qeth_card* %47)
  %49 = call i32 @ccw_device_set_online(i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %27
  br label %68

53:                                               ; preds = %27
  %54 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %55 = call i32 @CARD_WDEV(%struct.qeth_card* %54)
  %56 = call i32 @ccw_device_set_online(i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %68

60:                                               ; preds = %53
  %61 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %62 = call i32 @CARD_DDEV(%struct.qeth_card* %61)
  %63 = call i32 @ccw_device_set_online(i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %68

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %66, %59, %52
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @ERESTARTSYS, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %75 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %74, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %264

77:                                               ; preds = %68
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %81, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %253

88:                                               ; preds = %80
  br label %20

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %92 = call i32 @qeth_determine_capabilities(%struct.qeth_card* %91)
  %93 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %94 = call i32 @qeth_init_tokens(%struct.qeth_card* %93)
  %95 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %96 = call i32 @qeth_init_func_level(%struct.qeth_card* %95)
  %97 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %98 = call i32 @qeth_idx_activate_read_channel(%struct.qeth_card* %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @EINTR, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %90
  %104 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %105 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %104, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %3, align 4
  br label %264

107:                                              ; preds = %90
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %111, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %6, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %253

118:                                              ; preds = %110
  br label %20

119:                                              ; preds = %107
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %122 = call i32 @qeth_idx_activate_write_channel(%struct.qeth_card* %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @EINTR, align 4
  %125 = sub nsw i32 0, %124
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %120
  %128 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %129 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %128, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %3, align 4
  br label %264

131:                                              ; preds = %120
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %135, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %6, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  br label %253

142:                                              ; preds = %134
  br label %20

143:                                              ; preds = %131
  br label %144

144:                                              ; preds = %143
  %145 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %146 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %145, i32 0, i32 3
  store i64 0, i64* %146, align 8
  %147 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %148 = call i32 @qeth_mpc_initialize(%struct.qeth_card* %147)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %152, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %153)
  br label %253

155:                                              ; preds = %144
  %156 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %157 = call i32 @qeth_send_startlan(%struct.qeth_card* %156)
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %177

160:                                              ; preds = %155
  %161 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %161, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @ENETDOWN, align 4
  %166 = sub nsw i32 0, %165
  %167 = icmp eq i32 %164, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %160
  %169 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %170 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %169, i32 0, i32 0
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = call i32 @dev_warn(i32* %172, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %174 = load i32*, i32** %5, align 8
  store i32 0, i32* %174, align 4
  br label %176

175:                                              ; preds = %160
  br label %253

176:                                              ; preds = %168
  br label %179

177:                                              ; preds = %155
  %178 = load i32*, i32** %5, align 8
  store i32 1, i32* %178, align 4
  br label %179

179:                                              ; preds = %177, %176
  %180 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %181 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  store i64 0, i64* %183, align 8
  %184 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %185 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  store i64 0, i64* %187, align 8
  %188 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %189 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  store i64 0, i64* %191, align 8
  %192 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %193 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 0
  store i64 0, i64* %195, align 8
  %196 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %197 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  store i64 0, i64* %198, align 8
  %199 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %200 = load i32, i32* @QETH_PROT_IPV4, align 4
  %201 = call i32 @qeth_query_ipassists(%struct.qeth_card* %199, i32 %200)
  store i32 %201, i32* %7, align 4
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* @ENOMEM, align 4
  %204 = sub nsw i32 0, %203
  %205 = icmp eq i32 %202, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %179
  br label %253

207:                                              ; preds = %179
  %208 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %209 = load i32, i32* @IPA_IPV6, align 4
  %210 = call i64 @qeth_is_supported(%struct.qeth_card* %208, i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %207
  %213 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %214 = load i32, i32* @QETH_PROT_IPV6, align 4
  %215 = call i32 @qeth_query_ipassists(%struct.qeth_card* %213, i32 %214)
  store i32 %215, i32* %7, align 4
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* @ENOMEM, align 4
  %218 = sub nsw i32 0, %217
  %219 = icmp eq i32 %216, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %212
  br label %253

221:                                              ; preds = %212
  br label %222

222:                                              ; preds = %221, %207
  %223 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %224 = load i32, i32* @IPA_SETADAPTERPARMS, align 4
  %225 = call i64 @qeth_is_supported(%struct.qeth_card* %223, i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %237

227:                                              ; preds = %222
  %228 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %229 = call i32 @qeth_query_setadapterparms(%struct.qeth_card* %228)
  store i32 %229, i32* %7, align 4
  %230 = load i32, i32* %7, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %227
  %233 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %234 = load i32, i32* %7, align 4
  %235 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %233, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %234)
  br label %253

236:                                              ; preds = %227
  br label %237

237:                                              ; preds = %236, %222
  %238 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %239 = load i32, i32* @IPA_SETADP_SET_DIAG_ASSIST, align 4
  %240 = call i64 @qeth_adp_supported(%struct.qeth_card* %238, i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %252

242:                                              ; preds = %237
  %243 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %244 = call i32 @qeth_query_setdiagass(%struct.qeth_card* %243)
  store i32 %244, i32* %7, align 4
  %245 = load i32, i32* %7, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %242
  %248 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %249 = load i32, i32* %7, align 4
  %250 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %248, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %249)
  br label %253

251:                                              ; preds = %242
  br label %252

252:                                              ; preds = %251, %237
  store i32 0, i32* %3, align 4
  br label %264

253:                                              ; preds = %247, %232, %220, %206, %175, %151, %141, %117, %87
  %254 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %255 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %254, i32 0, i32 0
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 0
  %258 = call i32 @dev_warn(i32* %257, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i64 0, i64 0))
  %259 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %260 = call i32 @CARD_DEVID(%struct.qeth_card* %259)
  %261 = load i32, i32* %7, align 4
  %262 = call i32 (i32, i8*, i32, ...) @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.14, i64 0, i64 0), i32 %260, i32 %261)
  %263 = load i32, i32* %7, align 4
  store i32 %263, i32* %3, align 4
  br label %264

264:                                              ; preds = %253, %252, %127, %103, %73, %17
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @qeth_update_from_chp_desc(%struct.qeth_card*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, ...) #1

declare dso_local i32 @CARD_DEVID(%struct.qeth_card*) #1

declare dso_local i32 @qeth_qdio_clear_card(%struct.qeth_card*, i32) #1

declare dso_local i32 @IS_IQD(%struct.qeth_card*) #1

declare dso_local i32 @ccw_device_set_offline(i32) #1

declare dso_local i32 @CARD_DDEV(%struct.qeth_card*) #1

declare dso_local i32 @CARD_WDEV(%struct.qeth_card*) #1

declare dso_local i32 @CARD_RDEV(%struct.qeth_card*) #1

declare dso_local i32 @qdio_free(i32) #1

declare dso_local i32 @ccw_device_set_online(i32) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local i32 @qeth_determine_capabilities(%struct.qeth_card*) #1

declare dso_local i32 @qeth_init_tokens(%struct.qeth_card*) #1

declare dso_local i32 @qeth_init_func_level(%struct.qeth_card*) #1

declare dso_local i32 @qeth_idx_activate_read_channel(%struct.qeth_card*) #1

declare dso_local i32 @qeth_idx_activate_write_channel(%struct.qeth_card*) #1

declare dso_local i32 @qeth_mpc_initialize(%struct.qeth_card*) #1

declare dso_local i32 @qeth_send_startlan(%struct.qeth_card*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @qeth_query_ipassists(%struct.qeth_card*, i32) #1

declare dso_local i64 @qeth_is_supported(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_query_setadapterparms(%struct.qeth_card*) #1

declare dso_local i64 @qeth_adp_supported(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_query_setdiagass(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
