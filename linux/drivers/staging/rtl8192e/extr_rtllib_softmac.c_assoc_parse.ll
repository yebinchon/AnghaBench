; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_assoc_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_assoc_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.sk_buff = type { i32, i64 }
%struct.rtllib_assoc_response_frame = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Invalid len in auth resp: %d\0A\00", align 1
@WLAN_STATUS_ASSOC_DENIED_RATES = common dso_local global i32 0, align 4
@WLAN_STATUS_CAPS_UNSUPPORTED = common dso_local global i32 0, align 4
@IEEE_G = common dso_local global i64 0, align 8
@IEEE_N_24G = common dso_local global i64 0, align 8
@RT_ASOC_RETRY_LIMIT = common dso_local global i32 0, align 4
@HT_IOT_ACT_PURE_N_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtllib_device*, %struct.sk_buff*, i32*)* @assoc_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assoc_parse(%struct.rtllib_device* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtllib_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rtllib_assoc_response_frame*, align 8
  %9 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 8
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %17 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @netdev_dbg(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 51966, i32* %4, align 4
  br label %83

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.rtllib_assoc_response_frame*
  store %struct.rtllib_assoc_response_frame* %27, %struct.rtllib_assoc_response_frame** %8, align 8
  %28 = load %struct.rtllib_assoc_response_frame*, %struct.rtllib_assoc_response_frame** %8, align 8
  %29 = getelementptr inbounds %struct.rtllib_assoc_response_frame, %struct.rtllib_assoc_response_frame* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16_to_cpu(i32 %30)
  %32 = and i32 %31, 16383
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.rtllib_assoc_response_frame*, %struct.rtllib_assoc_response_frame** %8, align 8
  %35 = getelementptr inbounds %struct.rtllib_assoc_response_frame, %struct.rtllib_assoc_response_frame* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @WLAN_STATUS_ASSOC_DENIED_RATES, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %23
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @WLAN_STATUS_CAPS_UNSUPPORTED, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %41, %23
  %46 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %47 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IEEE_G, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %45
  %52 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %53 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IEEE_N_24G, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %51
  %59 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %60 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = load i32, i32* @RT_ASOC_RETRY_LIMIT, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %61, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %58
  %68 = load i32, i32* @HT_IOT_ACT_PURE_N_MODE, align 4
  %69 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %70 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %68
  store i32 %74, i32* %72, align 4
  br label %78

75:                                               ; preds = %58, %51, %45, %41
  %76 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %77 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %75, %67
  %79 = load %struct.rtllib_assoc_response_frame*, %struct.rtllib_assoc_response_frame** %8, align 8
  %80 = getelementptr inbounds %struct.rtllib_assoc_response_frame, %struct.rtllib_assoc_response_frame* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le16_to_cpu(i32 %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %78, %15
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
