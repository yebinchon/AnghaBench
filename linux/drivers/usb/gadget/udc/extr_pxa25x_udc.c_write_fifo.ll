; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa25x_udc.c_write_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa25x_udc.c_write_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa25x_ep = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pxa25x_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64 }

@DBG_VERY_NOISY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"wrote %s %d bytes%s%s %d left %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"/L\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"/S\00", align 1
@UDCCS_BI_TPC = common dso_local global i32 0, align 4
@UDCCS_BI_TSP = common dso_local global i32 0, align 4
@UDCCS_BI_TFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa25x_ep*, %struct.pxa25x_request*)* @write_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_fifo(%struct.pxa25x_ep* %0, %struct.pxa25x_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pxa25x_ep*, align 8
  %5 = alloca %struct.pxa25x_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pxa25x_ep* %0, %struct.pxa25x_ep** %4, align 8
  store %struct.pxa25x_request* %1, %struct.pxa25x_request** %5, align 8
  %10 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %11 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @usb_endpoint_maxp(i32 %13)
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %107, %2
  %16 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %17 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @write_packet(%struct.pxa25x_ep* %16, %struct.pxa25x_request* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @unlikely(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i32 1, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %56

27:                                               ; preds = %15
  %28 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %29 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %33 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %31, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @likely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %27
  %41 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %42 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %27
  store i32 0, i32* %8, align 4
  br label %48

47:                                               ; preds = %40
  store i32 1, i32* %8, align 4
  br label %48

48:                                               ; preds = %47, %46
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %51 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ult i32 %49, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @unlikely(i32 %54)
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %48, %26
  %57 = load i32, i32* @DBG_VERY_NOISY, align 4
  %58 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %59 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %71 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %72 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %76 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %74, %78
  %80 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %81 = call i32 @DBG(i32 %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62, i8* %66, i8* %70, i64 %79, %struct.pxa25x_request* %80)
  %82 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %83 = load i32, i32* @UDCCS_BI_TPC, align 4
  %84 = call i32 @udc_ep_set_UDCCS(%struct.pxa25x_ep* %82, i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %56
  %88 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %89 = load i32, i32* @UDCCS_BI_TSP, align 4
  %90 = call i32 @udc_ep_set_UDCCS(%struct.pxa25x_ep* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %56
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %96 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %97 = call i32 @done(%struct.pxa25x_ep* %95, %struct.pxa25x_request* %96, i32 0)
  %98 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %99 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %98, i32 0, i32 1
  %100 = call i64 @list_empty(i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %104 = call i32 @pio_irq_disable(%struct.pxa25x_ep* %103)
  br label %105

105:                                              ; preds = %102, %94
  store i32 1, i32* %3, align 4
  br label %114

106:                                              ; preds = %91
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %109 = call i32 @udc_ep_get_UDCCS(%struct.pxa25x_ep* %108)
  %110 = load i32, i32* @UDCCS_BI_TFS, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %15, label %113

113:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %105
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @usb_endpoint_maxp(i32) #1

declare dso_local i32 @write_packet(%struct.pxa25x_ep*, %struct.pxa25x_request*, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @DBG(i32, i8*, i32, i32, i8*, i8*, i64, %struct.pxa25x_request*) #1

declare dso_local i32 @udc_ep_set_UDCCS(%struct.pxa25x_ep*, i32) #1

declare dso_local i32 @done(%struct.pxa25x_ep*, %struct.pxa25x_request*, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @pio_irq_disable(%struct.pxa25x_ep*) #1

declare dso_local i32 @udc_ep_get_UDCCS(%struct.pxa25x_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
