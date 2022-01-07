; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_linux.c_wpa_supplicant_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_linux.c_wpa_supplicant_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_point = type { i32, i32 }
%struct.ieee_param = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.adapter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unknown WPA supplicant request: %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_point*)* @wpa_supplicant_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_ioctl(%struct.net_device* %0, %struct.iw_point* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.iw_point*, align 8
  %5 = alloca %struct.ieee_param*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.iw_point* %1, %struct.iw_point** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %8 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 40
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %14 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %124

20:                                               ; preds = %12
  %21 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %22 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.ieee_param* @rtw_malloc(i32 %23)
  store %struct.ieee_param* %24, %struct.ieee_param** %5, align 8
  %25 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %26 = icmp eq %struct.ieee_param* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %124

30:                                               ; preds = %20
  %31 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %32 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %33 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %36 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @copy_from_user(%struct.ieee_param* %31, i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %42 = call i32 @kfree(%struct.ieee_param* %41)
  %43 = load i32, i32* @EFAULT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %124

45:                                               ; preds = %30
  %46 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %47 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %98 [
    i32 128, label %49
    i32 129, label %62
    i32 130, label %78
    i32 131, label %85
  ]

49:                                               ; preds = %45
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %52 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %57 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @wpa_set_param(%struct.net_device* %50, i32 %55, i32 %60)
  store i32 %61, i32* %6, align 4
  br label %105

62:                                               ; preds = %45
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = call i64 @rtw_netdev_priv(%struct.net_device* %63)
  %65 = inttoptr i64 %64 to %struct.adapter*
  %66 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %67 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %73 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @rtw_set_wpa_ie(%struct.adapter* %65, i8* %71, i32 %76)
  store i32 %77, i32* %6, align 4
  br label %105

78:                                               ; preds = %45
  %79 = load %struct.net_device*, %struct.net_device** %3, align 8
  %80 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %81 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %82 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @wpa_set_encryption(%struct.net_device* %79, %struct.ieee_param* %80, i32 %83)
  store i32 %84, i32* %6, align 4
  br label %105

85:                                               ; preds = %45
  %86 = load %struct.net_device*, %struct.net_device** %3, align 8
  %87 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %88 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %93 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @wpa_mlme(%struct.net_device* %86, i32 %91, i32 %96)
  store i32 %97, i32* %6, align 4
  br label %105

98:                                               ; preds = %45
  %99 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %100 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @DBG_871X(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EOPNOTSUPP, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %98, %85, %78, %62, %49
  %106 = load i32, i32* %6, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %105
  %109 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %110 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %113 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %114 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @copy_to_user(i32 %111, %struct.ieee_param* %112, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %108
  %119 = load i32, i32* @EFAULT, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %118, %108, %105
  %122 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %123 = call i32 @kfree(%struct.ieee_param* %122)
  br label %124

124:                                              ; preds = %121, %40, %27, %17
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local %struct.ieee_param* @rtw_malloc(i32) #1

declare dso_local i64 @copy_from_user(%struct.ieee_param*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ieee_param*) #1

declare dso_local i32 @wpa_set_param(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtw_set_wpa_ie(%struct.adapter*, i8*, i32) #1

declare dso_local i64 @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local i32 @wpa_set_encryption(%struct.net_device*, %struct.ieee_param*, i32) #1

declare dso_local i32 @wpa_mlme(%struct.net_device*, i32, i32) #1

declare dso_local i32 @DBG_871X(i8*, i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.ieee_param*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
