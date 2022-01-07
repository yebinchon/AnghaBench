; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_u3d_core.c_mv_u3d_ep0_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_u3d_core.c_mv_u3d_ep0_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_u3d = type { %struct.TYPE_4__*, i32*, %struct.mv_u3d_ep* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.mv_u3d_ep = type { i32*, %struct.mv_u3d* }

@MV_U3D_EPXCR_EP_INIT = common dso_local global i32 0, align 4
@MV_U3D_EP0_MAX_PKT_SIZE = common dso_local global i32 0, align 4
@MV_U3D_EPXCR_MAX_PACKET_SIZE_SHIFT = common dso_local global i32 0, align 4
@MV_U3D_EPXCR_MAX_BURST_SIZE_SHIFT = common dso_local global i32 0, align 4
@MV_U3D_EPXCR_EP_ENABLE_SHIFT = common dso_local global i32 0, align 4
@MV_U3D_EPXCR_EP_TYPE_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_u3d*)* @mv_u3d_ep0_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_u3d_ep0_reset(%struct.mv_u3d* %0) #0 {
  %2 = alloca %struct.mv_u3d*, align 8
  %3 = alloca %struct.mv_u3d_ep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mv_u3d* %0, %struct.mv_u3d** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %28

9:                                                ; preds = %6
  %10 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %11 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %10, i32 0, i32 2
  %12 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %12, i64 %14
  store %struct.mv_u3d_ep* %15, %struct.mv_u3d_ep** %3, align 8
  %16 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %17 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %18 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %17, i32 0, i32 1
  store %struct.mv_u3d* %16, %struct.mv_u3d** %18, align 8
  %19 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %20 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load %struct.mv_u3d_ep*, %struct.mv_u3d_ep** %3, align 8
  %24 = getelementptr inbounds %struct.mv_u3d_ep, %struct.mv_u3d_ep* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  br label %25

25:                                               ; preds = %9
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %6

28:                                               ; preds = %6
  %29 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %30 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = call i32 @ioread32(i32* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @MV_U3D_EPXCR_EP_INIT, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %42 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = call i32 @iowrite32(i32 %40, i32* %47)
  %49 = call i32 @udelay(i32 5)
  %50 = load i32, i32* @MV_U3D_EPXCR_EP_INIT, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %56 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = call i32 @iowrite32(i32 %54, i32* %61)
  %63 = load i32, i32* @MV_U3D_EP0_MAX_PKT_SIZE, align 4
  %64 = load i32, i32* @MV_U3D_EPXCR_MAX_PACKET_SIZE_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* @MV_U3D_EPXCR_MAX_BURST_SIZE_SHIFT, align 4
  %67 = shl i32 1, %66
  %68 = or i32 %65, %67
  %69 = load i32, i32* @MV_U3D_EPXCR_EP_ENABLE_SHIFT, align 4
  %70 = shl i32 1, %69
  %71 = or i32 %68, %70
  %72 = load i32, i32* @MV_U3D_EPXCR_EP_TYPE_CONTROL, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %76 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = call i32 @iowrite32(i32 %74, i32* %81)
  %83 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %84 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = call i32 @ioread32(i32* %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* @MV_U3D_EPXCR_EP_INIT, align 4
  %92 = load i32, i32* %4, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %96 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = call i32 @iowrite32(i32 %94, i32* %101)
  %103 = call i32 @udelay(i32 5)
  %104 = load i32, i32* @MV_U3D_EPXCR_EP_INIT, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %4, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %110 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = call i32 @iowrite32(i32 %108, i32* %115)
  %117 = load i32, i32* @MV_U3D_EP0_MAX_PKT_SIZE, align 4
  %118 = load i32, i32* @MV_U3D_EPXCR_MAX_PACKET_SIZE_SHIFT, align 4
  %119 = shl i32 %117, %118
  %120 = load i32, i32* @MV_U3D_EPXCR_MAX_BURST_SIZE_SHIFT, align 4
  %121 = shl i32 1, %120
  %122 = or i32 %119, %121
  %123 = load i32, i32* @MV_U3D_EPXCR_EP_ENABLE_SHIFT, align 4
  %124 = shl i32 1, %123
  %125 = or i32 %122, %124
  %126 = load i32, i32* @MV_U3D_EPXCR_EP_TYPE_CONTROL, align 4
  %127 = or i32 %125, %126
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %130 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = call i32 @iowrite32(i32 %128, i32* %135)
  ret void
}

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
