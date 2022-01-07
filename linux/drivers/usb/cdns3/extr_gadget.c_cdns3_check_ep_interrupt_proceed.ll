; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_check_ep_interrupt_proceed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_check_ep_interrupt_proceed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_endpoint = type { i32, i64, i32, i32, %struct.TYPE_3__, %struct.cdns3_device* }
%struct.TYPE_3__ = type { i32 }
%struct.cdns3_device = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@EP_STS_TRBERR = common dso_local global i32 0, align 4
@EP_STALL_PENDING = common dso_local global i32 0, align 4
@EP_STS_DESCMIS = common dso_local global i32 0, align 4
@DEV_VER_V2 = common dso_local global i64 0, align 8
@USB_ENDPOINT_XFER_ISOC = common dso_local global i64 0, align 8
@EP_CFG_ENABLE = common dso_local global i32 0, align 4
@EP_QUIRK_ISO_OUT_EN = common dso_local global i32 0, align 4
@EP_STALLED = common dso_local global i32 0, align 4
@EP_DEFERRED_DRDY = common dso_local global i32 0, align 4
@EP_STS_IOC = common dso_local global i32 0, align 4
@EP_STS_ISP = common dso_local global i32 0, align 4
@EP_QUIRK_EXTRA_BUF_EN = common dso_local global i32 0, align 4
@EP_QUIRK_END_TRANSFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns3_endpoint*)* @cdns3_check_ep_interrupt_proceed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_check_ep_interrupt_proceed(%struct.cdns3_endpoint* %0) #0 {
  %2 = alloca %struct.cdns3_endpoint*, align 8
  %3 = alloca %struct.cdns3_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cdns3_endpoint* %0, %struct.cdns3_endpoint** %2, align 8
  %6 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %7 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %6, i32 0, i32 5
  %8 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  store %struct.cdns3_device* %8, %struct.cdns3_device** %3, align 8
  %9 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %10 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %11 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @cdns3_select_ep(%struct.cdns3_device* %9, i32 %13)
  %15 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %16 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %17 = call i32 @trace_cdns3_epx_irq(%struct.cdns3_device* %15, %struct.cdns3_endpoint* %16)
  %18 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %19 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = call i32 @readl(i32* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %25 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = call i32 @writel(i32 %23, i32* %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @EP_STS_TRBERR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %136

33:                                               ; preds = %1
  %34 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %35 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @EP_STALL_PENDING, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @EP_STS_DESCMIS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %47 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DEV_VER_V2, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %45, %40
  %52 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %53 = call i32 @cdns3_ep_stall_flush(%struct.cdns3_endpoint* %52)
  br label %54

54:                                               ; preds = %51, %45, %33
  %55 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %56 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %96

60:                                               ; preds = %54
  %61 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %62 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %96, label %65

65:                                               ; preds = %60
  %66 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %67 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %92, label %70

70:                                               ; preds = %65
  %71 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %72 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = call i32 @readl(i32* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* @EP_CFG_ENABLE, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %5, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %82 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = call i32 @writel(i32 %80, i32* %84)
  %86 = load i32, i32* @EP_QUIRK_ISO_OUT_EN, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %89 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %70, %65
  %93 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %94 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %95 = call i32 @cdns3_transfer_completed(%struct.cdns3_device* %93, %struct.cdns3_endpoint* %94)
  br label %135

96:                                               ; preds = %60, %54
  %97 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %98 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @EP_STALLED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %134, label %103

103:                                              ; preds = %96
  %104 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %105 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @EP_STALL_PENDING, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %134, label %110

110:                                              ; preds = %103
  %111 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %112 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @EP_DEFERRED_DRDY, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %110
  %118 = load i32, i32* @EP_DEFERRED_DRDY, align 4
  %119 = xor i32 %118, -1
  %120 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %121 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %125 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %126 = call i32 @cdns3_start_all_request(%struct.cdns3_device* %124, %struct.cdns3_endpoint* %125)
  br label %133

127:                                              ; preds = %110
  %128 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %129 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %130 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @cdns3_rearm_transfer(%struct.cdns3_endpoint* %128, i32 %131)
  br label %133

133:                                              ; preds = %127, %117
  br label %134

134:                                              ; preds = %133, %103, %96
  br label %135

135:                                              ; preds = %134, %92
  br label %136

136:                                              ; preds = %135, %1
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @EP_STS_IOC, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %136
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @EP_STS_ISP, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %176

146:                                              ; preds = %141, %136
  %147 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %148 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @EP_QUIRK_EXTRA_BUF_EN, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %172

153:                                              ; preds = %146
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @EP_STS_ISP, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load i32, i32* @EP_QUIRK_END_TRANSFER, align 4
  %160 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %161 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  br label %171

164:                                              ; preds = %153
  %165 = load i32, i32* @EP_QUIRK_END_TRANSFER, align 4
  %166 = xor i32 %165, -1
  %167 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %168 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = and i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %164, %158
  br label %172

172:                                              ; preds = %171, %146
  %173 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %174 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %175 = call i32 @cdns3_transfer_completed(%struct.cdns3_device* %173, %struct.cdns3_endpoint* %174)
  br label %176

176:                                              ; preds = %172, %141
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* @EP_STS_DESCMIS, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %197

181:                                              ; preds = %176
  %182 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %183 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @DEV_VER_V2, align 8
  %186 = icmp slt i64 %184, %185
  br i1 %186, label %187, label %197

187:                                              ; preds = %181
  %188 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %189 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @EP_STALLED, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %187
  %195 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %196 = call i32 @cdns3_wa2_descmissing_packet(%struct.cdns3_endpoint* %195)
  br label %197

197:                                              ; preds = %194, %187, %181, %176
  ret i32 0
}

declare dso_local i32 @cdns3_select_ep(%struct.cdns3_device*, i32) #1

declare dso_local i32 @trace_cdns3_epx_irq(%struct.cdns3_device*, %struct.cdns3_endpoint*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @cdns3_ep_stall_flush(%struct.cdns3_endpoint*) #1

declare dso_local i32 @cdns3_transfer_completed(%struct.cdns3_device*, %struct.cdns3_endpoint*) #1

declare dso_local i32 @cdns3_start_all_request(%struct.cdns3_device*, %struct.cdns3_endpoint*) #1

declare dso_local i32 @cdns3_rearm_transfer(%struct.cdns3_endpoint*, i32) #1

declare dso_local i32 @cdns3_wa2_descmissing_packet(%struct.cdns3_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
