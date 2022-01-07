; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_wx.c__rtl92e_wx_get_promisc_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_wx.c__rtl92e_wx_get_promisc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.r8192_priv = type { i32, %struct.rtllib_device* }
%struct.rtllib_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"PromiscuousMode:%d, FilterSrcSTAFrame:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @_rtl92e_wx_get_promisc_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92e_wx_get_promisc_mode(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.r8192_priv*, align 8
  %10 = alloca %struct.rtllib_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %11)
  store %struct.r8192_priv* %12, %struct.r8192_priv** %9, align 8
  %13 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %14 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %13, i32 0, i32 1
  %15 = load %struct.rtllib_device*, %struct.rtllib_device** %14, align 8
  store %struct.rtllib_device* %15, %struct.rtllib_device** %10, align 8
  %16 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %17 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.rtllib_device*, %struct.rtllib_device** %10, align 8
  %21 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rtllib_device*, %struct.rtllib_device** %10, align 8
  %25 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @snprintf(i8* %19, i32 45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %27)
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = add nsw i64 %30, 1
  %32 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %33 = bitcast %union.iwreq_data* %32 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %36 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  ret i32 0
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
