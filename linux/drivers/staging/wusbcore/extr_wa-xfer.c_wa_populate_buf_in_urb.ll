; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c_wa_populate_buf_in_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c_wa_populate_buf_in_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.wa_seg*, i32*, i64, i32*, i32, i64, i64, i32 }
%struct.wa_seg = type { i32 }
%struct.wa_xfer = type { i32, %struct.TYPE_2__*, i64, %struct.wa_seg** }
%struct.TYPE_2__ = type { i32, i32*, i64 }

@EINPROGRESS = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*, %struct.wa_xfer*, i32, i32)* @wa_populate_buf_in_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wa_populate_buf_in_urb(%struct.urb* %0, %struct.wa_xfer* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.wa_xfer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wa_seg*, align 8
  store %struct.urb* %0, %struct.urb** %5, align 8
  store %struct.wa_xfer* %1, %struct.wa_xfer** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.wa_xfer*, %struct.wa_xfer** %6, align 8
  %12 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %11, i32 0, i32 3
  %13 = load %struct.wa_seg**, %struct.wa_seg*** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.wa_seg*, %struct.wa_seg** %13, i64 %15
  %17 = load %struct.wa_seg*, %struct.wa_seg** %16, align 8
  store %struct.wa_seg* %17, %struct.wa_seg** %10, align 8
  %18 = load %struct.urb*, %struct.urb** %5, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @EINPROGRESS, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.urb*, %struct.urb** %5, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 7
  store i64 0, i64* %27, align 8
  %28 = load %struct.wa_xfer*, %struct.wa_xfer** %6, align 8
  %29 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %4
  %33 = load %struct.wa_xfer*, %struct.wa_xfer** %6, align 8
  %34 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.wa_xfer*, %struct.wa_xfer** %6, align 8
  %40 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul i32 %38, %41
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %37, %43
  %45 = load %struct.urb*, %struct.urb** %5, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 6
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %48 = load %struct.urb*, %struct.urb** %5, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.urb*, %struct.urb** %5, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 2
  store i32* null, i32** %53, align 8
  %54 = load %struct.urb*, %struct.urb** %5, align 8
  %55 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 4
  store i32* null, i32** %55, align 8
  %56 = load %struct.urb*, %struct.urb** %5, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  br label %120

58:                                               ; preds = %4
  %59 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.urb*, %struct.urb** %5, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.wa_xfer*, %struct.wa_xfer** %6, align 8
  %66 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %90

71:                                               ; preds = %58
  %72 = load %struct.wa_xfer*, %struct.wa_xfer** %6, align 8
  %73 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.wa_xfer*, %struct.wa_xfer** %6, align 8
  %79 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = mul i32 %77, %80
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %76, i64 %82
  %84 = load %struct.urb*, %struct.urb** %5, align 8
  %85 = getelementptr inbounds %struct.urb, %struct.urb* %84, i32 0, i32 2
  store i32* %83, i32** %85, align 8
  %86 = load %struct.urb*, %struct.urb** %5, align 8
  %87 = getelementptr inbounds %struct.urb, %struct.urb* %86, i32 0, i32 4
  store i32* null, i32** %87, align 8
  %88 = load %struct.urb*, %struct.urb** %5, align 8
  %89 = getelementptr inbounds %struct.urb, %struct.urb* %88, i32 0, i32 3
  store i64 0, i64* %89, align 8
  br label %119

90:                                               ; preds = %58
  %91 = load %struct.wa_xfer*, %struct.wa_xfer** %6, align 8
  %92 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.wa_xfer*, %struct.wa_xfer** %6, align 8
  %98 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = mul i32 %96, %99
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.urb*, %struct.urb** %5, align 8
  %103 = getelementptr inbounds %struct.urb, %struct.urb* %102, i32 0, i32 3
  %104 = call i32* @wa_xfer_create_subset_sg(i32 %95, i32 %100, i32 %101, i64* %103)
  %105 = load %struct.urb*, %struct.urb** %5, align 8
  %106 = getelementptr inbounds %struct.urb, %struct.urb* %105, i32 0, i32 4
  store i32* %104, i32** %106, align 8
  %107 = load %struct.urb*, %struct.urb** %5, align 8
  %108 = getelementptr inbounds %struct.urb, %struct.urb* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %90
  %112 = load %struct.urb*, %struct.urb** %5, align 8
  %113 = getelementptr inbounds %struct.urb, %struct.urb* %112, i32 0, i32 3
  store i64 0, i64* %113, align 8
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %111, %90
  %117 = load %struct.urb*, %struct.urb** %5, align 8
  %118 = getelementptr inbounds %struct.urb, %struct.urb* %117, i32 0, i32 2
  store i32* null, i32** %118, align 8
  br label %119

119:                                              ; preds = %116, %71
  br label %120

120:                                              ; preds = %119, %32
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.urb*, %struct.urb** %5, align 8
  %123 = getelementptr inbounds %struct.urb, %struct.urb* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.wa_seg*, %struct.wa_seg** %10, align 8
  %125 = load %struct.urb*, %struct.urb** %5, align 8
  %126 = getelementptr inbounds %struct.urb, %struct.urb* %125, i32 0, i32 1
  store %struct.wa_seg* %124, %struct.wa_seg** %126, align 8
  %127 = load i32, i32* %9, align 4
  ret i32 %127
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @wa_xfer_create_subset_sg(i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
