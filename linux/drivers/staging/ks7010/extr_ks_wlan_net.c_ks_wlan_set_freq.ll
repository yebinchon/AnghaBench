; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ks_wlan_private = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SLP_SLEEP = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@frequency_list = common dso_local global i32* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: New channel value of %d is invalid!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SME_MODE_SET = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ks_wlan_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_wlan_set_freq(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ks_wlan_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.ks_wlan_private* @netdev_priv(%struct.net_device* %14)
  store %struct.ks_wlan_private* %15, %struct.ks_wlan_private** %10, align 8
  %16 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %17 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SLP_SLEEP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %122

24:                                               ; preds = %4
  %25 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %26 = bitcast %union.iwreq_data* %25 to %struct.TYPE_3__*
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %73

30:                                               ; preds = %24
  %31 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %32 = bitcast %union.iwreq_data* %31 to %struct.TYPE_3__*
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 241200000
  br i1 %35, label %36, label %73

36:                                               ; preds = %30
  %37 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %38 = bitcast %union.iwreq_data* %37 to %struct.TYPE_3__*
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %40, 248700000
  br i1 %41, label %42, label %73

42:                                               ; preds = %36
  %43 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %44 = bitcast %union.iwreq_data* %43 to %struct.TYPE_3__*
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %46, 100000
  store i32 %47, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %61, %42
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %49, 14
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32, i32* %12, align 4
  %53 = load i32*, i32** @frequency_list, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %52, %57
  br label %59

59:                                               ; preds = %51, %48
  %60 = phi i1 [ false, %48 ], [ %58, %51 ]
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %48

64:                                               ; preds = %59
  %65 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %66 = bitcast %union.iwreq_data* %65 to %struct.TYPE_3__*
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  %70 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %71 = bitcast %union.iwreq_data* %70 to %struct.TYPE_3__*
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  br label %73

73:                                               ; preds = %64, %36, %30, %24
  %74 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %75 = bitcast %union.iwreq_data* %74 to %struct.TYPE_3__*
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %77, 1000
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %81 = bitcast %union.iwreq_data* %80 to %struct.TYPE_3__*
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79, %73
  %86 = load i32, i32* @EOPNOTSUPP, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %122

88:                                               ; preds = %79
  %89 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %90 = bitcast %union.iwreq_data* %89 to %struct.TYPE_3__*
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp slt i32 %93, 1
  br i1 %94, label %98, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %11, align 4
  %97 = icmp sgt i32 %96, 14
  br i1 %97, label %98, label %110

98:                                               ; preds = %95, %88
  %99 = load %struct.net_device*, %struct.net_device** %6, align 8
  %100 = load %struct.net_device*, %struct.net_device** %6, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %104 = bitcast %union.iwreq_data* %103 to %struct.TYPE_3__*
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @netdev_dbg(%struct.net_device* %99, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %122

110:                                              ; preds = %95
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %113 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* @SME_MODE_SET, align 4
  %116 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %117 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load i32, i32* @EINPROGRESS, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %110, %98, %85, %21
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local %struct.ks_wlan_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
