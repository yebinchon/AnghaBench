; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_rxfifo_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_rxfifo_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc_ep = type { i32, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.udc_request = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32* }

@UDC_EPSTS_RX_PKT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s: rx %d bytes, rx-buf space = %d bytesn\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ep %s: rxfifo read %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.udc_ep*, %struct.udc_request*)* @udc_rxfifo_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udc_rxfifo_read(%struct.udc_ep* %0, %struct.udc_request* %1) #0 {
  %3 = alloca %struct.udc_ep*, align 8
  %4 = alloca %struct.udc_request*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.udc_ep* %0, %struct.udc_ep** %3, align 8
  store %struct.udc_request* %1, %struct.udc_request** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %10 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i32 @readl(i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @UDC_EPSTS_RX_PKT_SIZE, align 4
  %16 = call i32 @AMD_GETBITS(i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.udc_request*, %struct.udc_request** %4, align 8
  %18 = getelementptr inbounds %struct.udc_request, %struct.udc_request* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.udc_request*, %struct.udc_request** %4, align 8
  %22 = getelementptr inbounds %struct.udc_request, %struct.udc_request* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub i32 %20, %24
  store i32 %25, i32* %6, align 4
  %26 = load %struct.udc_request*, %struct.udc_request** %4, align 8
  %27 = getelementptr inbounds %struct.udc_request, %struct.udc_request* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.udc_request*, %struct.udc_request** %4, align 8
  %31 = getelementptr inbounds %struct.udc_request, %struct.udc_request* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %29, i64 %34
  store i32* %35, i32** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %2
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %42 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = urem i32 %40, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %39
  %48 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %49 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %52 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @DBG(i32 %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* @EOVERFLOW, align 4
  %59 = sub nsw i32 0, %58
  %60 = load %struct.udc_request*, %struct.udc_request** %4, align 8
  %61 = getelementptr inbounds %struct.udc_request, %struct.udc_request* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 4
  br label %63

63:                                               ; preds = %47, %39
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %63, %2
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.udc_request*, %struct.udc_request** %4, align 8
  %68 = getelementptr inbounds %struct.udc_request, %struct.udc_request* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %70, %66
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %74 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = urem i32 %72, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %98, label %79

79:                                               ; preds = %65
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %79
  %83 = load %struct.udc_request*, %struct.udc_request** %4, align 8
  %84 = getelementptr inbounds %struct.udc_request, %struct.udc_request* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.udc_request*, %struct.udc_request** %4, align 8
  %88 = getelementptr inbounds %struct.udc_request, %struct.udc_request* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %86, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %82
  %93 = load %struct.udc_request*, %struct.udc_request** %4, align 8
  %94 = getelementptr inbounds %struct.udc_request, %struct.udc_request* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %92, %79, %65
  store i32 1, i32* %8, align 4
  br label %99

99:                                               ; preds = %98, %92, %82
  %100 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %101 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %104 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @VDBG(i32 %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %110 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @udc_rxfifo_read_bytes(i32 %111, i32* %112, i32 %113)
  %115 = load i32, i32* %8, align 4
  ret i32 %115
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @AMD_GETBITS(i32, i32) #1

declare dso_local i32 @DBG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @VDBG(i32, i8*, i32, i32) #1

declare dso_local i32 @udc_rxfifo_read_bytes(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
