; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_wx.c__rtl92e_wx_get_gen_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_wx.c__rtl92e_wx_get_gen_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.r8192_priv = type { %struct.rtllib_device* }
%struct.rtllib_device = type { i64, i32* }

@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @_rtl92e_wx_get_gen_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92e_wx_get_gen_ie(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.r8192_priv*, align 8
  %12 = alloca %struct.rtllib_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %13)
  store %struct.r8192_priv* %14, %struct.r8192_priv** %11, align 8
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %16 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %15, i32 0, i32 0
  %17 = load %struct.rtllib_device*, %struct.rtllib_device** %16, align 8
  store %struct.rtllib_device* %17, %struct.rtllib_device** %12, align 8
  %18 = load %struct.rtllib_device*, %struct.rtllib_device** %12, align 8
  %19 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %4
  %23 = load %struct.rtllib_device*, %struct.rtllib_device** %12, align 8
  %24 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22, %4
  %28 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %29 = bitcast %union.iwreq_data* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  store i32 0, i32* %5, align 4
  br label %59

31:                                               ; preds = %22
  %32 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %33 = bitcast %union.iwreq_data* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.rtllib_device*, %struct.rtllib_device** %12, align 8
  %37 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @E2BIG, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %59

43:                                               ; preds = %31
  %44 = load %struct.rtllib_device*, %struct.rtllib_device** %12, align 8
  %45 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %48 = bitcast %union.iwreq_data* %47 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load %struct.rtllib_device*, %struct.rtllib_device** %12, align 8
  %52 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.rtllib_device*, %struct.rtllib_device** %12, align 8
  %55 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @memcpy(i8* %50, i32* %53, i64 %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %43, %40, %27
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
