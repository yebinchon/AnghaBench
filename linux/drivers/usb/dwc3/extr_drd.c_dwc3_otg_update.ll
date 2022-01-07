; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_drd.c_dwc3_otg_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_drd.c_dwc3_otg_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i64, i64, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@USB_DR_MODE_OTG = common dso_local global i64 0, align 8
@DWC3_GCTL_PRTCAP_OTG = common dso_local global i64 0, align 8
@DWC3_OSTS = common dso_local global i32 0, align 4
@DWC3_OSTS_CONIDSTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to initialize host\0A\00", align 1
@PHY_MODE_USB_HOST = common dso_local global i32 0, align 4
@PHY_MODE_USB_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to initialize peripheral\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwc3_otg_update(%struct.dwc3* %0, i32 %1) #0 {
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %10 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @USB_DR_MODE_OTG, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %199

15:                                               ; preds = %2
  %16 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %17 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DWC3_GCTL_PRTCAP_OTG, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %199

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %22
  %26 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %27 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DWC3_OSTS, align 4
  %30 = call i32 @dwc3_readl(i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @DWC3_OSTS_CONIDSTS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 129, i32 128
  %42 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %43 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %25, %22
  %45 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %46 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %49 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %199

53:                                               ; preds = %44
  %54 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %55 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %85 [
    i32 128, label %57
    i32 129, label %70
  ]

57:                                               ; preds = %53
  %58 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %59 = call i32 @dwc3_host_exit(%struct.dwc3* %58)
  %60 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %61 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %60, i32 0, i32 7
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @spin_lock_irqsave(i32* %61, i64 %62)
  %64 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %65 = call i32 @dwc3_otg_host_exit(%struct.dwc3* %64)
  %66 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %67 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %66, i32 0, i32 7
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  br label %86

70:                                               ; preds = %53
  %71 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %72 = call i32 @dwc3_gadget_exit(%struct.dwc3* %71)
  %73 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %74 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %73, i32 0, i32 7
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @spin_lock_irqsave(i32* %74, i64 %75)
  %77 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %78 = call i32 @dwc3_event_buffers_cleanup(%struct.dwc3* %77)
  %79 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %80 = call i32 @dwc3_otg_device_exit(%struct.dwc3* %79)
  %81 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %82 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %81, i32 0, i32 7
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  br label %86

85:                                               ; preds = %53
  br label %86

86:                                               ; preds = %85, %70, %57
  %87 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %88 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %87, i32 0, i32 7
  %89 = load i64, i64* %8, align 8
  %90 = call i32 @spin_lock_irqsave(i32* %88, i64 %89)
  %91 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %92 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %95 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %97 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %96, i32 0, i32 7
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %101 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  switch i32 %102, label %198 [
    i32 128, label %103
    i32 129, label %150
  ]

103:                                              ; preds = %86
  %104 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %105 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %104, i32 0, i32 7
  %106 = load i64, i64* %8, align 8
  %107 = call i32 @spin_lock_irqsave(i32* %105, i64 %106)
  %108 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %109 = call i32 @dwc3_otgregs_init(%struct.dwc3* %108)
  %110 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %111 = call i32 @dwc3_otg_host_init(%struct.dwc3* %110)
  %112 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %113 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %112, i32 0, i32 7
  %114 = load i64, i64* %8, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* %113, i64 %114)
  %116 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %117 = call i32 @dwc3_host_init(%struct.dwc3* %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %103
  %121 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %122 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @dev_err(i32 %123, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %149

125:                                              ; preds = %103
  %126 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %127 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %126, i32 0, i32 6
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = icmp ne %struct.TYPE_2__* %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %132 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %131, i32 0, i32 6
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @otg_set_vbus(i32 %135, i32 1)
  br label %137

137:                                              ; preds = %130, %125
  %138 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %139 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %144 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @PHY_MODE_USB_HOST, align 4
  %147 = call i32 @phy_set_mode(i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %142, %137
  br label %149

149:                                              ; preds = %148, %120
  br label %199

150:                                              ; preds = %86
  %151 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %152 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %151, i32 0, i32 7
  %153 = load i64, i64* %8, align 8
  %154 = call i32 @spin_lock_irqsave(i32* %152, i64 %153)
  %155 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %156 = call i32 @dwc3_otgregs_init(%struct.dwc3* %155)
  %157 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %158 = call i32 @dwc3_otg_device_init(%struct.dwc3* %157)
  %159 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %160 = call i32 @dwc3_event_buffers_setup(%struct.dwc3* %159)
  %161 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %162 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %161, i32 0, i32 7
  %163 = load i64, i64* %8, align 8
  %164 = call i32 @spin_unlock_irqrestore(i32* %162, i64 %163)
  %165 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %166 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %165, i32 0, i32 6
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = icmp ne %struct.TYPE_2__* %167, null
  br i1 %168, label %169, label %176

169:                                              ; preds = %150
  %170 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %171 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %170, i32 0, i32 6
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @otg_set_vbus(i32 %174, i32 0)
  br label %176

176:                                              ; preds = %169, %150
  %177 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %178 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %183 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @PHY_MODE_USB_DEVICE, align 4
  %186 = call i32 @phy_set_mode(i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %181, %176
  %188 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %189 = call i32 @dwc3_gadget_init(%struct.dwc3* %188)
  store i32 %189, i32* %5, align 4
  %190 = load i32, i32* %5, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %187
  %193 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %194 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @dev_err(i32 %195, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %197

197:                                              ; preds = %192, %187
  br label %199

198:                                              ; preds = %86
  br label %199

199:                                              ; preds = %14, %21, %52, %198, %197, %149
  ret void
}

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @dwc3_host_exit(%struct.dwc3*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dwc3_otg_host_exit(%struct.dwc3*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dwc3_gadget_exit(%struct.dwc3*) #1

declare dso_local i32 @dwc3_event_buffers_cleanup(%struct.dwc3*) #1

declare dso_local i32 @dwc3_otg_device_exit(%struct.dwc3*) #1

declare dso_local i32 @dwc3_otgregs_init(%struct.dwc3*) #1

declare dso_local i32 @dwc3_otg_host_init(%struct.dwc3*) #1

declare dso_local i32 @dwc3_host_init(%struct.dwc3*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @otg_set_vbus(i32, i32) #1

declare dso_local i32 @phy_set_mode(i32, i32) #1

declare dso_local i32 @dwc3_otg_device_init(%struct.dwc3*) #1

declare dso_local i32 @dwc3_event_buffers_setup(%struct.dwc3*) #1

declare dso_local i32 @dwc3_gadget_init(%struct.dwc3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
