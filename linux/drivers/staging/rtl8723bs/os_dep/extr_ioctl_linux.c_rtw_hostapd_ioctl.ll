; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_linux.c_rtw_hostapd_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_linux.c_rtw_hostapd_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_point = type { i32, i32 }
%struct.ieee_param = type { i32 }
%struct.adapter = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unknown hostapd request: %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_point*)* @rtw_hostapd_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_hostapd_ioctl(%struct.net_device* %0, %struct.iw_point* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.iw_point*, align 8
  %5 = alloca %struct.ieee_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.iw_point* %1, %struct.iw_point** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i64 @rtw_netdev_priv(%struct.net_device* %8)
  %10 = inttoptr i64 %9 to %struct.adapter*
  store %struct.adapter* %10, %struct.adapter** %7, align 8
  %11 = load %struct.adapter*, %struct.adapter** %7, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  br label %166

18:                                               ; preds = %2
  %19 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %20 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %166

26:                                               ; preds = %18
  %27 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %28 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.ieee_param* @rtw_malloc(i32 %29)
  store %struct.ieee_param* %30, %struct.ieee_param** %5, align 8
  %31 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %32 = icmp eq %struct.ieee_param* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %166

36:                                               ; preds = %26
  %37 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %38 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %39 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %42 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @copy_from_user(%struct.ieee_param* %37, i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %48 = call i32 @kfree(%struct.ieee_param* %47)
  %49 = load i32, i32* @EFAULT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %166

51:                                               ; preds = %36
  %52 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %53 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %140 [
    i32 138, label %55
    i32 139, label %58
    i32 135, label %62
    i32 134, label %66
    i32 128, label %73
    i32 136, label %80
    i32 130, label %84
    i32 129, label %91
    i32 131, label %98
    i32 133, label %105
    i32 137, label %112
    i32 132, label %119
    i32 141, label %126
    i32 140, label %133
  ]

55:                                               ; preds = %51
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = call i32 @rtw_hostapd_sta_flush(%struct.net_device* %56)
  br label %147

58:                                               ; preds = %51
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %61 = call i32 @rtw_add_sta(%struct.net_device* %59, %struct.ieee_param* %60)
  store i32 %61, i32* %6, align 4
  br label %147

62:                                               ; preds = %51
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %65 = call i32 @rtw_del_sta(%struct.net_device* %63, %struct.ieee_param* %64)
  store i32 %65, i32* %6, align 4
  br label %147

66:                                               ; preds = %51
  %67 = load %struct.net_device*, %struct.net_device** %3, align 8
  %68 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %69 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %70 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @rtw_set_beacon(%struct.net_device* %67, %struct.ieee_param* %68, i32 %71)
  store i32 %72, i32* %6, align 4
  br label %147

73:                                               ; preds = %51
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %76 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %77 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @rtw_set_encryption(%struct.net_device* %74, %struct.ieee_param* %75, i32 %78)
  store i32 %79, i32* %6, align 4
  br label %147

80:                                               ; preds = %51
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %83 = call i32 @rtw_get_sta_wpaie(%struct.net_device* %81, %struct.ieee_param* %82)
  store i32 %83, i32* %6, align 4
  br label %147

84:                                               ; preds = %51
  %85 = load %struct.net_device*, %struct.net_device** %3, align 8
  %86 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %87 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %88 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @rtw_set_wps_beacon(%struct.net_device* %85, %struct.ieee_param* %86, i32 %89)
  store i32 %90, i32* %6, align 4
  br label %147

91:                                               ; preds = %51
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %94 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %95 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @rtw_set_wps_probe_resp(%struct.net_device* %92, %struct.ieee_param* %93, i32 %96)
  store i32 %97, i32* %6, align 4
  br label %147

98:                                               ; preds = %51
  %99 = load %struct.net_device*, %struct.net_device** %3, align 8
  %100 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %101 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %102 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @rtw_set_wps_assoc_resp(%struct.net_device* %99, %struct.ieee_param* %100, i32 %103)
  store i32 %104, i32* %6, align 4
  br label %147

105:                                              ; preds = %51
  %106 = load %struct.net_device*, %struct.net_device** %3, align 8
  %107 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %108 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %109 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @rtw_set_hidden_ssid(%struct.net_device* %106, %struct.ieee_param* %107, i32 %110)
  store i32 %111, i32* %6, align 4
  br label %147

112:                                              ; preds = %51
  %113 = load %struct.net_device*, %struct.net_device** %3, align 8
  %114 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %115 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %116 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @rtw_ioctl_get_sta_data(%struct.net_device* %113, %struct.ieee_param* %114, i32 %117)
  store i32 %118, i32* %6, align 4
  br label %147

119:                                              ; preds = %51
  %120 = load %struct.net_device*, %struct.net_device** %3, align 8
  %121 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %122 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %123 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @rtw_ioctl_set_macaddr_acl(%struct.net_device* %120, %struct.ieee_param* %121, i32 %124)
  store i32 %125, i32* %6, align 4
  br label %147

126:                                              ; preds = %51
  %127 = load %struct.net_device*, %struct.net_device** %3, align 8
  %128 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %129 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %130 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @rtw_ioctl_acl_add_sta(%struct.net_device* %127, %struct.ieee_param* %128, i32 %131)
  store i32 %132, i32* %6, align 4
  br label %147

133:                                              ; preds = %51
  %134 = load %struct.net_device*, %struct.net_device** %3, align 8
  %135 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %136 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %137 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @rtw_ioctl_acl_remove_sta(%struct.net_device* %134, %struct.ieee_param* %135, i32 %138)
  store i32 %139, i32* %6, align 4
  br label %147

140:                                              ; preds = %51
  %141 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %142 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @DBG_871X(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* @EOPNOTSUPP, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %140, %133, %126, %119, %112, %105, %98, %91, %84, %80, %73, %66, %62, %58, %55
  %148 = load i32, i32* %6, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %147
  %151 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %152 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %155 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %156 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @copy_to_user(i32 %153, %struct.ieee_param* %154, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %150
  %161 = load i32, i32* @EFAULT, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %160, %150, %147
  %164 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %165 = call i32 @kfree(%struct.ieee_param* %164)
  br label %166

166:                                              ; preds = %163, %46, %33, %23, %15
  %167 = load i32, i32* %6, align 4
  ret i32 %167
}

declare dso_local i64 @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ieee_param* @rtw_malloc(i32) #1

declare dso_local i64 @copy_from_user(%struct.ieee_param*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ieee_param*) #1

declare dso_local i32 @rtw_hostapd_sta_flush(%struct.net_device*) #1

declare dso_local i32 @rtw_add_sta(%struct.net_device*, %struct.ieee_param*) #1

declare dso_local i32 @rtw_del_sta(%struct.net_device*, %struct.ieee_param*) #1

declare dso_local i32 @rtw_set_beacon(%struct.net_device*, %struct.ieee_param*, i32) #1

declare dso_local i32 @rtw_set_encryption(%struct.net_device*, %struct.ieee_param*, i32) #1

declare dso_local i32 @rtw_get_sta_wpaie(%struct.net_device*, %struct.ieee_param*) #1

declare dso_local i32 @rtw_set_wps_beacon(%struct.net_device*, %struct.ieee_param*, i32) #1

declare dso_local i32 @rtw_set_wps_probe_resp(%struct.net_device*, %struct.ieee_param*, i32) #1

declare dso_local i32 @rtw_set_wps_assoc_resp(%struct.net_device*, %struct.ieee_param*, i32) #1

declare dso_local i32 @rtw_set_hidden_ssid(%struct.net_device*, %struct.ieee_param*, i32) #1

declare dso_local i32 @rtw_ioctl_get_sta_data(%struct.net_device*, %struct.ieee_param*, i32) #1

declare dso_local i32 @rtw_ioctl_set_macaddr_acl(%struct.net_device*, %struct.ieee_param*, i32) #1

declare dso_local i32 @rtw_ioctl_acl_add_sta(%struct.net_device*, %struct.ieee_param*, i32) #1

declare dso_local i32 @rtw_ioctl_acl_remove_sta(%struct.net_device*, %struct.ieee_param*, i32) #1

declare dso_local i32 @DBG_871X(i8*, i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.ieee_param*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
