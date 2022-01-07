; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_core_init_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_core_init_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@DWC3_GCTL_PRTCAP_DEVICE = common dso_local global i32 0, align 4
@PHY_MODE_USB_DEVICE = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to initialize gadget\0A\00", align 1
@DWC3_GCTL_PRTCAP_HOST = common dso_local global i32 0, align 4
@PHY_MODE_USB_HOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to initialize host\0A\00", align 1
@__dwc3_set_mode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to initialize dual-role\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Unsupported mode of operation %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3*)* @dwc3_core_init_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_core_init_mode(%struct.dwc3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  %6 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %7 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %6, i32 0, i32 5
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %10 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %114 [
    i32 128, label %12
    i32 130, label %53
    i32 129, label %94
  ]

12:                                               ; preds = %1
  %13 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %14 = load i32, i32* @DWC3_GCTL_PRTCAP_DEVICE, align 4
  %15 = call i32 @dwc3_set_prtcap(%struct.dwc3* %13, i32 %14)
  %16 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %17 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %12
  %21 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %22 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %21, i32 0, i32 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @otg_set_vbus(i32 %25, i32 0)
  br label %27

27:                                               ; preds = %20, %12
  %28 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %29 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PHY_MODE_USB_DEVICE, align 4
  %32 = call i32 @phy_set_mode(i32 %30, i32 %31)
  %33 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %34 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PHY_MODE_USB_DEVICE, align 4
  %37 = call i32 @phy_set_mode(i32 %35, i32 %36)
  %38 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %39 = call i32 @dwc3_gadget_init(%struct.dwc3* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %27
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @EPROBE_DEFER, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %123

52:                                               ; preds = %27
  br label %122

53:                                               ; preds = %1
  %54 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %55 = load i32, i32* @DWC3_GCTL_PRTCAP_HOST, align 4
  %56 = call i32 @dwc3_set_prtcap(%struct.dwc3* %54, i32 %55)
  %57 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %58 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %57, i32 0, i32 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = icmp ne %struct.TYPE_2__* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %63 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %62, i32 0, i32 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @otg_set_vbus(i32 %66, i32 1)
  br label %68

68:                                               ; preds = %61, %53
  %69 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %70 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PHY_MODE_USB_HOST, align 4
  %73 = call i32 @phy_set_mode(i32 %71, i32 %72)
  %74 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %75 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @PHY_MODE_USB_HOST, align 4
  %78 = call i32 @phy_set_mode(i32 %76, i32 %77)
  %79 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %80 = call i32 @dwc3_host_init(%struct.dwc3* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %68
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @EPROBE_DEFER, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %123

93:                                               ; preds = %68
  br label %122

94:                                               ; preds = %1
  %95 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %96 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %95, i32 0, i32 1
  %97 = load i32, i32* @__dwc3_set_mode, align 4
  %98 = call i32 @INIT_WORK(i32* %96, i32 %97)
  %99 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %100 = call i32 @dwc3_drd_init(%struct.dwc3* %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %94
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @EPROBE_DEFER, align 4
  %106 = sub nsw i32 0, %105
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %109, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %103
  %112 = load i32, i32* %5, align 4
  store i32 %112, i32* %2, align 4
  br label %123

113:                                              ; preds = %94
  br label %122

114:                                              ; preds = %1
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %117 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %115, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %123

122:                                              ; preds = %113, %93, %52
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %114, %111, %91, %50
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @dwc3_set_prtcap(%struct.dwc3*, i32) #1

declare dso_local i32 @otg_set_vbus(i32, i32) #1

declare dso_local i32 @phy_set_mode(i32, i32) #1

declare dso_local i32 @dwc3_gadget_init(%struct.dwc3*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dwc3_host_init(%struct.dwc3*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @dwc3_drd_init(%struct.dwc3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
