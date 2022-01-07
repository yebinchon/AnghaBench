; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_wpa_supplicant_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_wpa_supplicant_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_point = type { i32, i32 }
%struct.ieee_param = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct._adapter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_point*)* @wpa_supplicant_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_ioctl(%struct.net_device* %0, %struct.iw_point* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.iw_point*, align 8
  %6 = alloca %struct.ieee_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.iw_point* %1, %struct.iw_point** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct._adapter* @netdev_priv(%struct.net_device* %9)
  store %struct._adapter* %10, %struct._adapter** %8, align 8
  %11 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %12 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 40
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %18 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %112

24:                                               ; preds = %16
  %25 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %26 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %29 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.ieee_param* @memdup_user(i32 %27, i32 %30)
  store %struct.ieee_param* %31, %struct.ieee_param** %6, align 8
  %32 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %33 = call i64 @IS_ERR(%struct.ieee_param* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %37 = call i32 @PTR_ERR(%struct.ieee_param* %36)
  store i32 %37, i32* %3, align 4
  br label %112

38:                                               ; preds = %24
  %39 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %40 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %89 [
    i32 128, label %42
    i32 129, label %55
    i32 130, label %69
    i32 131, label %76
  ]

42:                                               ; preds = %38
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %45 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %50 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @wpa_set_param(%struct.net_device* %43, i32 %48, i32 %53)
  store i32 %54, i32* %7, align 4
  br label %92

55:                                               ; preds = %38
  %56 = load %struct._adapter*, %struct._adapter** %8, align 8
  %57 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %58 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %64 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @r871x_set_wpa_ie(%struct._adapter* %56, i8* %62, i32 %67)
  store i32 %68, i32* %7, align 4
  br label %92

69:                                               ; preds = %38
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %72 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %73 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @wpa_set_encryption(%struct.net_device* %70, %struct.ieee_param* %71, i32 %74)
  store i32 %75, i32* %7, align 4
  br label %92

76:                                               ; preds = %38
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %79 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %84 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @wpa_mlme(%struct.net_device* %77, i32 %82, i32 %87)
  store i32 %88, i32* %7, align 4
  br label %92

89:                                               ; preds = %38
  %90 = load i32, i32* @EOPNOTSUPP, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %89, %76, %69, %55, %42
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %92
  %96 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %97 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %100 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %101 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @copy_to_user(i32 %98, %struct.ieee_param* %99, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %95
  %106 = load i32, i32* @EFAULT, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %105, %95, %92
  %109 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %110 = call i32 @kfree(%struct.ieee_param* %109)
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %108, %35, %21
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct._adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ieee_param* @memdup_user(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ieee_param*) #1

declare dso_local i32 @PTR_ERR(%struct.ieee_param*) #1

declare dso_local i32 @wpa_set_param(%struct.net_device*, i32, i32) #1

declare dso_local i32 @r871x_set_wpa_ie(%struct._adapter*, i8*, i32) #1

declare dso_local i32 @wpa_set_encryption(%struct.net_device*, %struct.ieee_param*, i32) #1

declare dso_local i32 @wpa_mlme(%struct.net_device*, i32, i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.ieee_param*, i32) #1

declare dso_local i32 @kfree(%struct.ieee_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
