; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_sta_info_parse_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_sta_info_parse_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rate_info = type { i32, i32, i32, i32, i32 }
%struct.qlink_sta_info_rate = type { i32, i32, i32, i32, i32 }

@RATE_INFO_BW_5 = common dso_local global i32 0, align 4
@RATE_INFO_BW_10 = common dso_local global i32 0, align 4
@RATE_INFO_BW_20 = common dso_local global i32 0, align 4
@RATE_INFO_BW_40 = common dso_local global i32 0, align 4
@RATE_INFO_BW_80 = common dso_local global i32 0, align 4
@RATE_INFO_BW_160 = common dso_local global i32 0, align 4
@QLINK_STA_INFO_RATE_FLAG_HT_MCS = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_MCS = common dso_local global i32 0, align 4
@QLINK_STA_INFO_RATE_FLAG_VHT_MCS = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_VHT_MCS = common dso_local global i32 0, align 4
@QLINK_STA_INFO_RATE_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_SHORT_GI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rate_info*, %struct.qlink_sta_info_rate*)* @qtnf_sta_info_parse_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_sta_info_parse_rate(%struct.rate_info* %0, %struct.qlink_sta_info_rate* %1) #0 {
  %3 = alloca %struct.rate_info*, align 8
  %4 = alloca %struct.qlink_sta_info_rate*, align 8
  store %struct.rate_info* %0, %struct.rate_info** %3, align 8
  store %struct.qlink_sta_info_rate* %1, %struct.qlink_sta_info_rate** %4, align 8
  %5 = load %struct.qlink_sta_info_rate*, %struct.qlink_sta_info_rate** %4, align 8
  %6 = getelementptr inbounds %struct.qlink_sta_info_rate, %struct.qlink_sta_info_rate* %5, i32 0, i32 4
  %7 = call i32 @get_unaligned_le16(i32* %6)
  %8 = mul nsw i32 %7, 10
  %9 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %10 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.qlink_sta_info_rate*, %struct.qlink_sta_info_rate** %4, align 8
  %12 = getelementptr inbounds %struct.qlink_sta_info_rate, %struct.qlink_sta_info_rate* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %15 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load %struct.qlink_sta_info_rate*, %struct.qlink_sta_info_rate** %4, align 8
  %17 = getelementptr inbounds %struct.qlink_sta_info_rate, %struct.qlink_sta_info_rate* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %20 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %22 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.qlink_sta_info_rate*, %struct.qlink_sta_info_rate** %4, align 8
  %24 = getelementptr inbounds %struct.qlink_sta_info_rate, %struct.qlink_sta_info_rate* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %50 [
    i32 129, label %26
    i32 134, label %30
    i32 132, label %34
    i32 131, label %34
    i32 130, label %38
    i32 128, label %42
    i32 133, label %46
  ]

26:                                               ; preds = %2
  %27 = load i32, i32* @RATE_INFO_BW_5, align 4
  %28 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %29 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  br label %53

30:                                               ; preds = %2
  %31 = load i32, i32* @RATE_INFO_BW_10, align 4
  %32 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %33 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  br label %53

34:                                               ; preds = %2, %2
  %35 = load i32, i32* @RATE_INFO_BW_20, align 4
  %36 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %37 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  br label %53

38:                                               ; preds = %2
  %39 = load i32, i32* @RATE_INFO_BW_40, align 4
  %40 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %41 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  br label %53

42:                                               ; preds = %2
  %43 = load i32, i32* @RATE_INFO_BW_80, align 4
  %44 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %45 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  br label %53

46:                                               ; preds = %2
  %47 = load i32, i32* @RATE_INFO_BW_160, align 4
  %48 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %49 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  br label %53

50:                                               ; preds = %2
  %51 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %52 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %51, i32 0, i32 2
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %46, %42, %38, %34, %30, %26
  %54 = load %struct.qlink_sta_info_rate*, %struct.qlink_sta_info_rate** %4, align 8
  %55 = getelementptr inbounds %struct.qlink_sta_info_rate, %struct.qlink_sta_info_rate* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @QLINK_STA_INFO_RATE_FLAG_HT_MCS, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load i32, i32* @RATE_INFO_FLAGS_MCS, align 4
  %62 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %63 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %80

66:                                               ; preds = %53
  %67 = load %struct.qlink_sta_info_rate*, %struct.qlink_sta_info_rate** %4, align 8
  %68 = getelementptr inbounds %struct.qlink_sta_info_rate, %struct.qlink_sta_info_rate* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @QLINK_STA_INFO_RATE_FLAG_VHT_MCS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load i32, i32* @RATE_INFO_FLAGS_VHT_MCS, align 4
  %75 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %76 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %66
  br label %80

80:                                               ; preds = %79, %60
  %81 = load %struct.qlink_sta_info_rate*, %struct.qlink_sta_info_rate** %4, align 8
  %82 = getelementptr inbounds %struct.qlink_sta_info_rate, %struct.qlink_sta_info_rate* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @QLINK_STA_INFO_RATE_FLAG_SHORT_GI, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load i32, i32* @RATE_INFO_FLAGS_SHORT_GI, align 4
  %89 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %90 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87, %80
  ret void
}

declare dso_local i32 @get_unaligned_le16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
