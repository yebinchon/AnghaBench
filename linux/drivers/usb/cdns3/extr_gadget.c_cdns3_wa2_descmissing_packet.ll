; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_wa2_descmissing_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_wa2_descmissing_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_endpoint = type { i32, i64, %struct.TYPE_3__*, %struct.cdns3_request*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cdns3_request = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.usb_request = type { i32 }

@EP_QUIRK_EXTRA_BUF_DET = common dso_local global i32 0, align 4
@EP_QUIRK_EXTRA_BUF_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Description Missing detected\0A\00", align 1
@CDNS3_WA2_NUM_BUFFERS = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@REQUEST_INTERNAL = common dso_local global i32 0, align 4
@REQUEST_INTERNAL_CH = common dso_local global i32 0, align 4
@CDNS3_DESCMIS_BUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed: No sufficient memory for DESCMIS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns3_endpoint*)* @cdns3_wa2_descmissing_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns3_wa2_descmissing_packet(%struct.cdns3_endpoint* %0) #0 {
  %2 = alloca %struct.cdns3_endpoint*, align 8
  %3 = alloca %struct.cdns3_request*, align 8
  %4 = alloca %struct.usb_request*, align 8
  store %struct.cdns3_endpoint* %0, %struct.cdns3_endpoint** %2, align 8
  %5 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %6 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @EP_QUIRK_EXTRA_BUF_DET, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load i32, i32* @EP_QUIRK_EXTRA_BUF_DET, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %15 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load i32, i32* @EP_QUIRK_EXTRA_BUF_EN, align 4
  %19 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %20 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %11, %1
  %24 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %25 = call i32 @trace_cdns3_wa2(%struct.cdns3_endpoint* %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %27 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CDNS3_WA2_NUM_BUFFERS, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %33 = call i32 @cdns3_wa2_remove_old_request(%struct.cdns3_endpoint* %32)
  br label %34

34:                                               ; preds = %31, %23
  %35 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %36 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %35, i32 0, i32 4
  %37 = load i32, i32* @GFP_ATOMIC, align 4
  %38 = call %struct.usb_request* @cdns3_gadget_ep_alloc_request(i32* %36, i32 %37)
  store %struct.usb_request* %38, %struct.usb_request** %4, align 8
  %39 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %40 = icmp ne %struct.usb_request* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %99

42:                                               ; preds = %34
  %43 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %44 = call %struct.cdns3_request* @to_cdns3_request(%struct.usb_request* %43)
  store %struct.cdns3_request* %44, %struct.cdns3_request** %3, align 8
  %45 = load i32, i32* @REQUEST_INTERNAL, align 4
  %46 = load %struct.cdns3_request*, %struct.cdns3_request** %3, align 8
  %47 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %51 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %50, i32 0, i32 3
  %52 = load %struct.cdns3_request*, %struct.cdns3_request** %51, align 8
  %53 = icmp ne %struct.cdns3_request* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %42
  %55 = load i32, i32* @REQUEST_INTERNAL_CH, align 4
  %56 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %57 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %56, i32 0, i32 3
  %58 = load %struct.cdns3_request*, %struct.cdns3_request** %57, align 8
  %59 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %55
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %54, %42
  %63 = load i32, i32* @CDNS3_DESCMIS_BUF_SIZE, align 4
  %64 = load i32, i32* @GFP_ATOMIC, align 4
  %65 = call i32 @kzalloc(i32 %63, i32 %64)
  %66 = load %struct.cdns3_request*, %struct.cdns3_request** %3, align 8
  %67 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %70 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = load %struct.cdns3_request*, %struct.cdns3_request** %3, align 8
  %74 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %62
  %79 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %80 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %79, i32 0, i32 4
  %81 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %82 = call i32 @cdns3_gadget_ep_free_request(i32* %80, %struct.usb_request* %81)
  br label %99

83:                                               ; preds = %62
  %84 = load i32, i32* @CDNS3_DESCMIS_BUF_SIZE, align 4
  %85 = load %struct.cdns3_request*, %struct.cdns3_request** %3, align 8
  %86 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  %88 = load %struct.cdns3_request*, %struct.cdns3_request** %3, align 8
  %89 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %90 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %89, i32 0, i32 3
  store %struct.cdns3_request* %88, %struct.cdns3_request** %90, align 8
  %91 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %92 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %91, i32 0, i32 4
  %93 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %94 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %93, i32 0, i32 3
  %95 = load %struct.cdns3_request*, %struct.cdns3_request** %94, align 8
  %96 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %95, i32 0, i32 0
  %97 = load i32, i32* @GFP_ATOMIC, align 4
  %98 = call i32 @__cdns3_gadget_ep_queue(i32* %92, %struct.TYPE_4__* %96, i32 %97)
  br label %106

99:                                               ; preds = %78, %41
  %100 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %101 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %100, i32 0, i32 2
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dev_err(i32 %104, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %106

106:                                              ; preds = %99, %83
  ret void
}

declare dso_local i32 @trace_cdns3_wa2(%struct.cdns3_endpoint*, i8*) #1

declare dso_local i32 @cdns3_wa2_remove_old_request(%struct.cdns3_endpoint*) #1

declare dso_local %struct.usb_request* @cdns3_gadget_ep_alloc_request(i32*, i32) #1

declare dso_local %struct.cdns3_request* @to_cdns3_request(%struct.usb_request*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @cdns3_gadget_ep_free_request(i32*, %struct.usb_request*) #1

declare dso_local i32 @__cdns3_gadget_ep_queue(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
