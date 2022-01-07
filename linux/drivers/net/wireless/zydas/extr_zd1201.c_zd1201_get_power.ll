; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/extr_zd1201.c_zd1201_get_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/extr_zd1201.c_zd1201_get_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32, i16 }
%struct.zd1201 = type { i32 }

@ZD1201_RID_CNFPMENABLED = common dso_local global i32 0, align 4
@ZD1201_RID_CNFPMEPS = common dso_local global i32 0, align 4
@ZD1201_RID_CNFMAXSLEEPDURATION = common dso_local global i32 0, align 4
@IW_POWER_TYPE = common dso_local global i32 0, align 4
@IW_POWER_PERIOD = common dso_local global i32 0, align 4
@IW_POWER_TIMEOUT = common dso_local global i32 0, align 4
@IW_POWER_MODE = common dso_local global i32 0, align 4
@IW_POWER_UNICAST_R = common dso_local global i32 0, align 4
@IW_POWER_ALL_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @zd1201_get_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1201_get_power(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.zd1201*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.zd1201* @netdev_priv(%struct.net_device* %15)
  store %struct.zd1201* %16, %struct.zd1201** %10, align 8
  %17 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %18 = load i32, i32* @ZD1201_RID_CNFPMENABLED, align 4
  %19 = call i32 @zd1201_getconfig16(%struct.zd1201* %17, i32 %18, i16* %11)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %5, align 4
  br label %107

24:                                               ; preds = %4
  %25 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %26 = load i32, i32* @ZD1201_RID_CNFPMEPS, align 4
  %27 = call i32 @zd1201_getconfig16(%struct.zd1201* %25, i32 %26, i16* %12)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %5, align 4
  br label %107

32:                                               ; preds = %24
  %33 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %34 = load i32, i32* @ZD1201_RID_CNFMAXSLEEPDURATION, align 4
  %35 = call i32 @zd1201_getconfig16(%struct.zd1201* %33, i32 %34, i16* %13)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %5, align 4
  br label %107

40:                                               ; preds = %32
  %41 = load i16, i16* %11, align 2
  %42 = sext i16 %41 to i32
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 0, i32 1
  %46 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %47 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %49 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IW_POWER_TYPE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %40
  %55 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %56 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IW_POWER_PERIOD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load i16, i16* %13, align 2
  %63 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %64 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %63, i32 0, i32 2
  store i16 %62, i16* %64, align 4
  %65 = load i32, i32* @IW_POWER_PERIOD, align 4
  %66 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %67 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %81

68:                                               ; preds = %54
  %69 = load i16, i16* %13, align 2
  %70 = sext i16 %69 to i32
  %71 = load i16, i16* %12, align 2
  %72 = sext i16 %71 to i32
  %73 = mul nsw i32 %70, %72
  %74 = sdiv i32 %73, 4
  %75 = trunc i32 %74 to i16
  %76 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %77 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %76, i32 0, i32 2
  store i16 %75, i16* %77, align 4
  %78 = load i32, i32* @IW_POWER_TIMEOUT, align 4
  %79 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %80 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %68, %61
  br label %82

82:                                               ; preds = %81, %40
  %83 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %84 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @IW_POWER_MODE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %82
  %90 = load i16, i16* %11, align 2
  %91 = sext i16 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load i16, i16* %12, align 2
  %95 = sext i16 %94 to i32
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i32, i32* @IW_POWER_UNICAST_R, align 4
  %99 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %100 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %105

101:                                              ; preds = %93, %89
  %102 = load i32, i32* @IW_POWER_ALL_R, align 4
  %103 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %104 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %101, %97
  br label %106

106:                                              ; preds = %105, %82
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %38, %30, %22
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local %struct.zd1201* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @zd1201_getconfig16(%struct.zd1201*, i32, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
