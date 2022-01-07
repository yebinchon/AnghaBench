; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_queue_isoc_tx_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_queue_isoc_tx_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, %struct.TYPE_3__*, i32, %struct.xhci_virt_device** }
%struct.TYPE_3__ = type { i32 }
%struct.xhci_virt_device = type { i32, %struct.xhci_virt_ep* }
%struct.xhci_virt_ep = type { i32, %struct.xhci_ring* }
%struct.xhci_ring = type { i32, i32, i32 }
%struct.urb = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.xhci_ep_ctx = type { i32 }

@EP_STATE_RUNNING = common dso_local global i64 0, align 8
@XHCI_CFC_DELAY = common dso_local global i64 0, align 8
@USB_SPEED_LOW = common dso_local global i64 0, align 8
@USB_SPEED_FULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_queue_isoc_tx_prepare(%struct.xhci_hcd* %0, i32 %1, %struct.urb* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_hcd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.urb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xhci_virt_device*, align 8
  %13 = alloca %struct.xhci_ring*, align 8
  %14 = alloca %struct.xhci_ep_ctx*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.xhci_virt_ep*, align 8
  %21 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.urb* %2, %struct.urb** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %23 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %22, i32 0, i32 3
  %24 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %24, i64 %26
  %28 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %27, align 8
  store %struct.xhci_virt_device* %28, %struct.xhci_virt_device** %12, align 8
  %29 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %30 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %29, i32 0, i32 3
  %31 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %31, i64 %33
  %35 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %34, align 8
  %36 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %35, i32 0, i32 1
  %37 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %37, i64 %39
  store %struct.xhci_virt_ep* %40, %struct.xhci_virt_ep** %20, align 8
  %41 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %12, align 8
  %42 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %41, i32 0, i32 1
  %43 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %43, i64 %45
  %47 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %46, i32 0, i32 1
  %48 = load %struct.xhci_ring*, %struct.xhci_ring** %47, align 8
  store %struct.xhci_ring* %48, %struct.xhci_ring** %13, align 8
  %49 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %50 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %12, align 8
  %51 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd* %49, i32 %52, i32 %53)
  store %struct.xhci_ep_ctx* %54, %struct.xhci_ep_ctx** %14, align 8
  store i32 0, i32* %17, align 4
  %55 = load %struct.urb*, %struct.urb** %9, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %58

58:                                               ; preds = %70, %5
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load %struct.urb*, %struct.urb** %9, align 8
  %64 = load i32, i32* %18, align 4
  %65 = call i64 @count_isoc_trbs_needed(%struct.urb* %63, i32 %64)
  %66 = load i32, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %17, align 4
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %18, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %18, align 4
  br label %58

73:                                               ; preds = %58
  %74 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %75 = load %struct.xhci_ring*, %struct.xhci_ring** %13, align 8
  %76 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %14, align 8
  %77 = call i64 @GET_EP_CTX_STATE(%struct.xhci_ep_ctx* %76)
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @prepare_ring(%struct.xhci_hcd* %74, %struct.xhci_ring* %75, i64 %77, i32 %78, i32 %79)
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %19, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  %84 = load i32, i32* %19, align 4
  store i32 %84, i32* %6, align 4
  br label %193

85:                                               ; preds = %73
  %86 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %87 = load %struct.urb*, %struct.urb** %9, align 8
  %88 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %14, align 8
  %89 = call i32 @check_interval(%struct.xhci_hcd* %86, %struct.urb* %87, %struct.xhci_ep_ctx* %88)
  %90 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %91 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @HCC_CFC(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %85
  %96 = load %struct.xhci_ring*, %struct.xhci_ring** %13, align 8
  %97 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %96, i32 0, i32 2
  %98 = call i32 @list_empty(i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %95
  %101 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %14, align 8
  %102 = call i64 @GET_EP_CTX_STATE(%struct.xhci_ep_ctx* %101)
  %103 = load i64, i64* @EP_STATE_RUNNING, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %20, align 8
  %107 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.urb*, %struct.urb** %9, align 8
  %110 = getelementptr inbounds %struct.urb, %struct.urb* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %181

111:                                              ; preds = %100
  br label %112

112:                                              ; preds = %111, %95, %85
  %113 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %114 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %113, i32 0, i32 1
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = call i32 @readl(i32* %116)
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %15, align 4
  %119 = and i32 %118, 16383
  store i32 %119, i32* %15, align 4
  %120 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %121 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @HCS_IST(i32 %122)
  %124 = and i32 %123, 7
  store i32 %124, i32* %21, align 4
  %125 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %126 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @HCS_IST(i32 %127)
  %129 = and i32 %128, 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %112
  %132 = load i32, i32* %21, align 4
  %133 = shl i32 %132, 3
  store i32 %133, i32* %21, align 4
  br label %134

134:                                              ; preds = %131, %112
  %135 = load i32, i32* %21, align 4
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* @XHCI_CFC_DELAY, align 8
  %138 = add nsw i64 %136, %137
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %138
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* %15, align 4
  %144 = call i32 @roundup(i32 %143, i32 8)
  store i32 %144, i32* %15, align 4
  %145 = load %struct.urb*, %struct.urb** %9, align 8
  %146 = getelementptr inbounds %struct.urb, %struct.urb* %145, i32 0, i32 3
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @USB_SPEED_LOW, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %160, label %152

152:                                              ; preds = %134
  %153 = load %struct.urb*, %struct.urb** %9, align 8
  %154 = getelementptr inbounds %struct.urb, %struct.urb* %153, i32 0, i32 3
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @USB_SPEED_FULL, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %171

160:                                              ; preds = %152, %134
  %161 = load i32, i32* %15, align 4
  %162 = load %struct.urb*, %struct.urb** %9, align 8
  %163 = getelementptr inbounds %struct.urb, %struct.urb* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = shl i32 %164, 3
  %166 = call i32 @roundup(i32 %161, i32 %165)
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %15, align 4
  %168 = ashr i32 %167, 3
  %169 = load %struct.urb*, %struct.urb** %9, align 8
  %170 = getelementptr inbounds %struct.urb, %struct.urb* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  br label %180

171:                                              ; preds = %152
  %172 = load i32, i32* %15, align 4
  %173 = load %struct.urb*, %struct.urb** %9, align 8
  %174 = getelementptr inbounds %struct.urb, %struct.urb* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @roundup(i32 %172, i32 %175)
  store i32 %176, i32* %15, align 4
  %177 = load i32, i32* %15, align 4
  %178 = load %struct.urb*, %struct.urb** %9, align 8
  %179 = getelementptr inbounds %struct.urb, %struct.urb* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  br label %180

180:                                              ; preds = %171, %160
  br label %181

181:                                              ; preds = %180, %105
  %182 = load %struct.xhci_ring*, %struct.xhci_ring** %13, align 8
  %183 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.xhci_ring*, %struct.xhci_ring** %13, align 8
  %186 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %188 = load i32, i32* %8, align 4
  %189 = load %struct.urb*, %struct.urb** %9, align 8
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* %11, align 4
  %192 = call i32 @xhci_queue_isoc_tx(%struct.xhci_hcd* %187, i32 %188, %struct.urb* %189, i32 %190, i32 %191)
  store i32 %192, i32* %6, align 4
  br label %193

193:                                              ; preds = %181, %83
  %194 = load i32, i32* %6, align 4
  ret i32 %194
}

declare dso_local %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i64 @count_isoc_trbs_needed(%struct.urb*, i32) #1

declare dso_local i32 @prepare_ring(%struct.xhci_hcd*, %struct.xhci_ring*, i64, i32, i32) #1

declare dso_local i64 @GET_EP_CTX_STATE(%struct.xhci_ep_ctx*) #1

declare dso_local i32 @check_interval(%struct.xhci_hcd*, %struct.urb*, %struct.xhci_ep_ctx*) #1

declare dso_local i64 @HCC_CFC(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @HCS_IST(i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @xhci_queue_isoc_tx(%struct.xhci_hcd*, i32, %struct.urb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
