; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_gadget_ep_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_gadget_ep_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.cdns3_endpoint = type { i32, i32*, i32, i32, i32, i32, i32, i32, %struct.cdns3_device* }
%struct.cdns3_device = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.cdns3_request = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.usb_request = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"usbss: invalid parameters\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EP_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s is already disabled\0A\00", align 1
@EP_CFG_ENABLE = common dso_local global i32 0, align 4
@EP_STS_DBUSY = common dso_local global i32 0, align 4
@EP_CMD_EPRST = common dso_local global i32 0, align 4
@EP_CMD_CSTALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Timeout: %s resetting failed.\0A\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*)* @cdns3_gadget_ep_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_gadget_ep_disable(%struct.usb_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.cdns3_endpoint*, align 8
  %5 = alloca %struct.cdns3_request*, align 8
  %6 = alloca %struct.cdns3_device*, align 8
  %7 = alloca %struct.usb_request*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %13 = icmp ne %struct.usb_ep* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %191

18:                                               ; preds = %1
  %19 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %20 = call %struct.cdns3_endpoint* @ep_to_cdns3_ep(%struct.usb_ep* %19)
  store %struct.cdns3_endpoint* %20, %struct.cdns3_endpoint** %4, align 8
  %21 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %22 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %21, i32 0, i32 8
  %23 = load %struct.cdns3_device*, %struct.cdns3_device** %22, align 8
  store %struct.cdns3_device* %23, %struct.cdns3_device** %6, align 8
  %24 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  %25 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %28 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @EP_ENABLED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %36 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @dev_WARN_ONCE(i32 %26, i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %191

41:                                               ; preds = %18
  %42 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  %43 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %42, i32 0, i32 0
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %47 = call i32 @trace_cdns3_gadget_ep_disable(%struct.cdns3_endpoint* %46)
  %48 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  %49 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %50 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @cdns3_select_ep(%struct.cdns3_device* %48, i32 %53)
  %55 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  %56 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = call i32 @readl(i32* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* @EP_CFG_ENABLE, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  %66 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = call i32 @writel(i32 %64, i32* %68)
  %70 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  %71 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @EP_STS_DBUSY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @readl_poll_timeout_atomic(i32* %73, i32 %74, i32 %80, i32 1, i32 10)
  %82 = load i32, i32* @EP_CMD_EPRST, align 4
  %83 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  %84 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %83, i32 0, i32 2
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = call i32 @writel(i32 %82, i32* %86)
  %88 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  %89 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @EP_CMD_CSTALL, align 4
  %95 = load i32, i32* @EP_CMD_EPRST, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 @readl_poll_timeout_atomic(i32* %91, i32 %92, i32 %100, i32 1, i32 1000)
  %102 = load i32, i32* %9, align 4
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %41
  %106 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  %107 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %110 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %105, %41
  br label %114

114:                                              ; preds = %120, %113
  %115 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %116 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %115, i32 0, i32 6
  %117 = call i32 @list_empty(i32* %116)
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  br i1 %119, label %120, label %130

120:                                              ; preds = %114
  %121 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %122 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %121, i32 0, i32 6
  %123 = call %struct.usb_request* @cdns3_next_request(i32* %122)
  store %struct.usb_request* %123, %struct.usb_request** %7, align 8
  %124 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %125 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %126 = call i32 @to_cdns3_request(%struct.usb_request* %125)
  %127 = load i32, i32* @ESHUTDOWN, align 4
  %128 = sub nsw i32 0, %127
  %129 = call i32 @cdns3_gadget_giveback(%struct.cdns3_endpoint* %124, i32 %126, i32 %128)
  br label %114

130:                                              ; preds = %114
  br label %131

131:                                              ; preds = %137, %130
  %132 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %133 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %132, i32 0, i32 5
  %134 = call i32 @list_empty(i32* %133)
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  br i1 %136, label %137, label %158

137:                                              ; preds = %131
  %138 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %139 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %138, i32 0, i32 5
  %140 = call %struct.cdns3_request* @cdns3_next_priv_request(i32* %139)
  store %struct.cdns3_request* %140, %struct.cdns3_request** %5, align 8
  %141 = load %struct.cdns3_request*, %struct.cdns3_request** %5, align 8
  %142 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @kfree(i32 %144)
  %146 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %147 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %146, i32 0, i32 4
  %148 = load %struct.cdns3_request*, %struct.cdns3_request** %5, align 8
  %149 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %148, i32 0, i32 1
  %150 = call i32 @cdns3_gadget_ep_free_request(i32* %147, %struct.TYPE_6__* %149)
  %151 = load %struct.cdns3_request*, %struct.cdns3_request** %5, align 8
  %152 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %151, i32 0, i32 0
  %153 = call i32 @list_del_init(i32* %152)
  %154 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %155 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %155, align 4
  br label %131

158:                                              ; preds = %131
  br label %159

159:                                              ; preds = %165, %158
  %160 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %161 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %160, i32 0, i32 2
  %162 = call i32 @list_empty(i32* %161)
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  br i1 %164, label %165, label %175

165:                                              ; preds = %159
  %166 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %167 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %166, i32 0, i32 2
  %168 = call %struct.usb_request* @cdns3_next_request(i32* %167)
  store %struct.usb_request* %168, %struct.usb_request** %7, align 8
  %169 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %170 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %171 = call i32 @to_cdns3_request(%struct.usb_request* %170)
  %172 = load i32, i32* @ESHUTDOWN, align 4
  %173 = sub nsw i32 0, %172
  %174 = call i32 @cdns3_gadget_giveback(%struct.cdns3_endpoint* %169, i32 %171, i32 %173)
  br label %159

175:                                              ; preds = %159
  %176 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %177 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %176, i32 0, i32 1
  store i32* null, i32** %177, align 8
  %178 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %179 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %178, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %179, align 8
  %180 = load i32, i32* @EP_ENABLED, align 4
  %181 = xor i32 %180, -1
  %182 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %183 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = and i32 %184, %181
  store i32 %185, i32* %183, align 8
  %186 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  %187 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %186, i32 0, i32 0
  %188 = load i64, i64* %8, align 8
  %189 = call i32 @spin_unlock_irqrestore(i32* %187, i64 %188)
  %190 = load i32, i32* %9, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %175, %40, %14
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.cdns3_endpoint* @ep_to_cdns3_ep(%struct.usb_ep*) #1

declare dso_local i64 @dev_WARN_ONCE(i32, i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @trace_cdns3_gadget_ep_disable(%struct.cdns3_endpoint*) #1

declare dso_local i32 @cdns3_select_ep(%struct.cdns3_device*, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @readl_poll_timeout_atomic(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.usb_request* @cdns3_next_request(i32*) #1

declare dso_local i32 @cdns3_gadget_giveback(%struct.cdns3_endpoint*, i32, i32) #1

declare dso_local i32 @to_cdns3_request(%struct.usb_request*) #1

declare dso_local %struct.cdns3_request* @cdns3_next_priv_request(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @cdns3_gadget_ep_free_request(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
