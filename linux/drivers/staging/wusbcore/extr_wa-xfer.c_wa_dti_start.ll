; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c_wa_dti_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c_wa_dti_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wahc = type { i32*, i32, i32*, i32, i32*, %struct.TYPE_2__*, %struct.usb_endpoint_descriptor* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.usb_endpoint_descriptor = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@wa_dti_cb = common dso_local global i32 0, align 4
@WA_MAX_BUF_IN_URBS = common dso_local global i32 0, align 4
@wa_buf_in_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"DTI Error: Could not submit DTI URB (%d) resetting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wa_dti_start(%struct.wahc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wahc*, align 8
  %4 = alloca %struct.usb_endpoint_descriptor*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wahc* %0, %struct.wahc** %3, align 8
  %8 = load %struct.wahc*, %struct.wahc** %3, align 8
  %9 = getelementptr inbounds %struct.wahc, %struct.wahc* %8, i32 0, i32 6
  %10 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  store %struct.usb_endpoint_descriptor* %10, %struct.usb_endpoint_descriptor** %4, align 8
  %11 = load %struct.wahc*, %struct.wahc** %3, align 8
  %12 = getelementptr inbounds %struct.wahc, %struct.wahc* %11, i32 0, i32 5
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.wahc*, %struct.wahc** %3, align 8
  %18 = getelementptr inbounds %struct.wahc, %struct.wahc* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %97

22:                                               ; preds = %1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32* @usb_alloc_urb(i32 0, i32 %23)
  %25 = load %struct.wahc*, %struct.wahc** %3, align 8
  %26 = getelementptr inbounds %struct.wahc, %struct.wahc* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  %27 = load %struct.wahc*, %struct.wahc** %3, align 8
  %28 = getelementptr inbounds %struct.wahc, %struct.wahc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %105

32:                                               ; preds = %22
  %33 = load %struct.wahc*, %struct.wahc** %3, align 8
  %34 = getelementptr inbounds %struct.wahc, %struct.wahc* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.wahc*, %struct.wahc** %3, align 8
  %37 = getelementptr inbounds %struct.wahc, %struct.wahc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.wahc*, %struct.wahc** %3, align 8
  %40 = getelementptr inbounds %struct.wahc, %struct.wahc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %43 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 128, %44
  %46 = call i32 @usb_rcvbulkpipe(i32 %41, i32 %45)
  %47 = load %struct.wahc*, %struct.wahc** %3, align 8
  %48 = getelementptr inbounds %struct.wahc, %struct.wahc* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.wahc*, %struct.wahc** %3, align 8
  %51 = getelementptr inbounds %struct.wahc, %struct.wahc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @wa_dti_cb, align 4
  %54 = load %struct.wahc*, %struct.wahc** %3, align 8
  %55 = call i32 @usb_fill_bulk_urb(i32* %35, i32 %38, i32 %46, i32* %49, i32 %52, i32 %53, %struct.wahc* %54)
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %81, %32
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @WA_MAX_BUF_IN_URBS, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %56
  %61 = load %struct.wahc*, %struct.wahc** %3, align 8
  %62 = getelementptr inbounds %struct.wahc, %struct.wahc* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load %struct.wahc*, %struct.wahc** %3, align 8
  %68 = getelementptr inbounds %struct.wahc, %struct.wahc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.wahc*, %struct.wahc** %3, align 8
  %71 = getelementptr inbounds %struct.wahc, %struct.wahc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %74 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 128, %75
  %77 = call i32 @usb_rcvbulkpipe(i32 %72, i32 %76)
  %78 = load i32, i32* @wa_buf_in_cb, align 4
  %79 = load %struct.wahc*, %struct.wahc** %3, align 8
  %80 = call i32 @usb_fill_bulk_urb(i32* %66, i32 %69, i32 %77, i32* null, i32 0, i32 %78, %struct.wahc* %79)
  br label %81

81:                                               ; preds = %60
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %56

84:                                               ; preds = %56
  %85 = load %struct.wahc*, %struct.wahc** %3, align 8
  %86 = getelementptr inbounds %struct.wahc, %struct.wahc* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call i32 @usb_submit_urb(i32* %87, i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load %struct.device*, %struct.device** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @dev_err(%struct.device* %93, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %98

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %21
  store i32 0, i32* %2, align 4
  br label %107

98:                                               ; preds = %92
  %99 = load %struct.wahc*, %struct.wahc** %3, align 8
  %100 = getelementptr inbounds %struct.wahc, %struct.wahc* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @usb_put_urb(i32* %101)
  %103 = load %struct.wahc*, %struct.wahc** %3, align 8
  %104 = getelementptr inbounds %struct.wahc, %struct.wahc* %103, i32 0, i32 0
  store i32* null, i32** %104, align 8
  br label %105

105:                                              ; preds = %98, %31
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %97
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32*, i32, i32, i32*, i32, i32, %struct.wahc*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @usb_put_urb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
