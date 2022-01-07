; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_ioctl_linux.c_wpa_supplicant_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_ioctl_linux.c_wpa_supplicant_ioctl.c"
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
  br label %125

20:                                               ; preds = %12
  %21 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %22 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @rtw_malloc(i32 %23)
  %25 = inttoptr i64 %24 to %struct.ieee_param*
  store %struct.ieee_param* %25, %struct.ieee_param** %5, align 8
  %26 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %27 = icmp ne %struct.ieee_param* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %125

31:                                               ; preds = %20
  %32 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %33 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %34 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %37 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @copy_from_user(%struct.ieee_param* %32, i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %43 = call i32 @kfree(%struct.ieee_param* %42)
  %44 = load i32, i32* @EFAULT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %125

46:                                               ; preds = %31
  %47 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %48 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %99 [
    i32 128, label %50
    i32 129, label %63
    i32 130, label %79
    i32 131, label %86
  ]

50:                                               ; preds = %46
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %53 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %58 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @wpa_set_param(%struct.net_device* %51, i32 %56, i32 %61)
  store i32 %62, i32* %6, align 4
  br label %106

63:                                               ; preds = %46
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = call i64 @rtw_netdev_priv(%struct.net_device* %64)
  %66 = inttoptr i64 %65 to %struct.adapter*
  %67 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %68 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %74 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @rtw_set_wpa_ie(%struct.adapter* %66, i8* %72, i32 %77)
  store i32 %78, i32* %6, align 4
  br label %106

79:                                               ; preds = %46
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %82 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %83 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @wpa_set_encryption(%struct.net_device* %80, %struct.ieee_param* %81, i32 %84)
  store i32 %85, i32* %6, align 4
  br label %106

86:                                               ; preds = %46
  %87 = load %struct.net_device*, %struct.net_device** %3, align 8
  %88 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %89 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %94 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @wpa_mlme(%struct.net_device* %87, i32 %92, i32 %97)
  store i32 %98, i32* %6, align 4
  br label %106

99:                                               ; preds = %46
  %100 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %101 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @DBG_88E(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @EOPNOTSUPP, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %99, %86, %79, %63, %50
  %107 = load i32, i32* %6, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %106
  %110 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %111 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %114 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %115 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @copy_to_user(i32 %112, %struct.ieee_param* %113, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %109
  %120 = load i32, i32* @EFAULT, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %119, %109, %106
  %123 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %124 = call i32 @kfree(%struct.ieee_param* %123)
  br label %125

125:                                              ; preds = %122, %41, %28, %17
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i64 @rtw_malloc(i32) #1

declare dso_local i64 @copy_from_user(%struct.ieee_param*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ieee_param*) #1

declare dso_local i32 @wpa_set_param(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtw_set_wpa_ie(%struct.adapter*, i8*, i32) #1

declare dso_local i64 @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local i32 @wpa_set_encryption(%struct.net_device*, %struct.ieee_param*, i32) #1

declare dso_local i32 @wpa_mlme(%struct.net_device*, i32, i32) #1

declare dso_local i32 @DBG_88E(i8*, i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.ieee_param*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
