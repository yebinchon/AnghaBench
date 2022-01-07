; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_get_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_get_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32, i32 }
%struct.ks_wlan_private = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@SLP_SLEEP = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_ENCODE_OPEN = common dso_local global i32 0, align 4
@IW_ENCODE_RESTRICTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ks_wlan_get_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_wlan_get_encode(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ks_wlan_private*, align 8
  %11 = alloca %struct.iw_point*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.ks_wlan_private* @netdev_priv(%struct.net_device* %13)
  store %struct.ks_wlan_private* %14, %struct.ks_wlan_private** %10, align 8
  %15 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %16 = bitcast %union.iwreq_data* %15 to %struct.iw_point*
  store %struct.iw_point* %16, %struct.iw_point** %11, align 8
  %17 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %18 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %21 = and i32 %19, %20
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %12, align 4
  %23 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %24 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SLP_SLEEP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EPERM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %124

31:                                               ; preds = %4
  %32 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %33 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %34 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %36 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %47 [
    i32 129, label %39
    i32 128, label %43
  ]

39:                                               ; preds = %31
  %40 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %41 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %42 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %47

43:                                               ; preds = %31
  %44 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %45 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %46 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %31, %43, %39
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %12, align 4
  %52 = icmp sge i32 %51, 4
  br i1 %52, label %53, label %58

53:                                               ; preds = %50, %47
  %54 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %55 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %53, %50
  %59 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %60 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %68 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %64, %58
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  %74 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %75 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %123

80:                                               ; preds = %71
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %81, 4
  br i1 %82, label %83, label %123

83:                                               ; preds = %80
  %84 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %85 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp sle i32 %92, 16
  br i1 %93, label %94, label %104

94:                                               ; preds = %83
  %95 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %96 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  br label %105

104:                                              ; preds = %83
  br label %105

105:                                              ; preds = %104, %94
  %106 = phi i32 [ %103, %94 ], [ 0, %104 ]
  %107 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %108 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load i8*, i8** %9, align 8
  %110 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %111 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %120 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @memcpy(i8* %109, i32 %118, i32 %121)
  br label %123

123:                                              ; preds = %105, %80, %71
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %123, %28
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local %struct.ks_wlan_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
