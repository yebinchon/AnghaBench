; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_prepare_aligned_request_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_prepare_aligned_request_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_request = type { i32, %struct.TYPE_2__, %struct.cdns3_aligned_buf*, %struct.cdns3_endpoint* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.cdns3_aligned_buf = type { i64, i32, i32, i32, i32 }
%struct.cdns3_endpoint = type { i64, %struct.cdns3_device* }
%struct.cdns3_device = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@system_freezable_wq = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i64 0, align 8
@REQUEST_UNALIGNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns3_request*)* @cdns3_prepare_aligned_request_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_prepare_aligned_request_buf(%struct.cdns3_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdns3_request*, align 8
  %4 = alloca %struct.cdns3_endpoint*, align 8
  %5 = alloca %struct.cdns3_device*, align 8
  %6 = alloca %struct.cdns3_aligned_buf*, align 8
  store %struct.cdns3_request* %0, %struct.cdns3_request** %3, align 8
  %7 = load %struct.cdns3_request*, %struct.cdns3_request** %3, align 8
  %8 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %7, i32 0, i32 3
  %9 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %8, align 8
  store %struct.cdns3_endpoint* %9, %struct.cdns3_endpoint** %4, align 8
  %10 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %11 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %10, i32 0, i32 1
  %12 = load %struct.cdns3_device*, %struct.cdns3_device** %11, align 8
  store %struct.cdns3_device* %12, %struct.cdns3_device** %5, align 8
  %13 = load %struct.cdns3_request*, %struct.cdns3_request** %3, align 8
  %14 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = and i64 %16, 7
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %125

20:                                               ; preds = %1
  %21 = load %struct.cdns3_request*, %struct.cdns3_request** %3, align 8
  %22 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %21, i32 0, i32 2
  %23 = load %struct.cdns3_aligned_buf*, %struct.cdns3_aligned_buf** %22, align 8
  store %struct.cdns3_aligned_buf* %23, %struct.cdns3_aligned_buf** %6, align 8
  %24 = load %struct.cdns3_aligned_buf*, %struct.cdns3_aligned_buf** %6, align 8
  %25 = icmp ne %struct.cdns3_aligned_buf* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.cdns3_request*, %struct.cdns3_request** %3, align 8
  %28 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.cdns3_aligned_buf*, %struct.cdns3_aligned_buf** %6, align 8
  %32 = getelementptr inbounds %struct.cdns3_aligned_buf, %struct.cdns3_aligned_buf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %98

35:                                               ; preds = %26, %20
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = call %struct.cdns3_aligned_buf* @kzalloc(i32 24, i32 %36)
  store %struct.cdns3_aligned_buf* %37, %struct.cdns3_aligned_buf** %6, align 8
  %38 = load %struct.cdns3_aligned_buf*, %struct.cdns3_aligned_buf** %6, align 8
  %39 = icmp ne %struct.cdns3_aligned_buf* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %125

43:                                               ; preds = %35
  %44 = load %struct.cdns3_request*, %struct.cdns3_request** %3, align 8
  %45 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.cdns3_aligned_buf*, %struct.cdns3_aligned_buf** %6, align 8
  %49 = getelementptr inbounds %struct.cdns3_aligned_buf, %struct.cdns3_aligned_buf* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %51 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.cdns3_aligned_buf*, %struct.cdns3_aligned_buf** %6, align 8
  %54 = getelementptr inbounds %struct.cdns3_aligned_buf, %struct.cdns3_aligned_buf* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.cdns3_aligned_buf*, %struct.cdns3_aligned_buf** %6, align 8
  %57 = getelementptr inbounds %struct.cdns3_aligned_buf, %struct.cdns3_aligned_buf* %56, i32 0, i32 4
  %58 = load i32, i32* @GFP_ATOMIC, align 4
  %59 = call i32 @dma_alloc_coherent(i32 %52, i64 %55, i32* %57, i32 %58)
  %60 = load %struct.cdns3_aligned_buf*, %struct.cdns3_aligned_buf** %6, align 8
  %61 = getelementptr inbounds %struct.cdns3_aligned_buf, %struct.cdns3_aligned_buf* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.cdns3_aligned_buf*, %struct.cdns3_aligned_buf** %6, align 8
  %63 = getelementptr inbounds %struct.cdns3_aligned_buf, %struct.cdns3_aligned_buf* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %43
  %67 = load %struct.cdns3_aligned_buf*, %struct.cdns3_aligned_buf** %6, align 8
  %68 = call i32 @kfree(%struct.cdns3_aligned_buf* %67)
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %125

71:                                               ; preds = %43
  %72 = load %struct.cdns3_request*, %struct.cdns3_request** %3, align 8
  %73 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %72, i32 0, i32 2
  %74 = load %struct.cdns3_aligned_buf*, %struct.cdns3_aligned_buf** %73, align 8
  %75 = icmp ne %struct.cdns3_aligned_buf* %74, null
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = load %struct.cdns3_request*, %struct.cdns3_request** %3, align 8
  %78 = call i32 @trace_cdns3_free_aligned_request(%struct.cdns3_request* %77)
  %79 = load %struct.cdns3_request*, %struct.cdns3_request** %3, align 8
  %80 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %79, i32 0, i32 2
  %81 = load %struct.cdns3_aligned_buf*, %struct.cdns3_aligned_buf** %80, align 8
  %82 = getelementptr inbounds %struct.cdns3_aligned_buf, %struct.cdns3_aligned_buf* %81, i32 0, i32 1
  store i32 0, i32* %82, align 8
  %83 = load i32, i32* @system_freezable_wq, align 4
  %84 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %85 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %84, i32 0, i32 1
  %86 = call i32 @queue_work(i32 %83, i32* %85)
  br label %87

87:                                               ; preds = %76, %71
  %88 = load %struct.cdns3_aligned_buf*, %struct.cdns3_aligned_buf** %6, align 8
  %89 = getelementptr inbounds %struct.cdns3_aligned_buf, %struct.cdns3_aligned_buf* %88, i32 0, i32 1
  store i32 1, i32* %89, align 8
  %90 = load %struct.cdns3_aligned_buf*, %struct.cdns3_aligned_buf** %6, align 8
  %91 = load %struct.cdns3_request*, %struct.cdns3_request** %3, align 8
  %92 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %91, i32 0, i32 2
  store %struct.cdns3_aligned_buf* %90, %struct.cdns3_aligned_buf** %92, align 8
  %93 = load %struct.cdns3_aligned_buf*, %struct.cdns3_aligned_buf** %6, align 8
  %94 = getelementptr inbounds %struct.cdns3_aligned_buf, %struct.cdns3_aligned_buf* %93, i32 0, i32 3
  %95 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %96 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %95, i32 0, i32 0
  %97 = call i32 @list_add_tail(i32* %94, i32* %96)
  br label %98

98:                                               ; preds = %87, %26
  %99 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %100 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @USB_DIR_IN, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %98
  %105 = load %struct.cdns3_aligned_buf*, %struct.cdns3_aligned_buf** %6, align 8
  %106 = getelementptr inbounds %struct.cdns3_aligned_buf, %struct.cdns3_aligned_buf* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.cdns3_request*, %struct.cdns3_request** %3, align 8
  %109 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.cdns3_request*, %struct.cdns3_request** %3, align 8
  %113 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @memcpy(i32 %107, i64 %111, i64 %115)
  br label %117

117:                                              ; preds = %104, %98
  %118 = load i32, i32* @REQUEST_UNALIGNED, align 4
  %119 = load %struct.cdns3_request*, %struct.cdns3_request** %3, align 8
  %120 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  %123 = load %struct.cdns3_request*, %struct.cdns3_request** %3, align 8
  %124 = call i32 @trace_cdns3_prepare_aligned_request(%struct.cdns3_request* %123)
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %117, %66, %40, %19
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.cdns3_aligned_buf* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @kfree(%struct.cdns3_aligned_buf*) #1

declare dso_local i32 @trace_cdns3_free_aligned_request(%struct.cdns3_request*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

declare dso_local i32 @trace_cdns3_prepare_aligned_request(%struct.cdns3_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
