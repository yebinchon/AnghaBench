; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/extr_zd1201.c_zd1201_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/extr_zd1201.c_zd1201_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.zd1201 = type { i16, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@IW_MODE_MASTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ZD1201_RID_PROMISCUOUSMODE = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ARPHRD_IEEE80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"\00-*#\00\00", align 1
@ZD1201_PORTTYPE_PSEUDOIBSS = common dso_local global i16 0, align 2
@ZD1201_PORTTYPE_IBSS = common dso_local global i16 0, align 2
@ZD1201_PORTTYPE_BSS = common dso_local global i16 0, align 2
@ZD1201_RID_CNFPORTTYPE = common dso_local global i32 0, align 4
@ZD1201_RID_CNFDESIREDSSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, i32*, i8*)* @zd1201_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1201_set_mode(%struct.net_device* %0, %struct.iw_request_info* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.zd1201*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call %struct.zd1201* @netdev_priv(%struct.net_device* %17)
  store %struct.zd1201* %18, %struct.zd1201** %10, align 8
  store i16 0, i16* %12, align 2
  %19 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %20 = add nsw i32 %19, 2
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %24 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %25 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IW_MODE_MASTER, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %120

36:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %120

37:                                               ; preds = %4
  %38 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %39 = load i32, i32* @ZD1201_RID_PROMISCUOUSMODE, align 4
  %40 = call i32 @zd1201_setconfig16(%struct.zd1201* %38, i32 %39, i16 signext 0)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %120

45:                                               ; preds = %37
  %46 = load i32, i32* @ARPHRD_ETHER, align 4
  %47 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %48 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %67 [
    i32 128, label %53
    i32 8, label %61
    i32 130, label %63
    i32 129, label %65
  ]

53:                                               ; preds = %45
  store i16 1, i16* %12, align 2
  %54 = load i32, i32* @ARPHRD_IEEE80211, align 4
  %55 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %56 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 4
  %59 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %60 = call i32 @zd1201_join(%struct.zd1201* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  br label %61

61:                                               ; preds = %45, %53
  %62 = load i16, i16* @ZD1201_PORTTYPE_PSEUDOIBSS, align 2
  store i16 %62, i16* %11, align 2
  br label %70

63:                                               ; preds = %45
  %64 = load i16, i16* @ZD1201_PORTTYPE_IBSS, align 2
  store i16 %64, i16* %11, align 2
  br label %70

65:                                               ; preds = %45
  %66 = load i16, i16* @ZD1201_PORTTYPE_BSS, align 2
  store i16 %66, i16* %11, align 2
  br label %70

67:                                               ; preds = %45
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %120

70:                                               ; preds = %65, %63, %61
  %71 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %72 = load i32, i32* @ZD1201_RID_CNFPORTTYPE, align 4
  %73 = load i16, i16* %11, align 2
  %74 = call i32 @zd1201_setconfig16(%struct.zd1201* %71, i32 %72, i16 signext %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %15, align 4
  store i32 %78, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %120

79:                                               ; preds = %70
  %80 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %81 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %80, i32 0, i32 0
  %82 = load i16, i16* %81, align 8
  %83 = sext i16 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %114

85:                                               ; preds = %79
  %86 = load i16, i16* %12, align 2
  %87 = icmp ne i16 %86, 0
  br i1 %87, label %114, label %88

88:                                               ; preds = %85
  %89 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %90 = call i32 @zd1201_disable(%struct.zd1201* %89)
  %91 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %92 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @cpu_to_le16(i32 %93)
  %95 = bitcast i8* %23 to i32*
  store i32 %94, i32* %95, align 16
  %96 = getelementptr inbounds i8, i8* %23, i64 2
  %97 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %98 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %101 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @memcpy(i8* %96, i32 %99, i32 %102)
  %104 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %105 = load i32, i32* @ZD1201_RID_CNFDESIREDSSID, align 4
  %106 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %107 = add nsw i32 %106, 2
  %108 = call i32 @zd1201_setconfig(%struct.zd1201* %104, i32 %105, i8* %23, i32 %107, i32 1)
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %88
  %112 = load i32, i32* %15, align 4
  store i32 %112, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %120

113:                                              ; preds = %88
  br label %114

114:                                              ; preds = %113, %85, %79
  %115 = load i16, i16* %12, align 2
  %116 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %117 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %116, i32 0, i32 0
  store i16 %115, i16* %117, align 8
  %118 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %119 = call i32 @zd1201_mac_reset(%struct.zd1201* %118)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %120

120:                                              ; preds = %114, %111, %77, %67, %43, %36, %33
  %121 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %121)
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local %struct.zd1201* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @zd1201_setconfig16(%struct.zd1201*, i32, i16 signext) #1

declare dso_local i32 @zd1201_join(%struct.zd1201*, i8*, i32) #1

declare dso_local i32 @zd1201_disable(%struct.zd1201*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @zd1201_setconfig(%struct.zd1201*, i32, i8*, i32, i32) #1

declare dso_local i32 @zd1201_mac_reset(%struct.zd1201*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
