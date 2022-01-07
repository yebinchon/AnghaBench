; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r871x_wps_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r871x_wps_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32 }
%struct._adapter = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 (%struct._adapter.0*, i32)* }
%struct._adapter.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@LED_CTL_START_WPS = common dso_local global i32 0, align 4
@LED_CTL_STOP_WPS = common dso_local global i32 0, align 4
@LED_CTL_STOP_WPS_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @r871x_wps_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r871x_wps_start(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._adapter*, align 8
  %11 = alloca %struct.iw_point*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct._adapter* @netdev_priv(%struct.net_device* %13)
  store %struct._adapter* %14, %struct._adapter** %10, align 8
  %15 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %16 = bitcast %union.iwreq_data* %15 to %struct.iw_point*
  store %struct.iw_point* %16, %struct.iw_point** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct._adapter*, %struct._adapter** %10, align 8
  %18 = getelementptr inbounds %struct._adapter, %struct._adapter* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %23 = icmp eq %struct.iw_point* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %83

27:                                               ; preds = %21
  %28 = bitcast i32* %12 to i8*
  %29 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %30 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @copy_from_user(i8* %28, i32 %31, i32 4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EFAULT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %83

37:                                               ; preds = %27
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i8*, i8** %9, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32, i32* %12, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load %struct._adapter*, %struct._adapter** %10, align 8
  %49 = getelementptr inbounds %struct._adapter, %struct._adapter* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct._adapter.0*, i32)*, i32 (%struct._adapter.0*, i32)** %50, align 8
  %52 = load %struct._adapter*, %struct._adapter** %10, align 8
  %53 = bitcast %struct._adapter* %52 to %struct._adapter.0*
  %54 = load i32, i32* @LED_CTL_START_WPS, align 4
  %55 = call i32 %51(%struct._adapter.0* %53, i32 %54)
  br label %82

56:                                               ; preds = %44
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load %struct._adapter*, %struct._adapter** %10, align 8
  %61 = getelementptr inbounds %struct._adapter, %struct._adapter* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (%struct._adapter.0*, i32)*, i32 (%struct._adapter.0*, i32)** %62, align 8
  %64 = load %struct._adapter*, %struct._adapter** %10, align 8
  %65 = bitcast %struct._adapter* %64 to %struct._adapter.0*
  %66 = load i32, i32* @LED_CTL_STOP_WPS, align 4
  %67 = call i32 %63(%struct._adapter.0* %65, i32 %66)
  br label %81

68:                                               ; preds = %56
  %69 = load i32, i32* %12, align 4
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load %struct._adapter*, %struct._adapter** %10, align 8
  %73 = getelementptr inbounds %struct._adapter, %struct._adapter* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32 (%struct._adapter.0*, i32)*, i32 (%struct._adapter.0*, i32)** %74, align 8
  %76 = load %struct._adapter*, %struct._adapter** %10, align 8
  %77 = bitcast %struct._adapter* %76 to %struct._adapter.0*
  %78 = load i32, i32* @LED_CTL_STOP_WPS_FAIL, align 4
  %79 = call i32 %75(%struct._adapter.0* %77, i32 %78)
  br label %80

80:                                               ; preds = %71, %68
  br label %81

81:                                               ; preds = %80, %59
  br label %82

82:                                               ; preds = %81, %47
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %34, %24
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct._adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @copy_from_user(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
