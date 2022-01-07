; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac_wx.c_rtllib_wx_set_rawtx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac_wx.c_rtllib_wx_set_rawtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i16, i64, i32, i32, i32 (i32)* }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"raw TX is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@IW_MODE_MONITOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtllib_wx_set_rawtx(%struct.rtllib_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.rtllib_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  store %struct.rtllib_device* %0, %struct.rtllib_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %20 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %19, i32 0, i32 0
  %21 = load i16, i16* %20, align 8
  store i16 %21, i16* %11, align 2
  %22 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %23 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %22, i32 0, i32 2
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %29 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %28, i32 0, i32 0
  store i16 1, i16* %29, align 8
  br label %33

30:                                               ; preds = %4
  %31 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %32 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %31, i32 0, i32 0
  store i16 0, i16* %32, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %35 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %38 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %37, i32 0, i32 0
  %39 = load i16, i16* %38, align 8
  %40 = sext i16 %39 to i32
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %44 = call i32 @netdev_info(i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %46 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IW_MODE_MONITOR, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %94

50:                                               ; preds = %33
  %51 = load i16, i16* %11, align 2
  %52 = sext i16 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %50
  %55 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %56 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %55, i32 0, i32 0
  %57 = load i16, i16* %56, align 8
  %58 = sext i16 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %54
  %61 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %62 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %61, i32 0, i32 4
  %63 = load i32 (i32)*, i32 (i32)** %62, align 8
  %64 = icmp ne i32 (i32)* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %67 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %66, i32 0, i32 4
  %68 = load i32 (i32)*, i32 (i32)** %67, align 8
  %69 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %70 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 %68(i32 %71)
  br label %73

73:                                               ; preds = %65, %60
  %74 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %75 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @netif_carrier_on(i32 %76)
  br label %78

78:                                               ; preds = %73, %54, %50
  %79 = load i16, i16* %11, align 2
  %80 = sext i16 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %84 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %83, i32 0, i32 0
  %85 = load i16, i16* %84, align 8
  %86 = sext i16 %85 to i32
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %90 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @netif_carrier_off(i32 %91)
  br label %93

93:                                               ; preds = %88, %82, %78
  br label %94

94:                                               ; preds = %93, %33
  %95 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %96 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %95, i32 0, i32 2
  %97 = call i32 @mutex_unlock(i32* %96)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @netdev_info(i32, i8*, i8*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
