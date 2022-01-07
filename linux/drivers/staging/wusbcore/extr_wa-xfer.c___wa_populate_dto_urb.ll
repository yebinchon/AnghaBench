; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c___wa_populate_dto_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c___wa_populate_dto_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wa_xfer = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32*, i64 }
%struct.wa_seg = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32*, i64, i32*, i64, i32, i64 }

@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wa_xfer*, %struct.wa_seg*, i64, i64)* @__wa_populate_dto_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wa_populate_dto_urb(%struct.wa_xfer* %0, %struct.wa_seg* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.wa_xfer*, align 8
  %6 = alloca %struct.wa_seg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.wa_xfer* %0, %struct.wa_xfer** %5, align 8
  store %struct.wa_seg* %1, %struct.wa_seg** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %11 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %4
  %15 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %16 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %19, %20
  %22 = load %struct.wa_seg*, %struct.wa_seg** %6, align 8
  %23 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 6
  store i64 %21, i64* %25, align 8
  %26 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %27 = load %struct.wa_seg*, %struct.wa_seg** %6, align 8
  %28 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %26
  store i32 %32, i32* %30, align 8
  %33 = load %struct.wa_seg*, %struct.wa_seg** %6, align 8
  %34 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.wa_seg*, %struct.wa_seg** %6, align 8
  %38 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  br label %112

41:                                               ; preds = %4
  %42 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.wa_seg*, %struct.wa_seg** %6, align 8
  %45 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %43
  store i32 %49, i32* %47, align 8
  %50 = load %struct.wa_seg*, %struct.wa_seg** %6, align 8
  %51 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %55 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %80

60:                                               ; preds = %41
  %61 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %62 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load %struct.wa_seg*, %struct.wa_seg** %6, align 8
  %69 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  store i32* %67, i32** %71, align 8
  %72 = load %struct.wa_seg*, %struct.wa_seg** %6, align 8
  %73 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32* null, i32** %75, align 8
  %76 = load %struct.wa_seg*, %struct.wa_seg** %6, align 8
  %77 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  br label %111

80:                                               ; preds = %41
  %81 = load %struct.wa_seg*, %struct.wa_seg** %6, align 8
  %82 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  store i32* null, i32** %84, align 8
  %85 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %86 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load %struct.wa_seg*, %struct.wa_seg** %6, align 8
  %93 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = call i32* @wa_xfer_create_subset_sg(i32 %89, i64 %90, i64 %91, i64* %95)
  %97 = load %struct.wa_seg*, %struct.wa_seg** %6, align 8
  %98 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  store i32* %96, i32** %100, align 8
  %101 = load %struct.wa_seg*, %struct.wa_seg** %6, align 8
  %102 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %80
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %107, %80
  br label %111

111:                                              ; preds = %110, %60
  br label %112

112:                                              ; preds = %111, %14
  %113 = load i64, i64* %8, align 8
  %114 = load %struct.wa_seg*, %struct.wa_seg** %6, align 8
  %115 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i64 %113, i64* %117, align 8
  %118 = load i32, i32* %9, align 4
  ret i32 %118
}

declare dso_local i32* @wa_xfer_create_subset_sg(i32, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
