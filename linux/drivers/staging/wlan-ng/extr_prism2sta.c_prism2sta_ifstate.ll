; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2sta.c_prism2sta_ifstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2sta.c_prism2sta_ifstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i32, i32, i32, i32, %struct.hfa384x* }
%struct.hfa384x = type { i32, i32 }

@P80211ENUM_resultcode_implementation_failure = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Current MSD state(%d), requesting(%d)\0A\00", align 1
@WLAN_MSD_FWLOAD_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"hfa384x_drvr_start() failed,result=%d\0A\00", align 1
@P80211ENUM_resultcode_success = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"Cannot enter fwload state from enable state, you must disable first.\0A\00", align 1
@P80211ENUM_resultcode_invalid_parameters = common dso_local global i32 0, align 4
@WLAN_MSD_RUNNING_PENDING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"prism2sta_getcardinfo() failed,result=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"prism2sta_globalsetup() failed,result=%d\0A\00", align 1
@WLAN_MSD_HWPRESENT_PENDING = common dso_local global i32 0, align 4
@WLAN_MACMODE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prism2sta_ifstate(%struct.wlandevice* %0, i32 %1) #0 {
  %3 = alloca %struct.wlandevice*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfa384x*, align 8
  %6 = alloca i32, align 4
  store %struct.wlandevice* %0, %struct.wlandevice** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %8 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %7, i32 0, i32 4
  %9 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  store %struct.hfa384x* %9, %struct.hfa384x** %5, align 8
  %10 = load i32, i32* @P80211ENUM_resultcode_implementation_failure, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %12 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %155 [
    i32 132, label %17
    i32 133, label %56
    i32 134, label %123
  ]

17:                                               ; preds = %2
  %18 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %19 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %53 [
    i32 129, label %21
    i32 131, label %42
    i32 128, label %46
    i32 130, label %52
  ]

21:                                               ; preds = %17
  %22 = load i32, i32* @WLAN_MSD_FWLOAD_PENDING, align 4
  %23 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %24 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %26 = call i32 @hfa384x_drvr_start(%struct.hfa384x* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %31 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @netdev_err(i32 %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @P80211ENUM_resultcode_implementation_failure, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %37 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %36, i32 0, i32 0
  store i32 129, i32* %37, align 8
  br label %55

38:                                               ; preds = %21
  %39 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %40 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %39, i32 0, i32 0
  store i32 131, i32* %40, align 8
  %41 = load i32, i32* @P80211ENUM_resultcode_success, align 4
  store i32 %41, i32* %6, align 4
  br label %55

42:                                               ; preds = %17
  %43 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %44 = call i32 @hfa384x_cmd_initialize(%struct.hfa384x* %43)
  %45 = load i32, i32* @P80211ENUM_resultcode_success, align 4
  store i32 %45, i32* %6, align 4
  br label %55

46:                                               ; preds = %17
  %47 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %48 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @netdev_warn(i32 %49, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @P80211ENUM_resultcode_invalid_parameters, align 4
  store i32 %51, i32* %6, align 4
  br label %55

52:                                               ; preds = %17
  br label %53

53:                                               ; preds = %17, %52
  %54 = load i32, i32* @P80211ENUM_resultcode_implementation_failure, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %46, %42, %38, %29
  br label %157

56:                                               ; preds = %2
  %57 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %58 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %120 [
    i32 129, label %60
    i32 131, label %60
    i32 128, label %117
    i32 130, label %119
  ]

60:                                               ; preds = %56, %56
  %61 = load i32, i32* @WLAN_MSD_RUNNING_PENDING, align 4
  %62 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %63 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %65 = call i32 @hfa384x_drvr_start(%struct.hfa384x* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %60
  %69 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %70 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @netdev_err(i32 %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @P80211ENUM_resultcode_implementation_failure, align 4
  store i32 %74, i32* %6, align 4
  %75 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %76 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %75, i32 0, i32 0
  store i32 129, i32* %76, align 8
  br label %122

77:                                               ; preds = %60
  %78 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %79 = call i32 @prism2sta_getcardinfo(%struct.wlandevice* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %84 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @netdev_err(i32 %85, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @P80211ENUM_resultcode_implementation_failure, align 4
  store i32 %88, i32* %6, align 4
  %89 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %90 = call i32 @hfa384x_drvr_stop(%struct.hfa384x* %89)
  %91 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %92 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %91, i32 0, i32 0
  store i32 129, i32* %92, align 8
  br label %122

93:                                               ; preds = %77
  %94 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %95 = call i32 @prism2sta_globalsetup(%struct.wlandevice* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %100 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @netdev_err(i32 %101, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @P80211ENUM_resultcode_implementation_failure, align 4
  store i32 %104, i32* %6, align 4
  %105 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %106 = call i32 @hfa384x_drvr_stop(%struct.hfa384x* %105)
  %107 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %108 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %107, i32 0, i32 0
  store i32 129, i32* %108, align 8
  br label %122

109:                                              ; preds = %93
  %110 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %111 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %110, i32 0, i32 0
  store i32 128, i32* %111, align 8
  %112 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %113 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %112, i32 0, i32 1
  store i32 0, i32* %113, align 4
  %114 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %115 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %114, i32 0, i32 0
  store i32 60, i32* %115, align 4
  %116 = load i32, i32* @P80211ENUM_resultcode_success, align 4
  store i32 %116, i32* %6, align 4
  br label %122

117:                                              ; preds = %56
  %118 = load i32, i32* @P80211ENUM_resultcode_success, align 4
  store i32 %118, i32* %6, align 4
  br label %122

119:                                              ; preds = %56
  br label %120

120:                                              ; preds = %56, %119
  %121 = load i32, i32* @P80211ENUM_resultcode_implementation_failure, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %120, %117, %109, %98, %82, %68
  br label %157

123:                                              ; preds = %2
  %124 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %125 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  switch i32 %126, label %152 [
    i32 129, label %127
    i32 131, label %129
    i32 128, label %129
    i32 130, label %151
  ]

127:                                              ; preds = %123
  %128 = load i32, i32* @P80211ENUM_resultcode_success, align 4
  store i32 %128, i32* %6, align 4
  br label %154

129:                                              ; preds = %123, %123
  %130 = load i32, i32* @WLAN_MSD_HWPRESENT_PENDING, align 4
  %131 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %132 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %134 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %129
  %138 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %139 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @netif_carrier_off(i32 %140)
  br label %142

142:                                              ; preds = %137, %129
  %143 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %144 = call i32 @hfa384x_drvr_stop(%struct.hfa384x* %143)
  %145 = load i32, i32* @WLAN_MACMODE_NONE, align 4
  %146 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %147 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %149 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %148, i32 0, i32 0
  store i32 129, i32* %149, align 8
  %150 = load i32, i32* @P80211ENUM_resultcode_success, align 4
  store i32 %150, i32* %6, align 4
  br label %154

151:                                              ; preds = %123
  br label %152

152:                                              ; preds = %123, %151
  %153 = load i32, i32* @P80211ENUM_resultcode_implementation_failure, align 4
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %152, %142, %127
  br label %157

155:                                              ; preds = %2
  %156 = load i32, i32* @P80211ENUM_resultcode_invalid_parameters, align 4
  store i32 %156, i32* %6, align 4
  br label %157

157:                                              ; preds = %155, %154, %122, %55
  %158 = load i32, i32* %6, align 4
  ret i32 %158
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @hfa384x_drvr_start(%struct.hfa384x*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @hfa384x_cmd_initialize(%struct.hfa384x*) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @prism2sta_getcardinfo(%struct.wlandevice*) #1

declare dso_local i32 @hfa384x_drvr_stop(%struct.hfa384x*) #1

declare dso_local i32 @prism2sta_globalsetup(%struct.wlandevice*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
