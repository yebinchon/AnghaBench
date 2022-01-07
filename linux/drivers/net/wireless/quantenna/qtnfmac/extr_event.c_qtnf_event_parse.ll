; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_event.c_qtnf_event_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_event.c_qtnf_event_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_wmac = type { %struct.qtnf_vif* }
%struct.qtnf_vif = type { i32 }
%struct.sk_buff = type { i64 }
%struct.qlink_event = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@QTNF_MAX_INTF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"invalid vif(%u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"unknown event type: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_wmac*, %struct.sk_buff*)* @qtnf_event_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_event_parse(%struct.qtnf_wmac* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtnf_wmac*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.qlink_event*, align 8
  %7 = alloca %struct.qtnf_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qtnf_wmac* %0, %struct.qtnf_wmac** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.qtnf_vif* null, %struct.qtnf_vif** %7, align 8
  store i32 -1, i32* %8, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.qlink_event*
  store %struct.qlink_event* %14, %struct.qlink_event** %6, align 8
  %15 = load %struct.qlink_event*, %struct.qlink_event** %6, align 8
  %16 = getelementptr inbounds %struct.qlink_event, %struct.qlink_event* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16_to_cpu(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.qlink_event*, %struct.qlink_event** %6, align 8
  %20 = getelementptr inbounds %struct.qlink_event, %struct.qlink_event* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @le16_to_cpu(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.qlink_event*, %struct.qlink_event** %6, align 8
  %25 = getelementptr inbounds %struct.qlink_event, %struct.qlink_event* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @QTNF_MAX_INTF, align 8
  %28 = icmp ult i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @likely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %2
  %33 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %4, align 8
  %34 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %33, i32 0, i32 0
  %35 = load %struct.qtnf_vif*, %struct.qtnf_vif** %34, align 8
  %36 = load %struct.qlink_event*, %struct.qlink_event** %6, align 8
  %37 = getelementptr inbounds %struct.qlink_event, %struct.qlink_event* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %35, i64 %38
  store %struct.qtnf_vif* %39, %struct.qtnf_vif** %7, align 8
  br label %47

40:                                               ; preds = %2
  %41 = load %struct.qlink_event*, %struct.qlink_event** %6, align 8
  %42 = getelementptr inbounds %struct.qlink_event, %struct.qlink_event* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %116

47:                                               ; preds = %32
  %48 = load i32, i32* %9, align 4
  switch i32 %48, label %111 [
    i32 129, label %49
    i32 128, label %56
    i32 133, label %63
    i32 130, label %69
    i32 131, label %75
    i32 137, label %81
    i32 136, label %87
    i32 134, label %93
    i32 132, label %99
    i32 135, label %105
  ]

49:                                               ; preds = %47
  %50 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %4, align 8
  %51 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %52 = load %struct.qlink_event*, %struct.qlink_event** %6, align 8
  %53 = bitcast %struct.qlink_event* %52 to i8*
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @qtnf_event_handle_sta_assoc(%struct.qtnf_wmac* %50, %struct.qtnf_vif* %51, i8* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  br label %114

56:                                               ; preds = %47
  %57 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %4, align 8
  %58 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %59 = load %struct.qlink_event*, %struct.qlink_event** %6, align 8
  %60 = bitcast %struct.qlink_event* %59 to i8*
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @qtnf_event_handle_sta_deauth(%struct.qtnf_wmac* %57, %struct.qtnf_vif* %58, i8* %60, i32 %61)
  store i32 %62, i32* %8, align 4
  br label %114

63:                                               ; preds = %47
  %64 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %65 = load %struct.qlink_event*, %struct.qlink_event** %6, align 8
  %66 = bitcast %struct.qlink_event* %65 to i8*
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @qtnf_event_handle_mgmt_received(%struct.qtnf_vif* %64, i8* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  br label %114

69:                                               ; preds = %47
  %70 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %71 = load %struct.qlink_event*, %struct.qlink_event** %6, align 8
  %72 = bitcast %struct.qlink_event* %71 to i8*
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @qtnf_event_handle_scan_results(%struct.qtnf_vif* %70, i8* %72, i32 %73)
  store i32 %74, i32* %8, align 4
  br label %114

75:                                               ; preds = %47
  %76 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %4, align 8
  %77 = load %struct.qlink_event*, %struct.qlink_event** %6, align 8
  %78 = bitcast %struct.qlink_event* %77 to i8*
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @qtnf_event_handle_scan_complete(%struct.qtnf_wmac* %76, i8* %78, i32 %79)
  store i32 %80, i32* %8, align 4
  br label %114

81:                                               ; preds = %47
  %82 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %83 = load %struct.qlink_event*, %struct.qlink_event** %6, align 8
  %84 = bitcast %struct.qlink_event* %83 to i8*
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @qtnf_event_handle_bss_join(%struct.qtnf_vif* %82, i8* %84, i32 %85)
  store i32 %86, i32* %8, align 4
  br label %114

87:                                               ; preds = %47
  %88 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %89 = load %struct.qlink_event*, %struct.qlink_event** %6, align 8
  %90 = bitcast %struct.qlink_event* %89 to i8*
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @qtnf_event_handle_bss_leave(%struct.qtnf_vif* %88, i8* %90, i32 %91)
  store i32 %92, i32* %8, align 4
  br label %114

93:                                               ; preds = %47
  %94 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %4, align 8
  %95 = load %struct.qlink_event*, %struct.qlink_event** %6, align 8
  %96 = bitcast %struct.qlink_event* %95 to i8*
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @qtnf_event_handle_freq_change(%struct.qtnf_wmac* %94, i8* %96, i32 %97)
  store i32 %98, i32* %8, align 4
  br label %114

99:                                               ; preds = %47
  %100 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %101 = load %struct.qlink_event*, %struct.qlink_event** %6, align 8
  %102 = bitcast %struct.qlink_event* %101 to i8*
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @qtnf_event_handle_radar(%struct.qtnf_vif* %100, i8* %102, i32 %103)
  store i32 %104, i32* %8, align 4
  br label %114

105:                                              ; preds = %47
  %106 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %107 = load %struct.qlink_event*, %struct.qlink_event** %6, align 8
  %108 = bitcast %struct.qlink_event* %107 to i8*
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @qtnf_event_handle_external_auth(%struct.qtnf_vif* %106, i8* %108, i32 %109)
  store i32 %110, i32* %8, align 4
  br label %114

111:                                              ; preds = %47
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @pr_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %111, %105, %99, %93, %87, %81, %75, %69, %63, %56, %49
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %40
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @qtnf_event_handle_sta_assoc(%struct.qtnf_wmac*, %struct.qtnf_vif*, i8*, i32) #1

declare dso_local i32 @qtnf_event_handle_sta_deauth(%struct.qtnf_wmac*, %struct.qtnf_vif*, i8*, i32) #1

declare dso_local i32 @qtnf_event_handle_mgmt_received(%struct.qtnf_vif*, i8*, i32) #1

declare dso_local i32 @qtnf_event_handle_scan_results(%struct.qtnf_vif*, i8*, i32) #1

declare dso_local i32 @qtnf_event_handle_scan_complete(%struct.qtnf_wmac*, i8*, i32) #1

declare dso_local i32 @qtnf_event_handle_bss_join(%struct.qtnf_vif*, i8*, i32) #1

declare dso_local i32 @qtnf_event_handle_bss_leave(%struct.qtnf_vif*, i8*, i32) #1

declare dso_local i32 @qtnf_event_handle_freq_change(%struct.qtnf_wmac*, i8*, i32) #1

declare dso_local i32 @qtnf_event_handle_radar(%struct.qtnf_vif*, i8*, i32) #1

declare dso_local i32 @qtnf_event_handle_external_auth(%struct.qtnf_vif*, i8*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
