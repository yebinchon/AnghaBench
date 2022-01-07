; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_main_usb.c_vnt_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_main_usb.c_vnt_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.vnt_private* }
%struct.vnt_private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FIF_ALLMULTI = common dso_local global i32 0, align 4
@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@FIF_BCN_PRBRESP_PROMISC = common dso_local global i32 0, align 4
@MESSAGE_TYPE_READ = common dso_local global i32 0, align 4
@MAC_REG_RCR = common dso_local global i32 0, align 4
@MESSAGE_REQUEST_MACREG = common dso_local global i32 0, align 4
@RCR_MULTICAST = common dso_local global i32 0, align 4
@RCR_BROADCAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"rx mode in = %x\0A\00", align 1
@RCR_BSSID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"rx mode out= %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i32)* @vnt_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnt_configure(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnt_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.vnt_private*, %struct.vnt_private** %13, align 8
  store %struct.vnt_private* %14, %struct.vnt_private** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @FIF_ALLMULTI, align 4
  %16 = load i32, i32* @FIF_OTHER_BSS, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %19 = or i32 %17, %18
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %19
  store i32 %22, i32* %20, align 4
  %23 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %24 = load i32, i32* @MESSAGE_TYPE_READ, align 4
  %25 = load i32, i32* @MAC_REG_RCR, align 4
  %26 = load i32, i32* @MESSAGE_REQUEST_MACREG, align 4
  %27 = call i32 @vnt_control_in(%struct.vnt_private* %23, i32 %24, i32 %25, i32 %26, i32 4, i32* %10)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @RCR_MULTICAST, align 4
  %32 = load i32, i32* @RCR_BROADCAST, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %30, %4
  %35 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %36 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @dev_dbg(i32* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @FIF_ALLMULTI, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %77

45:                                               ; preds = %34
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @FIF_ALLMULTI, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %45
  %52 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %53 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %54, 2
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %58 = call i32 @vnt_mac_set_filter(%struct.vnt_private* %57, i32 -1)
  br label %63

59:                                               ; preds = %51
  %60 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @vnt_mac_set_filter(%struct.vnt_private* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %56
  %64 = load i32, i32* @RCR_MULTICAST, align 4
  %65 = load i32, i32* @RCR_BROADCAST, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %10, align 4
  br label %76

69:                                               ; preds = %45
  %70 = load i32, i32* @RCR_MULTICAST, align 4
  %71 = load i32, i32* @RCR_BROADCAST, align 4
  %72 = or i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %69, %63
  br label %77

77:                                               ; preds = %76, %34
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @FIF_OTHER_BSS, align 4
  %80 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %77
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @FIF_OTHER_BSS, align 4
  %88 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load i32, i32* @RCR_BSSID, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %10, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %10, align 4
  br label %101

97:                                               ; preds = %84
  %98 = load i32, i32* @RCR_BSSID, align 4
  %99 = load i32, i32* %10, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %97, %92
  br label %102

102:                                              ; preds = %101, %77
  %103 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %104 = load i32, i32* @MESSAGE_REQUEST_MACREG, align 4
  %105 = load i32, i32* @MAC_REG_RCR, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @vnt_control_out_u8(%struct.vnt_private* %103, i32 %104, i32 %105, i32 %106)
  %108 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %109 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @dev_dbg(i32* %111, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  ret void
}

declare dso_local i32 @vnt_control_in(%struct.vnt_private*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @vnt_mac_set_filter(%struct.vnt_private*, i32) #1

declare dso_local i32 @vnt_control_out_u8(%struct.vnt_private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
