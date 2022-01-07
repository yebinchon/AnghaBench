; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/extr_zd1201.c_zd1201_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/extr_zd1201.c_zd1201_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i16, i64 }
%struct.zd1201 = type { i32 }

@IW_POWER_PERIOD = common dso_local global i32 0, align 4
@ZD1201_RID_CNFMAXSLEEPDURATION = common dso_local global i32 0, align 4
@IW_POWER_TIMEOUT = common dso_local global i32 0, align 4
@ZD1201_RID_CNFPMEPS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ZD1201_RID_CNFPMENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @zd1201_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1201_set_power(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
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
  %17 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %18 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 0, i32 1
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %11, align 2
  %24 = load i16, i16* %11, align 2
  %25 = icmp ne i16 %24, 0
  br i1 %25, label %26, label %93

26:                                               ; preds = %4
  %27 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %28 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IW_POWER_PERIOD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %35 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %34, i32 0, i32 1
  %36 = load i16, i16* %35, align 4
  store i16 %36, i16* %12, align 2
  %37 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %38 = load i32, i32* @ZD1201_RID_CNFMAXSLEEPDURATION, align 4
  %39 = load i16, i16* %12, align 2
  %40 = call i32 @zd1201_setconfig16(%struct.zd1201* %37, i32 %38, i16 signext %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %5, align 4
  br label %99

45:                                               ; preds = %33
  br label %94

46:                                               ; preds = %26
  %47 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %48 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IW_POWER_TIMEOUT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %90

53:                                               ; preds = %46
  %54 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %55 = load i32, i32* @ZD1201_RID_CNFMAXSLEEPDURATION, align 4
  %56 = call i32 @zd1201_getconfig16(%struct.zd1201* %54, i32 %55, i16* %12)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %5, align 4
  br label %99

61:                                               ; preds = %53
  %62 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %63 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %62, i32 0, i32 1
  %64 = load i16, i16* %63, align 4
  %65 = sext i16 %64 to i32
  %66 = mul nsw i32 %65, 4
  %67 = load i16, i16* %12, align 2
  %68 = sext i16 %67 to i32
  %69 = sdiv i32 %66, %68
  %70 = trunc i32 %69 to i16
  store i16 %70, i16* %13, align 2
  %71 = load i16, i16* %13, align 2
  %72 = sext i16 %71 to i32
  %73 = icmp sgt i32 %72, 4
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  store i16 4, i16* %13, align 2
  br label %75

75:                                               ; preds = %74, %61
  %76 = load i16, i16* %13, align 2
  %77 = sext i16 %76 to i32
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i16 0, i16* %13, align 2
  br label %80

80:                                               ; preds = %79, %75
  %81 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %82 = load i32, i32* @ZD1201_RID_CNFPMEPS, align 4
  %83 = load i16, i16* %13, align 2
  %84 = call i32 @zd1201_setconfig16(%struct.zd1201* %81, i32 %82, i16 signext %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %5, align 4
  br label %99

89:                                               ; preds = %80
  br label %94

90:                                               ; preds = %46
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %99

93:                                               ; preds = %4
  br label %94

94:                                               ; preds = %93, %89, %45
  %95 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %96 = load i32, i32* @ZD1201_RID_CNFPMENABLED, align 4
  %97 = load i16, i16* %11, align 2
  %98 = call i32 @zd1201_setconfig16(%struct.zd1201* %95, i32 %96, i16 signext %97)
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %94, %90, %87, %59, %43
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local %struct.zd1201* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @zd1201_setconfig16(%struct.zd1201*, i32, i16 signext) #1

declare dso_local i32 @zd1201_getconfig16(%struct.zd1201*, i32, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
