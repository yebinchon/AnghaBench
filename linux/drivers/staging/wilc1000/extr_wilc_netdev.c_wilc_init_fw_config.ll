; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc_init_fw_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc_init_fw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.wilc_vif = type { i32, %struct.wilc_priv }
%struct.wilc_priv = type { i64 }
%struct.host_if_drv = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Start configuring Firmware\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Host = %p\0A\00", align 1
@WID_SET_OPERATION_MODE = common dso_local global i32 0, align 4
@WILC_FW_BSS_TYPE_INFRA = common dso_local global i32 0, align 4
@WID_BSS_TYPE = common dso_local global i32 0, align 4
@WILC_FW_TX_RATE_AUTO = common dso_local global i32 0, align 4
@WID_CURRENT_TX_RATE = common dso_local global i32 0, align 4
@WILC_FW_OPER_MODE_G_MIXED_11B_2 = common dso_local global i32 0, align 4
@WID_11G_OPERATING_MODE = common dso_local global i32 0, align 4
@WILC_FW_PREAMBLE_SHORT = common dso_local global i32 0, align 4
@WID_PREAMBLE = common dso_local global i32 0, align 4
@WILC_FW_11N_PROT_AUTO = common dso_local global i32 0, align 4
@WID_11N_PROT_MECH = common dso_local global i32 0, align 4
@WILC_FW_ACTIVE_SCAN = common dso_local global i32 0, align 4
@WID_SCAN_TYPE = common dso_local global i32 0, align 4
@WILC_FW_SITE_SURVEY_OFF = common dso_local global i32 0, align 4
@WID_SITE_SURVEY = common dso_local global i32 0, align 4
@WID_RTS_THRESHOLD = common dso_local global i32 0, align 4
@WID_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@WID_BCAST_SSID = common dso_local global i32 0, align 4
@WID_QOS_ENABLE = common dso_local global i32 0, align 4
@WILC_FW_NO_POWERSAVE = common dso_local global i32 0, align 4
@WID_POWER_MANAGEMENT = common dso_local global i32 0, align 4
@WILC_FW_SEC_NO = common dso_local global i32 0, align 4
@WID_11I_MODE = common dso_local global i32 0, align 4
@WILC_FW_AUTH_OPEN_SYSTEM = common dso_local global i32 0, align 4
@WID_AUTH_TYPE = common dso_local global i32 0, align 4
@WID_LISTEN_INTERVAL = common dso_local global i32 0, align 4
@WID_DTIM_PERIOD = common dso_local global i32 0, align 4
@WILC_FW_ACK_POLICY_NORMAL = common dso_local global i32 0, align 4
@WID_ACK_POLICY = common dso_local global i32 0, align 4
@WID_USER_CONTROL_ON_TX_POWER = common dso_local global i32 0, align 4
@WID_TX_POWER_LEVEL_11A = common dso_local global i32 0, align 4
@WID_TX_POWER_LEVEL_11B = common dso_local global i32 0, align 4
@WID_BEACON_INTERVAL = common dso_local global i32 0, align 4
@WILC_FW_REKEY_POLICY_DISABLE = common dso_local global i32 0, align 4
@WID_REKEY_POLICY = common dso_local global i32 0, align 4
@WID_REKEY_PERIOD = common dso_local global i32 0, align 4
@WID_REKEY_PACKET_COUNT = common dso_local global i32 0, align 4
@WID_SHORT_SLOT_ALLOWED = common dso_local global i32 0, align 4
@WILC_FW_ERP_PROT_SELF_CTS = common dso_local global i32 0, align 4
@WID_11N_ERP_PROT_TYPE = common dso_local global i32 0, align 4
@WID_11N_ENABLE = common dso_local global i32 0, align 4
@WILC_FW_11N_OP_MODE_HT_MIXED = common dso_local global i32 0, align 4
@WID_11N_OPERATING_MODE = common dso_local global i32 0, align 4
@WID_11N_TXOP_PROT_DISABLE = common dso_local global i32 0, align 4
@WILC_FW_OBBS_NONHT_DETECT_PROTECT_REPORT = common dso_local global i32 0, align 4
@WID_11N_OBSS_NONHT_DETECTION = common dso_local global i32 0, align 4
@WILC_FW_HT_PROT_RTS_CTS_NONHT = common dso_local global i32 0, align 4
@WID_11N_HT_PROT_TYPE = common dso_local global i32 0, align 4
@WID_11N_RIFS_PROT_ENABLE = common dso_local global i32 0, align 4
@WID_11N_CURRENT_TX_MCS = common dso_local global i32 0, align 4
@WID_11N_IMMEDIATE_BA_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.wilc_vif*)* @wilc_init_fw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_init_fw_config(%struct.net_device* %0, %struct.wilc_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.wilc_vif*, align 8
  %6 = alloca %struct.wilc_priv*, align 8
  %7 = alloca %struct.host_if_drv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.wilc_vif* %1, %struct.wilc_vif** %5, align 8
  %11 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %12 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %11, i32 0, i32 1
  store %struct.wilc_priv* %12, %struct.wilc_priv** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.wilc_priv*, %struct.wilc_priv** %6, align 8
  %16 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.host_if_drv*
  store %struct.host_if_drv* %18, %struct.host_if_drv** %7, align 8
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = load %struct.host_if_drv*, %struct.host_if_drv** %7, align 8
  %21 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.host_if_drv* %20)
  %22 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %23 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = call i32 @cpu_to_le32s(i32* %10)
  %26 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %27 = load i32, i32* @WID_SET_OPERATION_MODE, align 4
  %28 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %26, i32 1, i32 %27, i32* %10, i32 4, i32 0, i32 0)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %257

31:                                               ; preds = %2
  %32 = load i32, i32* @WILC_FW_BSS_TYPE_INFRA, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %34 = load i32, i32* @WID_BSS_TYPE, align 4
  %35 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %33, i32 0, i32 %34, i32* %8, i32 1, i32 0, i32 0)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %257

38:                                               ; preds = %31
  %39 = load i32, i32* @WILC_FW_TX_RATE_AUTO, align 4
  store i32 %39, i32* %8, align 4
  %40 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %41 = load i32, i32* @WID_CURRENT_TX_RATE, align 4
  %42 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %40, i32 0, i32 %41, i32* %8, i32 1, i32 0, i32 0)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %257

45:                                               ; preds = %38
  %46 = load i32, i32* @WILC_FW_OPER_MODE_G_MIXED_11B_2, align 4
  store i32 %46, i32* %8, align 4
  %47 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %48 = load i32, i32* @WID_11G_OPERATING_MODE, align 4
  %49 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %47, i32 0, i32 %48, i32* %8, i32 1, i32 0, i32 0)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %257

52:                                               ; preds = %45
  %53 = load i32, i32* @WILC_FW_PREAMBLE_SHORT, align 4
  store i32 %53, i32* %8, align 4
  %54 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %55 = load i32, i32* @WID_PREAMBLE, align 4
  %56 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %54, i32 0, i32 %55, i32* %8, i32 1, i32 0, i32 0)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %257

59:                                               ; preds = %52
  %60 = load i32, i32* @WILC_FW_11N_PROT_AUTO, align 4
  store i32 %60, i32* %8, align 4
  %61 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %62 = load i32, i32* @WID_11N_PROT_MECH, align 4
  %63 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %61, i32 0, i32 %62, i32* %8, i32 1, i32 0, i32 0)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  br label %257

66:                                               ; preds = %59
  %67 = load i32, i32* @WILC_FW_ACTIVE_SCAN, align 4
  store i32 %67, i32* %8, align 4
  %68 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %69 = load i32, i32* @WID_SCAN_TYPE, align 4
  %70 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %68, i32 0, i32 %69, i32* %8, i32 1, i32 0, i32 0)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  br label %257

73:                                               ; preds = %66
  %74 = load i32, i32* @WILC_FW_SITE_SURVEY_OFF, align 4
  store i32 %74, i32* %8, align 4
  %75 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %76 = load i32, i32* @WID_SITE_SURVEY, align 4
  %77 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %75, i32 0, i32 %76, i32* %8, i32 1, i32 0, i32 0)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  br label %257

80:                                               ; preds = %73
  store i32 65535, i32* %9, align 4
  %81 = call i32 @cpu_to_le16s(i32* %9)
  %82 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %83 = load i32, i32* @WID_RTS_THRESHOLD, align 4
  %84 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %82, i32 0, i32 %83, i32* %9, i32 2, i32 0, i32 0)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  br label %257

87:                                               ; preds = %80
  store i32 2346, i32* %9, align 4
  %88 = call i32 @cpu_to_le16s(i32* %9)
  %89 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %90 = load i32, i32* @WID_FRAG_THRESHOLD, align 4
  %91 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %89, i32 0, i32 %90, i32* %9, i32 2, i32 0, i32 0)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  br label %257

94:                                               ; preds = %87
  store i32 0, i32* %8, align 4
  %95 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %96 = load i32, i32* @WID_BCAST_SSID, align 4
  %97 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %95, i32 0, i32 %96, i32* %8, i32 1, i32 0, i32 0)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  br label %257

100:                                              ; preds = %94
  store i32 1, i32* %8, align 4
  %101 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %102 = load i32, i32* @WID_QOS_ENABLE, align 4
  %103 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %101, i32 0, i32 %102, i32* %8, i32 1, i32 0, i32 0)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  br label %257

106:                                              ; preds = %100
  %107 = load i32, i32* @WILC_FW_NO_POWERSAVE, align 4
  store i32 %107, i32* %8, align 4
  %108 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %109 = load i32, i32* @WID_POWER_MANAGEMENT, align 4
  %110 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %108, i32 0, i32 %109, i32* %8, i32 1, i32 0, i32 0)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %106
  br label %257

113:                                              ; preds = %106
  %114 = load i32, i32* @WILC_FW_SEC_NO, align 4
  store i32 %114, i32* %8, align 4
  %115 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %116 = load i32, i32* @WID_11I_MODE, align 4
  %117 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %115, i32 0, i32 %116, i32* %8, i32 1, i32 0, i32 0)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %113
  br label %257

120:                                              ; preds = %113
  %121 = load i32, i32* @WILC_FW_AUTH_OPEN_SYSTEM, align 4
  store i32 %121, i32* %8, align 4
  %122 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %123 = load i32, i32* @WID_AUTH_TYPE, align 4
  %124 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %122, i32 0, i32 %123, i32* %8, i32 1, i32 0, i32 0)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %120
  br label %257

127:                                              ; preds = %120
  store i32 3, i32* %8, align 4
  %128 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %129 = load i32, i32* @WID_LISTEN_INTERVAL, align 4
  %130 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %128, i32 0, i32 %129, i32* %8, i32 1, i32 0, i32 0)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  br label %257

133:                                              ; preds = %127
  store i32 3, i32* %8, align 4
  %134 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %135 = load i32, i32* @WID_DTIM_PERIOD, align 4
  %136 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %134, i32 0, i32 %135, i32* %8, i32 1, i32 0, i32 0)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %133
  br label %257

139:                                              ; preds = %133
  %140 = load i32, i32* @WILC_FW_ACK_POLICY_NORMAL, align 4
  store i32 %140, i32* %8, align 4
  %141 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %142 = load i32, i32* @WID_ACK_POLICY, align 4
  %143 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %141, i32 0, i32 %142, i32* %8, i32 1, i32 0, i32 0)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %139
  br label %257

146:                                              ; preds = %139
  store i32 0, i32* %8, align 4
  %147 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %148 = load i32, i32* @WID_USER_CONTROL_ON_TX_POWER, align 4
  %149 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %147, i32 0, i32 %148, i32* %8, i32 1, i32 0, i32 0)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %146
  br label %257

152:                                              ; preds = %146
  store i32 48, i32* %8, align 4
  %153 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %154 = load i32, i32* @WID_TX_POWER_LEVEL_11A, align 4
  %155 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %153, i32 0, i32 %154, i32* %8, i32 1, i32 0, i32 0)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %152
  br label %257

158:                                              ; preds = %152
  store i32 28, i32* %8, align 4
  %159 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %160 = load i32, i32* @WID_TX_POWER_LEVEL_11B, align 4
  %161 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %159, i32 0, i32 %160, i32* %8, i32 1, i32 0, i32 0)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %158
  br label %257

164:                                              ; preds = %158
  store i32 100, i32* %9, align 4
  %165 = call i32 @cpu_to_le16s(i32* %9)
  %166 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %167 = load i32, i32* @WID_BEACON_INTERVAL, align 4
  %168 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %166, i32 0, i32 %167, i32* %9, i32 2, i32 0, i32 0)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %164
  br label %257

171:                                              ; preds = %164
  %172 = load i32, i32* @WILC_FW_REKEY_POLICY_DISABLE, align 4
  store i32 %172, i32* %8, align 4
  %173 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %174 = load i32, i32* @WID_REKEY_POLICY, align 4
  %175 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %173, i32 0, i32 %174, i32* %8, i32 1, i32 0, i32 0)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %171
  br label %257

178:                                              ; preds = %171
  store i32 84600, i32* %10, align 4
  %179 = call i32 @cpu_to_le32s(i32* %10)
  %180 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %181 = load i32, i32* @WID_REKEY_PERIOD, align 4
  %182 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %180, i32 0, i32 %181, i32* %10, i32 4, i32 0, i32 0)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %178
  br label %257

185:                                              ; preds = %178
  store i32 500, i32* %10, align 4
  %186 = call i32 @cpu_to_le32s(i32* %10)
  %187 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %188 = load i32, i32* @WID_REKEY_PACKET_COUNT, align 4
  %189 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %187, i32 0, i32 %188, i32* %10, i32 4, i32 0, i32 0)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %185
  br label %257

192:                                              ; preds = %185
  store i32 1, i32* %8, align 4
  %193 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %194 = load i32, i32* @WID_SHORT_SLOT_ALLOWED, align 4
  %195 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %193, i32 0, i32 %194, i32* %8, i32 1, i32 0, i32 0)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %192
  br label %257

198:                                              ; preds = %192
  %199 = load i32, i32* @WILC_FW_ERP_PROT_SELF_CTS, align 4
  store i32 %199, i32* %8, align 4
  %200 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %201 = load i32, i32* @WID_11N_ERP_PROT_TYPE, align 4
  %202 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %200, i32 0, i32 %201, i32* %8, i32 1, i32 0, i32 0)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %198
  br label %257

205:                                              ; preds = %198
  store i32 1, i32* %8, align 4
  %206 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %207 = load i32, i32* @WID_11N_ENABLE, align 4
  %208 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %206, i32 0, i32 %207, i32* %8, i32 1, i32 0, i32 0)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %205
  br label %257

211:                                              ; preds = %205
  %212 = load i32, i32* @WILC_FW_11N_OP_MODE_HT_MIXED, align 4
  store i32 %212, i32* %8, align 4
  %213 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %214 = load i32, i32* @WID_11N_OPERATING_MODE, align 4
  %215 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %213, i32 0, i32 %214, i32* %8, i32 1, i32 0, i32 0)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %211
  br label %257

218:                                              ; preds = %211
  store i32 1, i32* %8, align 4
  %219 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %220 = load i32, i32* @WID_11N_TXOP_PROT_DISABLE, align 4
  %221 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %219, i32 0, i32 %220, i32* %8, i32 1, i32 0, i32 0)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %218
  br label %257

224:                                              ; preds = %218
  %225 = load i32, i32* @WILC_FW_OBBS_NONHT_DETECT_PROTECT_REPORT, align 4
  store i32 %225, i32* %8, align 4
  %226 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %227 = load i32, i32* @WID_11N_OBSS_NONHT_DETECTION, align 4
  %228 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %226, i32 0, i32 %227, i32* %8, i32 1, i32 0, i32 0)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %224
  br label %257

231:                                              ; preds = %224
  %232 = load i32, i32* @WILC_FW_HT_PROT_RTS_CTS_NONHT, align 4
  store i32 %232, i32* %8, align 4
  %233 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %234 = load i32, i32* @WID_11N_HT_PROT_TYPE, align 4
  %235 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %233, i32 0, i32 %234, i32* %8, i32 1, i32 0, i32 0)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %231
  br label %257

238:                                              ; preds = %231
  store i32 0, i32* %8, align 4
  %239 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %240 = load i32, i32* @WID_11N_RIFS_PROT_ENABLE, align 4
  %241 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %239, i32 0, i32 %240, i32* %8, i32 1, i32 0, i32 0)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %244, label %243

243:                                              ; preds = %238
  br label %257

244:                                              ; preds = %238
  store i32 7, i32* %8, align 4
  %245 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %246 = load i32, i32* @WID_11N_CURRENT_TX_MCS, align 4
  %247 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %245, i32 0, i32 %246, i32* %8, i32 1, i32 0, i32 0)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %244
  br label %257

250:                                              ; preds = %244
  store i32 1, i32* %8, align 4
  %251 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %252 = load i32, i32* @WID_11N_IMMEDIATE_BA_ENABLED, align 4
  %253 = call i32 @wilc_wlan_cfg_set(%struct.wilc_vif* %251, i32 0, i32 %252, i32* %8, i32 1, i32 1, i32 1)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %250
  br label %257

256:                                              ; preds = %250
  store i32 0, i32* %3, align 4
  br label %258

257:                                              ; preds = %255, %249, %243, %237, %230, %223, %217, %210, %204, %197, %191, %184, %177, %170, %163, %157, %151, %145, %138, %132, %126, %119, %112, %105, %99, %93, %86, %79, %72, %65, %58, %51, %44, %37, %30
  store i32 -1, i32* %3, align 4
  br label %258

258:                                              ; preds = %257, %256
  %259 = load i32, i32* %3, align 4
  ret i32 %259
}

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @cpu_to_le32s(i32*) #1

declare dso_local i32 @wilc_wlan_cfg_set(%struct.wilc_vif*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16s(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
