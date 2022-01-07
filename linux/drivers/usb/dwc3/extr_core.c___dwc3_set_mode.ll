; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c___dwc3_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c___dwc3_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.dwc3 = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@USB_DR_MODE_OTG = common dso_local global i64 0, align 8
@DWC3_OTG_ROLE_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to initialize host\0A\00", align 1
@PHY_MODE_USB_HOST = common dso_local global i32 0, align 4
@PHY_MODE_USB_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to initialize peripheral\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @__dwc3_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dwc3_set_mode(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %6 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %7 = call %struct.dwc3* @work_to_dwc(%struct.work_struct* %6)
  store %struct.dwc3* %7, %struct.dwc3** %3, align 8
  %8 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %9 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @USB_DR_MODE_OTG, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %169

14:                                               ; preds = %1
  %15 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %16 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 128
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %21 = call i32 @dwc3_otg_update(%struct.dwc3* %20, i32 0)
  br label %22

22:                                               ; preds = %19, %14
  %23 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %24 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %169

28:                                               ; preds = %22
  %29 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %30 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %33 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %169

37:                                               ; preds = %28
  %38 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %39 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 128
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %44 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %43, i32 0, i32 9
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %169

48:                                               ; preds = %42, %37
  %49 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %50 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %76 [
    i32 129, label %52
    i32 130, label %55
    i32 128, label %60
  ]

52:                                               ; preds = %48
  %53 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %54 = call i32 @dwc3_host_exit(%struct.dwc3* %53)
  br label %77

55:                                               ; preds = %48
  %56 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %57 = call i32 @dwc3_gadget_exit(%struct.dwc3* %56)
  %58 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %59 = call i32 @dwc3_event_buffers_cleanup(%struct.dwc3* %58)
  br label %77

60:                                               ; preds = %48
  %61 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %62 = call i32 @dwc3_otg_exit(%struct.dwc3* %61)
  %63 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %64 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %63, i32 0, i32 7
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @spin_lock_irqsave(i32* %64, i64 %65)
  %67 = load i32, i32* @DWC3_OTG_ROLE_IDLE, align 4
  %68 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %69 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 4
  %70 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %71 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %70, i32 0, i32 7
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %75 = call i32 @dwc3_otg_update(%struct.dwc3* %74, i32 1)
  br label %77

76:                                               ; preds = %48
  br label %77

77:                                               ; preds = %76, %60, %55, %52
  %78 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %79 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %78, i32 0, i32 7
  %80 = load i64, i64* %4, align 8
  %81 = call i32 @spin_lock_irqsave(i32* %79, i64 %80)
  %82 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %83 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %84 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dwc3_set_prtcap(%struct.dwc3* %82, i32 %85)
  %87 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %88 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %87, i32 0, i32 7
  %89 = load i64, i64* %4, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  %91 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %92 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %168 [
    i32 129, label %94
    i32 130, label %128
    i32 128, label %163
  ]

94:                                               ; preds = %77
  %95 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %96 = call i32 @dwc3_host_init(%struct.dwc3* %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %101 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @dev_err(i32 %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %127

104:                                              ; preds = %94
  %105 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %106 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %105, i32 0, i32 6
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = icmp ne %struct.TYPE_2__* %107, null
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %111 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %110, i32 0, i32 6
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @otg_set_vbus(i32 %114, i32 1)
  br label %116

116:                                              ; preds = %109, %104
  %117 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %118 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @PHY_MODE_USB_HOST, align 4
  %121 = call i32 @phy_set_mode(i32 %119, i32 %120)
  %122 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %123 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @PHY_MODE_USB_HOST, align 4
  %126 = call i32 @phy_set_mode(i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %116, %99
  br label %169

128:                                              ; preds = %77
  %129 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %130 = call i32 @dwc3_event_buffers_setup(%struct.dwc3* %129)
  %131 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %132 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %131, i32 0, i32 6
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = icmp ne %struct.TYPE_2__* %133, null
  br i1 %134, label %135, label %142

135:                                              ; preds = %128
  %136 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %137 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %136, i32 0, i32 6
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @otg_set_vbus(i32 %140, i32 0)
  br label %142

142:                                              ; preds = %135, %128
  %143 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %144 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @PHY_MODE_USB_DEVICE, align 4
  %147 = call i32 @phy_set_mode(i32 %145, i32 %146)
  %148 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %149 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @PHY_MODE_USB_DEVICE, align 4
  %152 = call i32 @phy_set_mode(i32 %150, i32 %151)
  %153 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %154 = call i32 @dwc3_gadget_init(%struct.dwc3* %153)
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %142
  %158 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %159 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @dev_err(i32 %160, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %162

162:                                              ; preds = %157, %142
  br label %169

163:                                              ; preds = %77
  %164 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %165 = call i32 @dwc3_otg_init(%struct.dwc3* %164)
  %166 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %167 = call i32 @dwc3_otg_update(%struct.dwc3* %166, i32 0)
  br label %169

168:                                              ; preds = %77
  br label %169

169:                                              ; preds = %13, %27, %36, %47, %168, %163, %162, %127
  ret void
}

declare dso_local %struct.dwc3* @work_to_dwc(%struct.work_struct*) #1

declare dso_local i32 @dwc3_otg_update(%struct.dwc3*, i32) #1

declare dso_local i32 @dwc3_host_exit(%struct.dwc3*) #1

declare dso_local i32 @dwc3_gadget_exit(%struct.dwc3*) #1

declare dso_local i32 @dwc3_event_buffers_cleanup(%struct.dwc3*) #1

declare dso_local i32 @dwc3_otg_exit(%struct.dwc3*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dwc3_set_prtcap(%struct.dwc3*, i32) #1

declare dso_local i32 @dwc3_host_init(%struct.dwc3*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @otg_set_vbus(i32, i32) #1

declare dso_local i32 @phy_set_mode(i32, i32) #1

declare dso_local i32 @dwc3_event_buffers_setup(%struct.dwc3*) #1

declare dso_local i32 @dwc3_gadget_init(%struct.dwc3*) #1

declare dso_local i32 @dwc3_otg_init(%struct.dwc3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
