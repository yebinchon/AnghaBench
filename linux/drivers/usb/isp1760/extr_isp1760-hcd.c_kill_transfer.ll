; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_kill_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_kill_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i32 }
%struct.isp1760_qh = type { i32 }
%struct.isp1760_hcd = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.TYPE_3__ = type { i32*, i32* }

@HC_ATL_PTD_SKIPMAP_REG = common dso_local global i32 0, align 4
@HC_INT_PTD_SKIPMAP_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.urb*, %struct.isp1760_qh*)* @kill_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kill_transfer(%struct.usb_hcd* %0, %struct.urb* %1, %struct.isp1760_qh* %2) #0 {
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.isp1760_qh*, align 8
  %7 = alloca %struct.isp1760_hcd*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store %struct.isp1760_qh* %2, %struct.isp1760_qh** %6, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %10 = call %struct.isp1760_hcd* @hcd_to_priv(%struct.usb_hcd* %9)
  store %struct.isp1760_hcd* %10, %struct.isp1760_hcd** %7, align 8
  %11 = load %struct.isp1760_qh*, %struct.isp1760_qh** %6, align 8
  %12 = getelementptr inbounds %struct.isp1760_qh, %struct.isp1760_qh* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, -1
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.urb*, %struct.urb** %5, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @usb_pipecontrol(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load %struct.urb*, %struct.urb** %5, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @usb_pipebulk(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %64

28:                                               ; preds = %22, %3
  %29 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %30 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HC_ATL_PTD_SKIPMAP_REG, align 4
  %33 = call i32 @reg_read32(i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.isp1760_qh*, %struct.isp1760_qh** %6, align 8
  %35 = getelementptr inbounds %struct.isp1760_qh, %struct.isp1760_qh* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 1, %36
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %41 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @HC_ATL_PTD_SKIPMAP_REG, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @reg_write32(i32 %42, i32 %43, i32 %44)
  %46 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %7, align 8
  %47 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load %struct.isp1760_qh*, %struct.isp1760_qh** %6, align 8
  %50 = getelementptr inbounds %struct.isp1760_qh, %struct.isp1760_qh* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %7, align 8
  %56 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load %struct.isp1760_qh*, %struct.isp1760_qh** %6, align 8
  %59 = getelementptr inbounds %struct.isp1760_qh, %struct.isp1760_qh* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  br label %100

64:                                               ; preds = %22
  %65 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %66 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @HC_INT_PTD_SKIPMAP_REG, align 4
  %69 = call i32 @reg_read32(i32 %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load %struct.isp1760_qh*, %struct.isp1760_qh** %6, align 8
  %71 = getelementptr inbounds %struct.isp1760_qh, %struct.isp1760_qh* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 1, %72
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  %76 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %77 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @HC_INT_PTD_SKIPMAP_REG, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @reg_write32(i32 %78, i32 %79, i32 %80)
  %82 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %7, align 8
  %83 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load %struct.isp1760_qh*, %struct.isp1760_qh** %6, align 8
  %86 = getelementptr inbounds %struct.isp1760_qh, %struct.isp1760_qh* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i32* null, i32** %90, align 8
  %91 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %7, align 8
  %92 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load %struct.isp1760_qh*, %struct.isp1760_qh** %6, align 8
  %95 = getelementptr inbounds %struct.isp1760_qh, %struct.isp1760_qh* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32* null, i32** %99, align 8
  br label %100

100:                                              ; preds = %64, %28
  %101 = load %struct.isp1760_qh*, %struct.isp1760_qh** %6, align 8
  %102 = getelementptr inbounds %struct.isp1760_qh, %struct.isp1760_qh* %101, i32 0, i32 0
  store i32 -1, i32* %102, align 4
  ret void
}

declare dso_local %struct.isp1760_hcd* @hcd_to_priv(%struct.usb_hcd*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @usb_pipecontrol(i32) #1

declare dso_local i64 @usb_pipebulk(i32) #1

declare dso_local i32 @reg_read32(i32, i32) #1

declare dso_local i32 @reg_write32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
