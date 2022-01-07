; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_udc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_udc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32*, i32*, %struct.TYPE_6__, %struct.TYPE_5__*, i64, %struct.TYPE_4__*, %struct.device* }
%struct.TYPE_6__ = type { i32, i32, i32, i32*, i32, %struct.usb_otg_caps*, i32, i32, i32, i32* }
%struct.usb_otg_caps = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.usb_otg_caps }
%struct.device = type { i32 }

@usb_gadget_ops = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@CI_HDRC_REQUIRES_ALIGNED_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ci_hw_qh\00", align 1
@CI_HDRC_PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ci_hw_td\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ci_hdrc*)* @udc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udc_start(%struct.ci_hdrc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ci_hdrc*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.usb_otg_caps*, align 8
  %6 = alloca i32, align 4
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %3, align 8
  %7 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %8 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %7, i32 0, i32 6
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %11 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %10, i32 0, i32 5
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store %struct.usb_otg_caps* %13, %struct.usb_otg_caps** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %15 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 9
  store i32* @usb_gadget_ops, i32** %16, align 8
  %17 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %18 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %19 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 8
  store i32 %17, i32* %20, align 8
  %21 = load i32, i32* @USB_SPEED_HIGH, align 4
  %22 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %23 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 7
  store i32 %21, i32* %24, align 4
  %25 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %26 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %25, i32 0, i32 5
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %31 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 6
  store i32 %29, i32* %32, align 8
  %33 = load %struct.usb_otg_caps*, %struct.usb_otg_caps** %5, align 8
  %34 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %35 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 5
  store %struct.usb_otg_caps* %33, %struct.usb_otg_caps** %36, align 8
  %37 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %38 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %37, i32 0, i32 5
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CI_HDRC_REQUIRES_ALIGNED_DMA, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %1
  %46 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %47 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %1
  %50 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %51 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %49
  %55 = load %struct.usb_otg_caps*, %struct.usb_otg_caps** %5, align 8
  %56 = getelementptr inbounds %struct.usb_otg_caps, %struct.usb_otg_caps* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %54
  %60 = load %struct.usb_otg_caps*, %struct.usb_otg_caps** %5, align 8
  %61 = getelementptr inbounds %struct.usb_otg_caps, %struct.usb_otg_caps* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.usb_otg_caps*, %struct.usb_otg_caps** %5, align 8
  %66 = getelementptr inbounds %struct.usb_otg_caps, %struct.usb_otg_caps* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64, %59, %54
  %70 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %71 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %64, %49
  %74 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %75 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 4
  %77 = call i32 @INIT_LIST_HEAD(i32* %76)
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = getelementptr inbounds %struct.device, %struct.device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @CI_HDRC_PAGE_SIZE, align 4
  %82 = call i8* @dma_pool_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %80, i32 4, i32 64, i32 %81)
  %83 = bitcast i8* %82 to i32*
  %84 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %85 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %84, i32 0, i32 0
  store i32* %83, i32** %85, align 8
  %86 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %87 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %73
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %154

93:                                               ; preds = %73
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = getelementptr inbounds %struct.device, %struct.device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @CI_HDRC_PAGE_SIZE, align 4
  %98 = call i8* @dma_pool_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 4, i32 64, i32 %97)
  %99 = bitcast i8* %98 to i32*
  %100 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %101 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %100, i32 0, i32 1
  store i32* %99, i32** %101, align 8
  %102 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %103 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = icmp eq i32* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %93
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %6, align 4
  br label %148

109:                                              ; preds = %93
  %110 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %111 = call i32 @init_eps(%struct.ci_hdrc* %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %143

115:                                              ; preds = %109
  %116 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %117 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %116, i32 0, i32 3
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %121 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  store i32* %119, i32** %122, align 8
  %123 = load %struct.device*, %struct.device** %4, align 8
  %124 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %125 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %124, i32 0, i32 2
  %126 = call i32 @usb_add_gadget_udc(%struct.device* %123, %struct.TYPE_6__* %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %115
  br label %140

130:                                              ; preds = %115
  %131 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %132 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = call i32 @pm_runtime_no_callbacks(i32* %133)
  %135 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %136 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  %138 = call i32 @pm_runtime_enable(i32* %137)
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %2, align 4
  br label %154

140:                                              ; preds = %129
  %141 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %142 = call i32 @destroy_eps(%struct.ci_hdrc* %141)
  br label %143

143:                                              ; preds = %140, %114
  %144 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %145 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @dma_pool_destroy(i32* %146)
  br label %148

148:                                              ; preds = %143, %106
  %149 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %150 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @dma_pool_destroy(i32* %151)
  %153 = load i32, i32* %6, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %148, %130, %90
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @dma_pool_create(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @init_eps(%struct.ci_hdrc*) #1

declare dso_local i32 @usb_add_gadget_udc(%struct.device*, %struct.TYPE_6__*) #1

declare dso_local i32 @pm_runtime_no_callbacks(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @destroy_eps(%struct.ci_hdrc*) #1

declare dso_local i32 @dma_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
