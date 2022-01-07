; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_get_aplist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_get_aplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ks_wlan_private = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.sockaddr = type { i32, i32 }
%struct.iw_quality = type { i32, i64, i32, i64 }

@LOCAL_APLIST_MAX = common dso_local global i32 0, align 4
@SLP_SLEEP = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ks_wlan_get_aplist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_wlan_get_aplist(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ks_wlan_private*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.ks_wlan_private* @netdev_priv(%struct.net_device* %16)
  store %struct.ks_wlan_private* %17, %struct.ks_wlan_private** %10, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.sockaddr*
  store %struct.sockaddr* %19, %struct.sockaddr** %11, align 8
  %20 = load i32, i32* @LOCAL_APLIST_MAX, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca %struct.iw_quality, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %25 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SLP_SLEEP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EPERM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %124

32:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %33

33:                                               ; preds = %98, %32
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %36 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %101

40:                                               ; preds = %33
  %41 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %41, i64 %43
  %45 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %48 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ether_addr_copy(i32 %46, i32 %55)
  %57 = load i32, i32* @ARPHRD_ETHER, align 4
  %58 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %58, i64 %60
  %62 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %61, i32 0, i32 0
  store i32 %57, i32* %62, align 4
  %63 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %64 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 256, %71
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %23, i64 %74
  %76 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %75, i32 0, i32 3
  store i64 %72, i64* %76, align 8
  %77 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %78 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %23, i64 %87
  %89 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %88, i32 0, i32 2
  store i32 %85, i32* %89, align 16
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %23, i64 %91
  %93 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %92, i32 0, i32 1
  store i64 0, i64* %93, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %23, i64 %95
  %97 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %96, i32 0, i32 0
  store i32 7, i32* %97, align 16
  br label %98

98:                                               ; preds = %40
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %33

101:                                              ; preds = %33
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %101
  %105 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %106 = bitcast %union.iwreq_data* %105 to %struct.TYPE_6__*
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 4
  %108 = load i8*, i8** %9, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 8, %110
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  %113 = bitcast %struct.iw_quality* %23 to %struct.iw_quality**
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 32, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @memcpy(i8* %112, %struct.iw_quality** %113, i32 %117)
  br label %119

119:                                              ; preds = %104, %101
  %120 = load i32, i32* %14, align 4
  %121 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %122 = bitcast %union.iwreq_data* %121 to %struct.TYPE_6__*
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  store i32 %120, i32* %123, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %124

124:                                              ; preds = %119, %29
  %125 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local %struct.ks_wlan_private* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.iw_quality**, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
