; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa25x_udc.c_read_ep0_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa25x_udc.c_read_ep0_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa25x_ep = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pxa25x_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64* }

@UDCCS0_RNE = common dso_local global i32 0, align 4
@UDDR0 = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s overflow\0A\00", align 1
@UDCCS0_OPR = common dso_local global i32 0, align 4
@UDCCS0_IPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa25x_ep*, %struct.pxa25x_request*)* @read_ep0_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_ep0_fifo(%struct.pxa25x_ep* %0, %struct.pxa25x_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pxa25x_ep*, align 8
  %5 = alloca %struct.pxa25x_request*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pxa25x_ep* %0, %struct.pxa25x_ep** %4, align 8
  store %struct.pxa25x_request* %1, %struct.pxa25x_request** %5, align 8
  %9 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %10 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = load i64*, i64** %11, align 8
  %13 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %14 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %12, i64 %17
  store i64* %18, i64** %6, align 8
  %19 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %20 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %24 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub i32 %22, %26
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %72, %2
  %29 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %30 = call i32 @udc_ep_get_UDCCS(%struct.pxa25x_ep* %29)
  %31 = load i32, i32* @UDCCS0_RNE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %73

34:                                               ; preds = %28
  %35 = load i64, i64* @UDDR0, align 8
  store i64 %35, i64* %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %34
  %42 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %43 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @EOVERFLOW, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %51 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @DMSG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %49, %41
  %56 = load i32, i32* @EOVERFLOW, align 4
  %57 = sub nsw i32 0, %56
  %58 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %59 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  br label %72

61:                                               ; preds = %34
  %62 = load i64, i64* %7, align 8
  %63 = load i64*, i64** %6, align 8
  %64 = getelementptr inbounds i64, i64* %63, i32 1
  store i64* %64, i64** %6, align 8
  store i64 %62, i64* %63, align 8
  %65 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %66 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* %8, align 4
  %71 = add i32 %70, -1
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %61, %55
  br label %28

73:                                               ; preds = %28
  %74 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %75 = load i32, i32* @UDCCS0_OPR, align 4
  %76 = load i32, i32* @UDCCS0_IPR, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @udc_ep_set_UDCCS(%struct.pxa25x_ep* %74, i32 %77)
  %79 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %80 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %84 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp uge i32 %82, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %73
  store i32 1, i32* %3, align 4
  br label %90

89:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %88
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @udc_ep_get_UDCCS(%struct.pxa25x_ep*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DMSG(i8*, i32) #1

declare dso_local i32 @udc_ep_set_UDCCS(%struct.pxa25x_ep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
