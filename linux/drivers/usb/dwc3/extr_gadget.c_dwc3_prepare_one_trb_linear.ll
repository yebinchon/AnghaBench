; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_prepare_one_trb_linear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_prepare_one_trb_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_ep = type { i64, %struct.dwc3_trb*, %struct.dwc3*, %struct.TYPE_3__ }
%struct.dwc3_trb = type { i32 }
%struct.dwc3 = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dwc3_request = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3_ep*, %struct.dwc3_request*)* @dwc3_prepare_one_trb_linear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_prepare_one_trb_linear(%struct.dwc3_ep* %0, %struct.dwc3_request* %1) #0 {
  %3 = alloca %struct.dwc3_ep*, align 8
  %4 = alloca %struct.dwc3_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dwc3*, align 8
  %9 = alloca %struct.dwc3_trb*, align 8
  %10 = alloca %struct.dwc3*, align 8
  %11 = alloca %struct.dwc3_trb*, align 8
  store %struct.dwc3_ep* %0, %struct.dwc3_ep** %3, align 8
  store %struct.dwc3_request* %1, %struct.dwc3_request** %4, align 8
  %12 = load %struct.dwc3_request*, %struct.dwc3_request** %4, align 8
  %13 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %17 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @usb_endpoint_maxp(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = urem i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %77

29:                                               ; preds = %26, %2
  %30 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %31 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @usb_endpoint_dir_out(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %77

36:                                               ; preds = %29
  %37 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %38 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %37, i32 0, i32 2
  %39 = load %struct.dwc3*, %struct.dwc3** %38, align 8
  store %struct.dwc3* %39, %struct.dwc3** %8, align 8
  %40 = load %struct.dwc3_request*, %struct.dwc3_request** %4, align 8
  %41 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %43 = load %struct.dwc3_request*, %struct.dwc3_request** %4, align 8
  %44 = call i32 @dwc3_prepare_one_trb(%struct.dwc3_ep* %42, %struct.dwc3_request* %43, i32 1, i32 0)
  %45 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %46 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %45, i32 0, i32 1
  %47 = load %struct.dwc3_trb*, %struct.dwc3_trb** %46, align 8
  %48 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %49 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %47, i64 %50
  store %struct.dwc3_trb* %51, %struct.dwc3_trb** %9, align 8
  %52 = load %struct.dwc3_request*, %struct.dwc3_request** %4, align 8
  %53 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %57 = load %struct.dwc3_trb*, %struct.dwc3_trb** %9, align 8
  %58 = load %struct.dwc3*, %struct.dwc3** %8, align 8
  %59 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sub i32 %61, %62
  %64 = load %struct.dwc3_request*, %struct.dwc3_request** %4, align 8
  %65 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.dwc3_request*, %struct.dwc3_request** %4, align 8
  %69 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.dwc3_request*, %struct.dwc3_request** %4, align 8
  %73 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @__dwc3_prepare_one_trb(%struct.dwc3_ep* %56, %struct.dwc3_trb* %57, i32 %60, i32 %63, i32 0, i32 1, i32 %67, i32 %71, i32 %75)
  br label %140

77:                                               ; preds = %29, %26
  %78 = load %struct.dwc3_request*, %struct.dwc3_request** %4, align 8
  %79 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %135

83:                                               ; preds = %77
  %84 = load %struct.dwc3_request*, %struct.dwc3_request** %4, align 8
  %85 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %135

89:                                               ; preds = %83
  %90 = load %struct.dwc3_request*, %struct.dwc3_request** %4, align 8
  %91 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i64 @IS_ALIGNED(i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %135

97:                                               ; preds = %89
  %98 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %99 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %98, i32 0, i32 2
  %100 = load %struct.dwc3*, %struct.dwc3** %99, align 8
  store %struct.dwc3* %100, %struct.dwc3** %10, align 8
  %101 = load %struct.dwc3_request*, %struct.dwc3_request** %4, align 8
  %102 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %104 = load %struct.dwc3_request*, %struct.dwc3_request** %4, align 8
  %105 = call i32 @dwc3_prepare_one_trb(%struct.dwc3_ep* %103, %struct.dwc3_request* %104, i32 1, i32 0)
  %106 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %107 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %106, i32 0, i32 1
  %108 = load %struct.dwc3_trb*, %struct.dwc3_trb** %107, align 8
  %109 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %110 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %108, i64 %111
  store %struct.dwc3_trb* %112, %struct.dwc3_trb** %11, align 8
  %113 = load %struct.dwc3_request*, %struct.dwc3_request** %4, align 8
  %114 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  %117 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %118 = load %struct.dwc3_trb*, %struct.dwc3_trb** %11, align 8
  %119 = load %struct.dwc3*, %struct.dwc3** %10, align 8
  %120 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.dwc3_request*, %struct.dwc3_request** %4, align 8
  %123 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.dwc3_request*, %struct.dwc3_request** %4, align 8
  %127 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.dwc3_request*, %struct.dwc3_request** %4, align 8
  %131 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @__dwc3_prepare_one_trb(%struct.dwc3_ep* %117, %struct.dwc3_trb* %118, i32 %121, i32 0, i32 0, i32 1, i32 %125, i32 %129, i32 %133)
  br label %139

135:                                              ; preds = %89, %83, %77
  %136 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %137 = load %struct.dwc3_request*, %struct.dwc3_request** %4, align 8
  %138 = call i32 @dwc3_prepare_one_trb(%struct.dwc3_ep* %136, %struct.dwc3_request* %137, i32 0, i32 0)
  br label %139

139:                                              ; preds = %135, %97
  br label %140

140:                                              ; preds = %139, %36
  ret void
}

declare dso_local i32 @usb_endpoint_maxp(i32) #1

declare dso_local i64 @usb_endpoint_dir_out(i32) #1

declare dso_local i32 @dwc3_prepare_one_trb(%struct.dwc3_ep*, %struct.dwc3_request*, i32, i32) #1

declare dso_local i32 @__dwc3_prepare_one_trb(%struct.dwc3_ep*, %struct.dwc3_trb*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ALIGNED(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
