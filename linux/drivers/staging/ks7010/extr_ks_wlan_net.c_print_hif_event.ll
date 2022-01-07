; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_print_hif_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_print_hif_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"HIF_DATA_REQ\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"HIF_DATA_IND\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"HIF_MIB_GET_REQ\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"HIF_MIB_GET_CONF\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"HIF_MIB_SET_REQ\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"HIF_MIB_SET_CONF\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"HIF_POWER_MGMT_REQ\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"HIF_POWER_MGMT_CONF\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"HIF_START_REQ\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"HIF_START_CONF\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"HIF_CONNECT_IND\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"HIF_STOP_REQ\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"HIF_STOP_CONF\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"HIF_PS_ADH_SET_REQ\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"HIF_PS_ADH_SET_CONF\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"HIF_INFRA_SET_REQ\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"HIF_INFRA_SET_CONF\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"HIF_ADH_SET_REQ\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"HIF_ADH_SET_CONF\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"HIF_AP_SET_REQ\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"HIF_AP_SET_CONF\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"HIF_ASSOC_INFO_IND\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"HIF_MIC_FAILURE_REQ\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"HIF_MIC_FAILURE_CONF\0A\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"HIF_SCAN_REQ\0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"HIF_SCAN_CONF\0A\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"HIF_PHY_INFO_REQ\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"HIF_PHY_INFO_CONF\0A\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"HIF_SLEEP_REQ\0A\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"HIF_SLEEP_CONF\0A\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"HIF_PHY_INFO_IND\0A\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"HIF_SCAN_IND\0A\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"HIF_INFRA_SET2_REQ\0A\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"HIF_INFRA_SET2_CONF\0A\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"HIF_ADH_SET2_REQ\0A\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"HIF_ADH_SET2_CONF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @print_hif_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_hif_event(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %114 [
    i32 154, label %6
    i32 155, label %9
    i32 148, label %12
    i32 149, label %15
    i32 146, label %18
    i32 147, label %21
    i32 139, label %24
    i32 140, label %27
    i32 130, label %30
    i32 131, label %33
    i32 156, label %36
    i32 128, label %39
    i32 129, label %42
    i32 137, label %45
    i32 138, label %48
    i32 150, label %51
    i32 151, label %54
    i32 160, label %57
    i32 161, label %60
    i32 158, label %63
    i32 159, label %66
    i32 157, label %69
    i32 144, label %72
    i32 145, label %75
    i32 134, label %78
    i32 136, label %81
    i32 141, label %84
    i32 143, label %87
    i32 132, label %90
    i32 133, label %93
    i32 142, label %96
    i32 135, label %99
    i32 152, label %102
    i32 153, label %105
    i32 162, label %108
    i32 163, label %111
  ]

6:                                                ; preds = %2
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call i32 @netdev_info(%struct.net_device* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %114

9:                                                ; preds = %2
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i32 @netdev_info(%struct.net_device* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %114

12:                                               ; preds = %2
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 @netdev_info(%struct.net_device* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %114

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @netdev_info(%struct.net_device* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %114

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @netdev_info(%struct.net_device* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %114

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @netdev_info(%struct.net_device* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %114

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 @netdev_info(%struct.net_device* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %114

27:                                               ; preds = %2
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i32 @netdev_info(%struct.net_device* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %114

30:                                               ; preds = %2
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call i32 @netdev_info(%struct.net_device* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %114

33:                                               ; preds = %2
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @netdev_info(%struct.net_device* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %114

36:                                               ; preds = %2
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @netdev_info(%struct.net_device* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %114

39:                                               ; preds = %2
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 @netdev_info(%struct.net_device* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  br label %114

42:                                               ; preds = %2
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = call i32 @netdev_info(%struct.net_device* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %114

45:                                               ; preds = %2
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i32 @netdev_info(%struct.net_device* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  br label %114

48:                                               ; preds = %2
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = call i32 @netdev_info(%struct.net_device* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  br label %114

51:                                               ; preds = %2
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = call i32 @netdev_info(%struct.net_device* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  br label %114

54:                                               ; preds = %2
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = call i32 @netdev_info(%struct.net_device* %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  br label %114

57:                                               ; preds = %2
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = call i32 @netdev_info(%struct.net_device* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  br label %114

60:                                               ; preds = %2
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = call i32 @netdev_info(%struct.net_device* %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  br label %114

63:                                               ; preds = %2
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = call i32 @netdev_info(%struct.net_device* %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0))
  br label %114

66:                                               ; preds = %2
  %67 = load %struct.net_device*, %struct.net_device** %3, align 8
  %68 = call i32 @netdev_info(%struct.net_device* %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  br label %114

69:                                               ; preds = %2
  %70 = load %struct.net_device*, %struct.net_device** %3, align 8
  %71 = call i32 @netdev_info(%struct.net_device* %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0))
  br label %114

72:                                               ; preds = %2
  %73 = load %struct.net_device*, %struct.net_device** %3, align 8
  %74 = call i32 @netdev_info(%struct.net_device* %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0))
  br label %114

75:                                               ; preds = %2
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = call i32 @netdev_info(%struct.net_device* %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0))
  br label %114

78:                                               ; preds = %2
  %79 = load %struct.net_device*, %struct.net_device** %3, align 8
  %80 = call i32 @netdev_info(%struct.net_device* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0))
  br label %114

81:                                               ; preds = %2
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = call i32 @netdev_info(%struct.net_device* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0))
  br label %114

84:                                               ; preds = %2
  %85 = load %struct.net_device*, %struct.net_device** %3, align 8
  %86 = call i32 @netdev_info(%struct.net_device* %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0))
  br label %114

87:                                               ; preds = %2
  %88 = load %struct.net_device*, %struct.net_device** %3, align 8
  %89 = call i32 @netdev_info(%struct.net_device* %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0))
  br label %114

90:                                               ; preds = %2
  %91 = load %struct.net_device*, %struct.net_device** %3, align 8
  %92 = call i32 @netdev_info(%struct.net_device* %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0))
  br label %114

93:                                               ; preds = %2
  %94 = load %struct.net_device*, %struct.net_device** %3, align 8
  %95 = call i32 @netdev_info(%struct.net_device* %94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0))
  br label %114

96:                                               ; preds = %2
  %97 = load %struct.net_device*, %struct.net_device** %3, align 8
  %98 = call i32 @netdev_info(%struct.net_device* %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0))
  br label %114

99:                                               ; preds = %2
  %100 = load %struct.net_device*, %struct.net_device** %3, align 8
  %101 = call i32 @netdev_info(%struct.net_device* %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0))
  br label %114

102:                                              ; preds = %2
  %103 = load %struct.net_device*, %struct.net_device** %3, align 8
  %104 = call i32 @netdev_info(%struct.net_device* %103, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0))
  br label %114

105:                                              ; preds = %2
  %106 = load %struct.net_device*, %struct.net_device** %3, align 8
  %107 = call i32 @netdev_info(%struct.net_device* %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i64 0, i64 0))
  br label %114

108:                                              ; preds = %2
  %109 = load %struct.net_device*, %struct.net_device** %3, align 8
  %110 = call i32 @netdev_info(%struct.net_device* %109, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0))
  br label %114

111:                                              ; preds = %2
  %112 = load %struct.net_device*, %struct.net_device** %3, align 8
  %113 = call i32 @netdev_info(%struct.net_device* %112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %2, %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %75, %72, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9, %6
  ret void
}

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
