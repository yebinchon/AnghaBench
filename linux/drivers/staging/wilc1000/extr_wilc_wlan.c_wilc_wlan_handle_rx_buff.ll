; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_wlan_handle_rx_buff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_wlan_handle_rx_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { i64, i32 }
%struct.wilc_cfg_rsp = type { i64, i64 }

@IS_MANAGMEMENT = common dso_local global i32 0, align 4
@HOST_HDR_OFFSET = common dso_local global i32 0, align 4
@WILC_CFG_RSP = common dso_local global i64 0, align 8
@WILC_CFG_RSP_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wilc*, i32*, i32)* @wilc_wlan_handle_rx_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wilc_wlan_handle_rx_buff(%struct.wilc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.wilc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.wilc_cfg_rsp, align 8
  store %struct.wilc* %0, %struct.wilc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %111, %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32* %19, i32** %13, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = call i32 @get_unaligned_le32(i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = ashr i32 %22, 31
  %24 = and i32 %23, 1
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %8, align 4
  %26 = ashr i32 %25, 22
  %27 = and i32 %26, 511
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %28, 11
  %30 = and i32 %29, 2047
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 2047
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %15
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %15
  br label %112

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @IS_MANAGMEMENT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load i32, i32* @HOST_HDR_OFFSET, align 4
  %46 = load i32*, i32** %13, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32* %48, i32** %13, align 8
  %49 = load %struct.wilc*, %struct.wilc** %4, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @wilc_wfi_mgmt_rx(%struct.wilc* %49, i32* %50, i32 %51)
  br label %102

53:                                               ; preds = %39
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.wilc*, %struct.wilc** %4, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @wilc_frmw_to_host(%struct.wilc* %60, i32* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %56
  br label %101

66:                                               ; preds = %53
  %67 = load i32, i32* %10, align 4
  %68 = load i32*, i32** %13, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32* %70, i32** %13, align 8
  %71 = load %struct.wilc*, %struct.wilc** %4, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @wilc_wlan_cfg_indicate_rx(%struct.wilc* %71, i32* %72, i32 %73, %struct.wilc_cfg_rsp* %14)
  %75 = getelementptr inbounds %struct.wilc_cfg_rsp, %struct.wilc_cfg_rsp* %14, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @WILC_CFG_RSP, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %66
  %80 = load %struct.wilc*, %struct.wilc** %4, align 8
  %81 = getelementptr inbounds %struct.wilc, %struct.wilc* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.wilc_cfg_rsp, %struct.wilc_cfg_rsp* %14, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %82, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load %struct.wilc*, %struct.wilc** %4, align 8
  %88 = getelementptr inbounds %struct.wilc, %struct.wilc* %87, i32 0, i32 1
  %89 = call i32 @complete(i32* %88)
  br label %90

90:                                               ; preds = %86, %79
  br label %100

91:                                               ; preds = %66
  %92 = getelementptr inbounds %struct.wilc_cfg_rsp, %struct.wilc_cfg_rsp* %14, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @WILC_CFG_RSP_STATUS, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.wilc*, %struct.wilc** %4, align 8
  %98 = call i32 @wilc_mac_indicate(%struct.wilc* %97)
  br label %99

99:                                               ; preds = %96, %91
  br label %100

100:                                              ; preds = %99, %90
  br label %101

101:                                              ; preds = %100, %65
  br label %102

102:                                              ; preds = %101, %44
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp sge i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %112

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %110
  br i1 true, label %15, label %112

112:                                              ; preds = %111, %109, %38
  ret void
}

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @wilc_wfi_mgmt_rx(%struct.wilc*, i32*, i32) #1

declare dso_local i32 @wilc_frmw_to_host(%struct.wilc*, i32*, i32, i32) #1

declare dso_local i32 @wilc_wlan_cfg_indicate_rx(%struct.wilc*, i32*, i32, %struct.wilc_cfg_rsp*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @wilc_mac_indicate(%struct.wilc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
