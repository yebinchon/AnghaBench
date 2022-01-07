; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_wa2_gadget_giveback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_wa2_gadget_giveback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_request = type { i64, i64, i32, i32 }
%struct.cdns3_device = type { i32 }
%struct.cdns3_endpoint = type { i32, i32*, i32 }
%struct.cdns3_request = type { i32, %struct.usb_request }

@EP_QUIRK_EXTRA_BUF_EN = common dso_local global i32 0, align 4
@REQUEST_INTERNAL = common dso_local global i32 0, align 4
@EP_QUIRK_END_TRANSFER = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_request* @cdns3_wa2_gadget_giveback(%struct.cdns3_device* %0, %struct.cdns3_endpoint* %1, %struct.cdns3_request* %2) #0 {
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.cdns3_device*, align 8
  %6 = alloca %struct.cdns3_endpoint*, align 8
  %7 = alloca %struct.cdns3_request*, align 8
  %8 = alloca %struct.usb_request*, align 8
  store %struct.cdns3_device* %0, %struct.cdns3_device** %5, align 8
  store %struct.cdns3_endpoint* %1, %struct.cdns3_endpoint** %6, align 8
  store %struct.cdns3_request* %2, %struct.cdns3_request** %7, align 8
  %9 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %10 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @EP_QUIRK_EXTRA_BUF_EN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %68

15:                                               ; preds = %3
  %16 = load %struct.cdns3_request*, %struct.cdns3_request** %7, align 8
  %17 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @REQUEST_INTERNAL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %68

22:                                               ; preds = %15
  %23 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %24 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %23, i32 0, i32 2
  %25 = call %struct.usb_request* @cdns3_next_request(i32* %24)
  store %struct.usb_request* %25, %struct.usb_request** %8, align 8
  %26 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %27 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %29 = icmp ne %struct.usb_request* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  store %struct.usb_request* null, %struct.usb_request** %4, align 8
  br label %71

31:                                               ; preds = %22
  %32 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %33 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %34 = call i32 @cdns3_wa2_descmiss_copy_data(%struct.cdns3_endpoint* %32, %struct.usb_request* %33)
  %35 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %36 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @EP_QUIRK_END_TRANSFER, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %31
  %42 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %43 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %46 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store %struct.usb_request* null, %struct.usb_request** %4, align 8
  br label %71

50:                                               ; preds = %41, %31
  %51 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %52 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @EINPROGRESS, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %59 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %58, i32 0, i32 3
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %50
  %61 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %62 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %61, i32 0, i32 2
  %63 = call i32 @list_del_init(i32* %62)
  %64 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %65 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %66 = call i32 @cdns3_start_all_request(%struct.cdns3_device* %64, %struct.cdns3_endpoint* %65)
  %67 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  store %struct.usb_request* %67, %struct.usb_request** %4, align 8
  br label %71

68:                                               ; preds = %15, %3
  %69 = load %struct.cdns3_request*, %struct.cdns3_request** %7, align 8
  %70 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %69, i32 0, i32 1
  store %struct.usb_request* %70, %struct.usb_request** %4, align 8
  br label %71

71:                                               ; preds = %68, %60, %49, %30
  %72 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  ret %struct.usb_request* %72
}

declare dso_local %struct.usb_request* @cdns3_next_request(i32*) #1

declare dso_local i32 @cdns3_wa2_descmiss_copy_data(%struct.cdns3_endpoint*, %struct.usb_request*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @cdns3_start_all_request(%struct.cdns3_device*, %struct.cdns3_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
