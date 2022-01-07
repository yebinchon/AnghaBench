; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c___wa_populate_dto_urb_isoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c___wa_populate_dto_urb_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wa_xfer = type { %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.wa_seg = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i64, i64, i32*, i32 }

@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@WUSB_QUIRK_ALEREON_HWA_CONCAT_ISOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wa_xfer*, %struct.wa_seg*, i32)* @__wa_populate_dto_urb_isoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__wa_populate_dto_urb_isoc(%struct.wa_xfer* %0, %struct.wa_seg* %1, i32 %2) #0 {
  %4 = alloca %struct.wa_xfer*, align 8
  %5 = alloca %struct.wa_seg*, align 8
  %6 = alloca i32, align 4
  store %struct.wa_xfer* %0, %struct.wa_xfer** %4, align 8
  store %struct.wa_seg* %1, %struct.wa_seg** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %8 = load %struct.wa_seg*, %struct.wa_seg** %5, align 8
  %9 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, %7
  store i32 %13, i32* %11, align 8
  %14 = load %struct.wa_seg*, %struct.wa_seg** %5, align 8
  %15 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  store i32* null, i32** %17, align 8
  %18 = load %struct.wa_seg*, %struct.wa_seg** %5, align 8
  %19 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %23 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %28 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %26, %36
  %38 = load %struct.wa_seg*, %struct.wa_seg** %5, align 8
  %39 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i64 %37, i64* %41, align 8
  %42 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %43 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @WUSB_QUIRK_ALEREON_HWA_CONCAT_ISOC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %3
  %51 = load %struct.wa_seg*, %struct.wa_seg** %5, align 8
  %52 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.wa_seg*, %struct.wa_seg** %5, align 8
  %55 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 8
  br label %73

58:                                               ; preds = %3
  %59 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %60 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.wa_seg*, %struct.wa_seg** %5, align 8
  %70 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 8
  br label %73

73:                                               ; preds = %58, %50
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
