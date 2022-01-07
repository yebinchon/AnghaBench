; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_alloc_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_alloc_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i32, %struct.dt282x_private* }
%struct.dt282x_private = type { i32 }
%struct.comedi_devconfig = type { i32* }

@dt282x_interrupt = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_devconfig*)* @dt282x_alloc_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt282x_alloc_dma(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_devconfig*, align 8
  %5 = alloca %struct.dt282x_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %4, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 2
  %10 = load %struct.dt282x_private*, %struct.dt282x_private** %9, align 8
  store %struct.dt282x_private* %10, %struct.dt282x_private** %5, align 8
  %11 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %4, align 8
  %22 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp ult i32 %20, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %2
  %28 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %4, align 8
  %29 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %4, align 8
  %35 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %38, i32* %39, align 4
  br label %53

40:                                               ; preds = %2
  %41 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %4, align 8
  %42 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %45, i32* %46, align 4
  %47 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %4, align 8
  %48 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %40, %27
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %53
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %78, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ult i32 %64, 5
  br i1 %65, label %78, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ugt i32 %68, 7
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ult i32 %72, 5
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ugt i32 %76, 7
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %70, %66, %62, %56, %53
  br label %111

79:                                               ; preds = %74
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @dt282x_interrupt, align 4
  %82 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %83 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %86 = call i64 @request_irq(i32 %80, i32 %81, i32 0, i32 %84, %struct.comedi_device* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %111

89:                                               ; preds = %79
  %90 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @PAGE_SIZE, align 4
  %96 = call i32 @comedi_isadma_alloc(%struct.comedi_device* %90, i32 2, i32 %92, i32 %94, i32 %95, i32 0)
  %97 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %98 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %100 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %89
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %106 = call i32 @free_irq(i32 %104, %struct.comedi_device* %105)
  br label %111

107:                                              ; preds = %89
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %110 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %78, %88, %107, %103
  ret void
}

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.comedi_device*) #1

declare dso_local i32 @comedi_isadma_alloc(%struct.comedi_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
