; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_wlan_handle_isr_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_wlan_handle_isr_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 (%struct.wilc*, i32, i32*, i32)*, i32 (%struct.wilc*, i32)*, i32 (%struct.wilc*, i32*)* }
%struct.rxq_entry_t = type { i32, i32* }

@WILC_RX_BUFF_SIZE = common dso_local global i32 0, align 4
@DATA_INT_CLR = common dso_local global i32 0, align 4
@ENABLE_RX_VMM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wilc*, i32)* @wilc_wlan_handle_isr_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wilc_wlan_handle_isr_ext(%struct.wilc* %0, i32 %1) #0 {
  %3 = alloca %struct.wilc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rxq_entry_t*, align 8
  store %struct.wilc* %0, %struct.wilc** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.wilc*, %struct.wilc** %3, align 8
  %12 = getelementptr inbounds %struct.wilc, %struct.wilc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 32767
  %16 = shl i32 %15, 2
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %25, %2
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 10
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %38

25:                                               ; preds = %23
  %26 = load %struct.wilc*, %struct.wilc** %3, align 8
  %27 = getelementptr inbounds %struct.wilc, %struct.wilc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32 (%struct.wilc*, i32*)*, i32 (%struct.wilc*, i32*)** %29, align 8
  %31 = load %struct.wilc*, %struct.wilc** %3, align 8
  %32 = call i32 %30(%struct.wilc* %31, i32* %7)
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 32767
  %35 = shl i32 %34, 2
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %17

38:                                               ; preds = %23
  %39 = load i32, i32* %7, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %102

42:                                               ; preds = %38
  %43 = load i32, i32* @WILC_RX_BUFF_SIZE, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %42
  %50 = load %struct.wilc*, %struct.wilc** %3, align 8
  %51 = getelementptr inbounds %struct.wilc, %struct.wilc* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32* %55, i32** %6, align 8
  %56 = load %struct.wilc*, %struct.wilc** %3, align 8
  %57 = getelementptr inbounds %struct.wilc, %struct.wilc* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32 (%struct.wilc*, i32)*, i32 (%struct.wilc*, i32)** %59, align 8
  %61 = load %struct.wilc*, %struct.wilc** %3, align 8
  %62 = load i32, i32* @DATA_INT_CLR, align 4
  %63 = load i32, i32* @ENABLE_RX_VMM, align 4
  %64 = or i32 %62, %63
  %65 = call i32 %60(%struct.wilc* %61, i32 %64)
  %66 = load %struct.wilc*, %struct.wilc** %3, align 8
  %67 = getelementptr inbounds %struct.wilc, %struct.wilc* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32 (%struct.wilc*, i32, i32*, i32)*, i32 (%struct.wilc*, i32, i32*, i32)** %69, align 8
  %71 = load %struct.wilc*, %struct.wilc** %3, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 %70(%struct.wilc* %71, i32 0, i32* %72, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %49
  br label %102

78:                                               ; preds = %49
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.wilc*, %struct.wilc** %3, align 8
  %84 = getelementptr inbounds %struct.wilc, %struct.wilc* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call %struct.rxq_entry_t* @kmalloc(i32 16, i32 %85)
  store %struct.rxq_entry_t* %86, %struct.rxq_entry_t** %10, align 8
  %87 = load %struct.rxq_entry_t*, %struct.rxq_entry_t** %10, align 8
  %88 = icmp ne %struct.rxq_entry_t* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %78
  br label %102

90:                                               ; preds = %78
  %91 = load i32*, i32** %6, align 8
  %92 = load %struct.rxq_entry_t*, %struct.rxq_entry_t** %10, align 8
  %93 = getelementptr inbounds %struct.rxq_entry_t, %struct.rxq_entry_t* %92, i32 0, i32 1
  store i32* %91, i32** %93, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.rxq_entry_t*, %struct.rxq_entry_t** %10, align 8
  %96 = getelementptr inbounds %struct.rxq_entry_t, %struct.rxq_entry_t* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.wilc*, %struct.wilc** %3, align 8
  %98 = load %struct.rxq_entry_t*, %struct.rxq_entry_t** %10, align 8
  %99 = call i32 @wilc_wlan_rxq_add(%struct.wilc* %97, %struct.rxq_entry_t* %98)
  %100 = load %struct.wilc*, %struct.wilc** %3, align 8
  %101 = call i32 @wilc_wlan_handle_rxq(%struct.wilc* %100)
  br label %102

102:                                              ; preds = %90, %89, %77, %41
  ret void
}

declare dso_local %struct.rxq_entry_t* @kmalloc(i32, i32) #1

declare dso_local i32 @wilc_wlan_rxq_add(%struct.wilc*, %struct.rxq_entry_t*) #1

declare dso_local i32 @wilc_wlan_handle_rxq(%struct.wilc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
