; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_wpa_supplicant_ioctl_rsl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_wpa_supplicant_ioctl_rsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }
%struct.iw_point = type { i32, i32 }
%struct.ieee_param = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unknown WPA supplicant request: %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_wpa_supplicant_ioctl(%struct.ieee80211_device* %0, %struct.iw_point* %1) #0 {
  %3 = alloca %struct.ieee80211_device*, align 8
  %4 = alloca %struct.iw_point*, align 8
  %5 = alloca %struct.ieee_param*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %3, align 8
  store %struct.iw_point* %1, %struct.iw_point** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %11 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 20
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %17 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %107

23:                                               ; preds = %15
  %24 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %25 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %28 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.ieee_param* @memdup_user(i32 %26, i32 %29)
  store %struct.ieee_param* %30, %struct.ieee_param** %5, align 8
  %31 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %32 = call i64 @IS_ERR(%struct.ieee_param* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %36 = call i32 @PTR_ERR(%struct.ieee_param* %35)
  store i32 %36, i32* %6, align 4
  br label %107

37:                                               ; preds = %23
  %38 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %39 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %81 [
    i32 128, label %41
    i32 129, label %54
    i32 130, label %61
    i32 131, label %68
  ]

41:                                               ; preds = %37
  %42 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %43 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %44 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %49 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ieee80211_wpa_set_param(%struct.ieee80211_device* %42, i32 %47, i32 %52)
  store i32 %53, i32* %6, align 4
  br label %88

54:                                               ; preds = %37
  %55 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %56 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %57 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %58 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ieee80211_wpa_set_wpa_ie(%struct.ieee80211_device* %55, %struct.ieee_param* %56, i32 %59)
  store i32 %60, i32* %6, align 4
  br label %88

61:                                               ; preds = %37
  %62 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %63 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %64 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %65 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ieee80211_wpa_set_encryption(%struct.ieee80211_device* %62, %struct.ieee_param* %63, i32 %66)
  store i32 %67, i32* %6, align 4
  br label %88

68:                                               ; preds = %37
  %69 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %70 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %71 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %76 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ieee80211_wpa_mlme(%struct.ieee80211_device* %69, i32 %74, i32 %79)
  store i32 %80, i32* %6, align 4
  br label %88

81:                                               ; preds = %37
  %82 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %83 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @EOPNOTSUPP, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %81, %68, %61, %54, %41
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %93 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %96 = load %struct.iw_point*, %struct.iw_point** %4, align 8
  %97 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @copy_to_user(i32 %94, %struct.ieee_param* %95, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %91
  %102 = load i32, i32* @EFAULT, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %101, %91, %88
  %105 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %106 = call i32 @kfree(%struct.ieee_param* %105)
  br label %107

107:                                              ; preds = %104, %34, %20
  %108 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %109 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %108, i32 0, i32 0
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ieee_param* @memdup_user(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ieee_param*) #1

declare dso_local i32 @PTR_ERR(%struct.ieee_param*) #1

declare dso_local i32 @ieee80211_wpa_set_param(%struct.ieee80211_device*, i32, i32) #1

declare dso_local i32 @ieee80211_wpa_set_wpa_ie(%struct.ieee80211_device*, %struct.ieee_param*, i32) #1

declare dso_local i32 @ieee80211_wpa_set_encryption(%struct.ieee80211_device*, %struct.ieee_param*, i32) #1

declare dso_local i32 @ieee80211_wpa_mlme(%struct.ieee80211_device*, i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.ieee_param*, i32) #1

declare dso_local i32 @kfree(%struct.ieee_param*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
