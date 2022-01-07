; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_rdsetupp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_rdsetupp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_udc = type { i64 }

@DMATFNR_ACC_CXF = common dso_local global i32 0, align 4
@FOTG210_DMATFNR = common dso_local global i64 0, align 8
@FOTG210_CXPORT = common dso_local global i64 0, align 8
@DMATFNR_DISDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_udc*, i32*)* @fotg210_rdsetupp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fotg210_rdsetupp(%struct.fotg210_udc* %0, i32* %1) #0 {
  %3 = alloca %struct.fotg210_udc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fotg210_udc* %0, %struct.fotg210_udc** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  store i32* %9, i32** %6, align 8
  store i32 8, i32* %8, align 4
  %10 = load i32, i32* @DMATFNR_ACC_CXF, align 4
  %11 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %12 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FOTG210_DMATFNR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @iowrite32(i32 %10, i64 %15)
  %17 = load i32, i32* %8, align 4
  %18 = ashr i32 %17, 2
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %49, %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %19
  %23 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %24 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FOTG210_CXPORT, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @ioread32(i64 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 255
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = ashr i32 %37, 16
  %39 = and i32 %38, 255
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = ashr i32 %42, 24
  %44 = and i32 %43, 255
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  store i32 %44, i32* %46, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  store i32* %48, i32** %6, align 8
  br label %49

49:                                               ; preds = %22
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %5, align 4
  br label %19

52:                                               ; preds = %19
  %53 = load i32, i32* %8, align 4
  %54 = srem i32 %53, 4
  switch i32 %54, label %100 [
    i32 1, label %55
    i32 2, label %65
    i32 3, label %80
  ]

55:                                               ; preds = %52
  %56 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %57 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @FOTG210_CXPORT, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @ioread32(i64 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, 255
  %64 = load i32*, i32** %6, align 8
  store i32 %63, i32* %64, align 4
  br label %101

65:                                               ; preds = %52
  %66 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %67 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @FOTG210_CXPORT, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @ioread32(i64 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, 255
  %74 = load i32*, i32** %6, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %7, align 4
  %76 = ashr i32 %75, 8
  %77 = and i32 %76, 255
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  store i32 %77, i32* %79, align 4
  br label %101

80:                                               ; preds = %52
  %81 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %82 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @FOTG210_CXPORT, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @ioread32(i64 %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, 255
  %89 = load i32*, i32** %6, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* %7, align 4
  %91 = ashr i32 %90, 8
  %92 = and i32 %91, 255
  %93 = load i32*, i32** %6, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %7, align 4
  %96 = ashr i32 %95, 16
  %97 = and i32 %96, 255
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32 %97, i32* %99, align 4
  br label %101

100:                                              ; preds = %52
  br label %101

101:                                              ; preds = %100, %80, %65, %55
  %102 = load i32, i32* @DMATFNR_DISDMA, align 4
  %103 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %104 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @FOTG210_DMATFNR, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @iowrite32(i32 %102, i64 %107)
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
