; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_dm.c_dm_ctrl_initgain_byrssi_by_fwfalse_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_dm.c_dm_ctrl_initgain_byrssi_by_fwfalse_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i8*, i64, i32 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@dm_ctrl_initgain_byrssi_by_fwfalse_alarm.reset_cnt = internal global i64 0, align 8
@dm_digtable = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@DM_STA_DIG_MAX = common dso_local global i8* null, align 8
@UFWP = common dso_local global i32 0, align 4
@bMaskByte1 = common dso_local global i32 0, align 4
@IEEE80211_LINKED = common dso_local global i64 0, align 8
@DM_STA_DIG_OFF = common dso_local global i64 0, align 8
@rOFDM0_XAAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XBAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XCAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XDAGCCore1 = common dso_local global i32 0, align 4
@HT_CHANNEL_WIDTH_20 = common dso_local global i64 0, align 8
@rOFDM0_XATxAFE = common dso_local global i32 0, align 4
@rOFDM0_RxDetector1 = common dso_local global i32 0, align 4
@DM_STA_DIG_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dm_ctrl_initgain_byrssi_by_fwfalse_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_ctrl_initgain_byrssi_by_fwfalse_alarm(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %6)
  store %struct.r8192_priv* %7, %struct.r8192_priv** %3, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 5), align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %191

11:                                               ; preds = %1
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 4), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = load i8*, i8** @DM_STA_DIG_MAX, align 8
  %16 = ptrtoint i8* %15 to i64
  store i64 %16, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 0), align 8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %25, %14
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = load i32, i32* @UFWP, align 4
  %23 = load i32, i32* @bMaskByte1, align 4
  %24 = call i32 @rtl8192_setBBreg(%struct.net_device* %21, i32 %22, i32 %23, i32 1)
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %17

28:                                               ; preds = %17
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 4), align 8
  br label %29

29:                                               ; preds = %28, %11
  %30 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %31 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IEEE80211_LINKED, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %191

38:                                               ; preds = %29
  %39 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %40 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 1), align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %46 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 2), align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %191

51:                                               ; preds = %44, %38
  %52 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %53 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 1), align 8
  %56 = icmp sle i64 %54, %55
  br i1 %56, label %57, label %107

57:                                               ; preds = %51
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 0), align 8
  %59 = load i64, i64* @DM_STA_DIG_OFF, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %63 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @dm_ctrl_initgain_byrssi_by_fwfalse_alarm.reset_cnt, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %191

68:                                               ; preds = %61, %57
  %69 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %70 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* @dm_ctrl_initgain_byrssi_by_fwfalse_alarm.reset_cnt, align 8
  %72 = load i8*, i8** @DM_STA_DIG_MAX, align 8
  store i8* %72, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 3), align 8
  %73 = load i64, i64* @DM_STA_DIG_OFF, align 8
  store i64 %73, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 0), align 8
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = load i32, i32* @UFWP, align 4
  %76 = load i32, i32* @bMaskByte1, align 4
  %77 = call i32 @rtl8192_setBBreg(%struct.net_device* %74, i32 %75, i32 %76, i32 8)
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %80 = call i32 @write_nic_byte(%struct.net_device* %78, i32 %79, i32 23)
  %81 = load %struct.net_device*, %struct.net_device** %2, align 8
  %82 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %83 = call i32 @write_nic_byte(%struct.net_device* %81, i32 %82, i32 23)
  %84 = load %struct.net_device*, %struct.net_device** %2, align 8
  %85 = load i32, i32* @rOFDM0_XCAGCCore1, align 4
  %86 = call i32 @write_nic_byte(%struct.net_device* %84, i32 %85, i32 23)
  %87 = load %struct.net_device*, %struct.net_device** %2, align 8
  %88 = load i32, i32* @rOFDM0_XDAGCCore1, align 4
  %89 = call i32 @write_nic_byte(%struct.net_device* %87, i32 %88, i32 23)
  %90 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %91 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @HT_CHANNEL_WIDTH_20, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %68
  %96 = load %struct.net_device*, %struct.net_device** %2, align 8
  %97 = load i32, i32* @rOFDM0_XATxAFE, align 4
  %98 = add nsw i32 %97, 3
  %99 = call i32 @write_nic_byte(%struct.net_device* %96, i32 %98, i32 0)
  br label %104

100:                                              ; preds = %68
  %101 = load %struct.net_device*, %struct.net_device** %2, align 8
  %102 = load i32, i32* @rOFDM0_RxDetector1, align 4
  %103 = call i32 @write_nic_byte(%struct.net_device* %101, i32 %102, i32 66)
  br label %104

104:                                              ; preds = %100, %95
  %105 = load %struct.net_device*, %struct.net_device** %2, align 8
  %106 = call i32 @write_nic_byte(%struct.net_device* %105, i32 2570, i32 8)
  br label %191

107:                                              ; preds = %51
  %108 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %109 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 2), align 8
  %112 = icmp sge i64 %110, %111
  br i1 %112, label %113, label %188

113:                                              ; preds = %107
  store i32 0, i32* %5, align 4
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 0), align 8
  %115 = load i64, i64* @DM_STA_DIG_ON, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %119 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @dm_ctrl_initgain_byrssi_by_fwfalse_alarm.reset_cnt, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load %struct.net_device*, %struct.net_device** %2, align 8
  %125 = call i32 @dm_ctrl_initgain_byrssi_highpwr(%struct.net_device* %124)
  br label %191

126:                                              ; preds = %117, %113
  %127 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %128 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @dm_ctrl_initgain_byrssi_by_fwfalse_alarm.reset_cnt, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  store i32 1, i32* %5, align 4
  br label %133

133:                                              ; preds = %132, %126
  %134 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %135 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* @dm_ctrl_initgain_byrssi_by_fwfalse_alarm.reset_cnt, align 8
  %137 = load i64, i64* @DM_STA_DIG_ON, align 8
  store i64 %137, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 0), align 8
  %138 = load i32, i32* %5, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %153

140:                                              ; preds = %133
  %141 = load %struct.net_device*, %struct.net_device** %2, align 8
  %142 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %143 = call i32 @write_nic_byte(%struct.net_device* %141, i32 %142, i32 44)
  %144 = load %struct.net_device*, %struct.net_device** %2, align 8
  %145 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %146 = call i32 @write_nic_byte(%struct.net_device* %144, i32 %145, i32 44)
  %147 = load %struct.net_device*, %struct.net_device** %2, align 8
  %148 = load i32, i32* @rOFDM0_XCAGCCore1, align 4
  %149 = call i32 @write_nic_byte(%struct.net_device* %147, i32 %148, i32 44)
  %150 = load %struct.net_device*, %struct.net_device** %2, align 8
  %151 = load i32, i32* @rOFDM0_XDAGCCore1, align 4
  %152 = call i32 @write_nic_byte(%struct.net_device* %150, i32 %151, i32 44)
  br label %166

153:                                              ; preds = %133
  %154 = load %struct.net_device*, %struct.net_device** %2, align 8
  %155 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %156 = call i32 @write_nic_byte(%struct.net_device* %154, i32 %155, i32 32)
  %157 = load %struct.net_device*, %struct.net_device** %2, align 8
  %158 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %159 = call i32 @write_nic_byte(%struct.net_device* %157, i32 %158, i32 32)
  %160 = load %struct.net_device*, %struct.net_device** %2, align 8
  %161 = load i32, i32* @rOFDM0_XCAGCCore1, align 4
  %162 = call i32 @write_nic_byte(%struct.net_device* %160, i32 %161, i32 32)
  %163 = load %struct.net_device*, %struct.net_device** %2, align 8
  %164 = load i32, i32* @rOFDM0_XDAGCCore1, align 4
  %165 = call i32 @write_nic_byte(%struct.net_device* %163, i32 %164, i32 32)
  br label %166

166:                                              ; preds = %153, %140
  %167 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %168 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @HT_CHANNEL_WIDTH_20, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %166
  %173 = load %struct.net_device*, %struct.net_device** %2, align 8
  %174 = load i32, i32* @rOFDM0_XATxAFE, align 4
  %175 = add nsw i32 %174, 3
  %176 = call i32 @write_nic_byte(%struct.net_device* %173, i32 %175, i32 32)
  br label %181

177:                                              ; preds = %166
  %178 = load %struct.net_device*, %struct.net_device** %2, align 8
  %179 = load i32, i32* @rOFDM0_RxDetector1, align 4
  %180 = call i32 @write_nic_byte(%struct.net_device* %178, i32 %179, i32 68)
  br label %181

181:                                              ; preds = %177, %172
  %182 = load %struct.net_device*, %struct.net_device** %2, align 8
  %183 = call i32 @write_nic_byte(%struct.net_device* %182, i32 2570, i32 205)
  %184 = load %struct.net_device*, %struct.net_device** %2, align 8
  %185 = load i32, i32* @UFWP, align 4
  %186 = load i32, i32* @bMaskByte1, align 4
  %187 = call i32 @rtl8192_setBBreg(%struct.net_device* %184, i32 %185, i32 %186, i32 1)
  br label %188

188:                                              ; preds = %181, %107
  %189 = load %struct.net_device*, %struct.net_device** %2, align 8
  %190 = call i32 @dm_ctrl_initgain_byrssi_highpwr(%struct.net_device* %189)
  br label %191

191:                                              ; preds = %188, %123, %104, %67, %50, %37, %10
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @dm_ctrl_initgain_byrssi_highpwr(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
