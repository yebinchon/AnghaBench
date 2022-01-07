; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac_wx.c_rtllib_wx_get_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac_wx.c_rtllib_wx_get_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, i32, i32, i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@RTLLIB_PS_DISABLED = common dso_local global i32 0, align 4
@IW_POWER_TYPE = common dso_local global i32 0, align 4
@IW_POWER_TIMEOUT = common dso_local global i32 0, align 4
@IW_POWER_PERIOD = common dso_local global i32 0, align 4
@RTLLIB_PS_MBCAST = common dso_local global i32 0, align 4
@RTLLIB_PS_UNICAST = common dso_local global i32 0, align 4
@IW_POWER_ALL_R = common dso_local global i32 0, align 4
@IW_POWER_MULTICAST_R = common dso_local global i32 0, align 4
@IW_POWER_UNICAST_R = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtllib_wx_get_power(%struct.rtllib_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.rtllib_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %10 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %9, i32 0, i32 3
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %13 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RTLLIB_PS_DISABLED, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %19 = bitcast %union.iwreq_data* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %99

21:                                               ; preds = %4
  %22 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %23 = bitcast %union.iwreq_data* %22 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %26 = bitcast %union.iwreq_data* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IW_POWER_TYPE, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @IW_POWER_TIMEOUT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %21
  %34 = load i32, i32* @IW_POWER_TIMEOUT, align 4
  %35 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %36 = bitcast %union.iwreq_data* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %39 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 1000
  %42 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %43 = bitcast %union.iwreq_data* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  br label %57

45:                                               ; preds = %21
  %46 = load i32, i32* @IW_POWER_PERIOD, align 4
  %47 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %48 = bitcast %union.iwreq_data* %47 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %51 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, 1000
  %54 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %55 = bitcast %union.iwreq_data* %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %45, %33
  %58 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %59 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @RTLLIB_PS_MBCAST, align 4
  %62 = load i32, i32* @RTLLIB_PS_UNICAST, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = load i32, i32* @RTLLIB_PS_MBCAST, align 4
  %66 = load i32, i32* @RTLLIB_PS_UNICAST, align 4
  %67 = or i32 %65, %66
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %57
  %70 = load i32, i32* @IW_POWER_ALL_R, align 4
  %71 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %72 = bitcast %union.iwreq_data* %71 to %struct.TYPE_2__*
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %70
  store i32 %75, i32* %73, align 4
  br label %98

76:                                               ; preds = %57
  %77 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %78 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @RTLLIB_PS_MBCAST, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = load i32, i32* @IW_POWER_MULTICAST_R, align 4
  %85 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %86 = bitcast %union.iwreq_data* %85 to %struct.TYPE_2__*
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %84
  store i32 %89, i32* %87, align 4
  br label %97

90:                                               ; preds = %76
  %91 = load i32, i32* @IW_POWER_UNICAST_R, align 4
  %92 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %93 = bitcast %union.iwreq_data* %92 to %struct.TYPE_2__*
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %91
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %90, %83
  br label %98

98:                                               ; preds = %97, %69
  br label %99

99:                                               ; preds = %98, %17
  %100 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %101 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %100, i32 0, i32 3
  %102 = call i32 @mutex_unlock(i32* %101)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
