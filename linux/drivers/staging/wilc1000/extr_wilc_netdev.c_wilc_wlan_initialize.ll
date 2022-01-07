; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc_wlan_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc_wlan_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.wilc_vif = type { %struct.wilc* }
%struct.wilc = type { i32, i64, %struct.TYPE_2__*, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.wilc*)*, i64 (%struct.wilc*)* }

@WILC_MAC_STATUS_INIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@WID_FIRMWARE_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Firmware Ver = %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to configure firmware\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"WLAN initialization FAILED\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"wilc1000 already initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.wilc_vif*)* @wilc_wlan_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_wlan_initialize(%struct.net_device* %0, %struct.wilc_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.wilc_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wilc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [20 x i8], align 16
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.wilc_vif* %1, %struct.wilc_vif** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %11 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %10, i32 0, i32 0
  %12 = load %struct.wilc*, %struct.wilc** %11, align 8
  store %struct.wilc* %12, %struct.wilc** %7, align 8
  %13 = load %struct.wilc*, %struct.wilc** %7, align 8
  %14 = getelementptr inbounds %struct.wilc, %struct.wilc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %169, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @WILC_MAC_STATUS_INIT, align 4
  %19 = load %struct.wilc*, %struct.wilc** %7, align 8
  %20 = getelementptr inbounds %struct.wilc, %struct.wilc* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load %struct.wilc*, %struct.wilc** %7, align 8
  %22 = getelementptr inbounds %struct.wilc, %struct.wilc* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call i32 @wilc_wlan_init(%struct.net_device* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %174

30:                                               ; preds = %17
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = call i32 @wlan_initialize_threads(%struct.net_device* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %164

38:                                               ; preds = %30
  %39 = load %struct.wilc*, %struct.wilc** %7, align 8
  %40 = getelementptr inbounds %struct.wilc, %struct.wilc* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = call i64 @init_irq(%struct.net_device* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %161

50:                                               ; preds = %43, %38
  %51 = load %struct.wilc*, %struct.wilc** %7, align 8
  %52 = getelementptr inbounds %struct.wilc, %struct.wilc* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %74, label %55

55:                                               ; preds = %50
  %56 = load %struct.wilc*, %struct.wilc** %7, align 8
  %57 = getelementptr inbounds %struct.wilc, %struct.wilc* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64 (%struct.wilc*)*, i64 (%struct.wilc*)** %59, align 8
  %61 = icmp ne i64 (%struct.wilc*)* %60, null
  br i1 %61, label %62, label %74

62:                                               ; preds = %55
  %63 = load %struct.wilc*, %struct.wilc** %7, align 8
  %64 = getelementptr inbounds %struct.wilc, %struct.wilc* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64 (%struct.wilc*)*, i64 (%struct.wilc*)** %66, align 8
  %68 = load %struct.wilc*, %struct.wilc** %7, align 8
  %69 = call i64 %67(%struct.wilc* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %152

74:                                               ; preds = %62, %55, %50
  %75 = load %struct.net_device*, %struct.net_device** %4, align 8
  %76 = call i64 @wilc_wlan_get_firmware(%struct.net_device* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %131

81:                                               ; preds = %74
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = call i32 @wilc1000_firmware_download(%struct.net_device* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %6, align 4
  br label %131

89:                                               ; preds = %81
  %90 = load %struct.net_device*, %struct.net_device** %4, align 8
  %91 = call i32 @wilc_start_firmware(%struct.net_device* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %131

97:                                               ; preds = %89
  %98 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %99 = load i32, i32* @WID_FIRMWARE_VERSION, align 4
  %100 = call i64 @wilc_wlan_cfg_get(%struct.wilc_vif* %98, i32 1, i32 %99, i32 1, i32 0)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = load %struct.wilc*, %struct.wilc** %7, align 8
  %104 = load i32, i32* @WID_FIRMWARE_VERSION, align 4
  %105 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %106 = call i32 @wilc_wlan_cfg_get_val(%struct.wilc* %103, i32 %104, i8* %105, i32 20)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 %108
  store i8 0, i8* %109, align 1
  %110 = load %struct.net_device*, %struct.net_device** %4, align 8
  %111 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %112 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %110, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %102, %97
  %114 = load %struct.net_device*, %struct.net_device** %4, align 8
  %115 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %116 = call i32 @wilc_init_fw_config(%struct.net_device* %114, %struct.wilc_vif* %115)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load %struct.net_device*, %struct.net_device** %4, align 8
  %121 = call i32 @netdev_err(%struct.net_device* %120, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %122 = load i32, i32* @EIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %6, align 4
  br label %127

124:                                              ; preds = %113
  %125 = load %struct.wilc*, %struct.wilc** %7, align 8
  %126 = getelementptr inbounds %struct.wilc, %struct.wilc* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  store i32 0, i32* %3, align 4
  br label %174

127:                                              ; preds = %119
  %128 = load %struct.wilc*, %struct.wilc** %7, align 8
  %129 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %130 = call i32 @wilc_wlan_stop(%struct.wilc* %128, %struct.wilc_vif* %129)
  br label %131

131:                                              ; preds = %127, %94, %86, %78
  %132 = load %struct.wilc*, %struct.wilc** %7, align 8
  %133 = getelementptr inbounds %struct.wilc, %struct.wilc* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %151, label %136

136:                                              ; preds = %131
  %137 = load %struct.wilc*, %struct.wilc** %7, align 8
  %138 = getelementptr inbounds %struct.wilc, %struct.wilc* %137, i32 0, i32 2
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32 (%struct.wilc*)*, i32 (%struct.wilc*)** %140, align 8
  %142 = icmp ne i32 (%struct.wilc*)* %141, null
  br i1 %142, label %143, label %151

143:                                              ; preds = %136
  %144 = load %struct.wilc*, %struct.wilc** %7, align 8
  %145 = getelementptr inbounds %struct.wilc, %struct.wilc* %144, i32 0, i32 2
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32 (%struct.wilc*)*, i32 (%struct.wilc*)** %147, align 8
  %149 = load %struct.wilc*, %struct.wilc** %7, align 8
  %150 = call i32 %148(%struct.wilc* %149)
  br label %151

151:                                              ; preds = %143, %136, %131
  br label %152

152:                                              ; preds = %151, %71
  %153 = load %struct.wilc*, %struct.wilc** %7, align 8
  %154 = getelementptr inbounds %struct.wilc, %struct.wilc* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load %struct.net_device*, %struct.net_device** %4, align 8
  %159 = call i32 @deinit_irq(%struct.net_device* %158)
  br label %160

160:                                              ; preds = %157, %152
  br label %161

161:                                              ; preds = %160, %47
  %162 = load %struct.net_device*, %struct.net_device** %4, align 8
  %163 = call i32 @wlan_deinitialize_threads(%struct.net_device* %162)
  br label %164

164:                                              ; preds = %161, %35
  %165 = load %struct.net_device*, %struct.net_device** %4, align 8
  %166 = call i32 @wilc_wlan_cleanup(%struct.net_device* %165)
  %167 = load %struct.net_device*, %struct.net_device** %4, align 8
  %168 = call i32 @netdev_err(%struct.net_device* %167, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %172

169:                                              ; preds = %2
  %170 = load %struct.net_device*, %struct.net_device** %4, align 8
  %171 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %170, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %172

172:                                              ; preds = %169, %164
  %173 = load i32, i32* %6, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %172, %124, %27
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @wilc_wlan_init(%struct.net_device*) #1

declare dso_local i32 @wlan_initialize_threads(%struct.net_device*) #1

declare dso_local i64 @init_irq(%struct.net_device*) #1

declare dso_local i64 @wilc_wlan_get_firmware(%struct.net_device*) #1

declare dso_local i32 @wilc1000_firmware_download(%struct.net_device*) #1

declare dso_local i32 @wilc_start_firmware(%struct.net_device*) #1

declare dso_local i64 @wilc_wlan_cfg_get(%struct.wilc_vif*, i32, i32, i32, i32) #1

declare dso_local i32 @wilc_wlan_cfg_get_val(%struct.wilc*, i32, i8*, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @wilc_init_fw_config(%struct.net_device*, %struct.wilc_vif*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @wilc_wlan_stop(%struct.wilc*, %struct.wilc_vif*) #1

declare dso_local i32 @deinit_irq(%struct.net_device*) #1

declare dso_local i32 @wlan_deinitialize_threads(%struct.net_device*) #1

declare dso_local i32 @wilc_wlan_cleanup(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
