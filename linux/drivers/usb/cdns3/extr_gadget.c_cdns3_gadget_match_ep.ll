; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_gadget_match_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_gadget_match_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { %struct.usb_endpoint_descriptor* }
%struct.usb_gadget = type { i32 }
%struct.usb_endpoint_descriptor = type { i64 }
%struct.usb_ss_ep_comp_descriptor = type { i32 }
%struct.cdns3_device = type { i32, i32 }
%struct.cdns3_endpoint = type { %struct.usb_ep, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"no available ep\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"match endpoint: %s\0A\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@EP_CLAIMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_ep* (%struct.usb_gadget*, %struct.usb_endpoint_descriptor*, %struct.usb_ss_ep_comp_descriptor*)* @cdns3_gadget_match_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_ep* @cdns3_gadget_match_ep(%struct.usb_gadget* %0, %struct.usb_endpoint_descriptor* %1, %struct.usb_ss_ep_comp_descriptor* %2) #0 {
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca %struct.usb_gadget*, align 8
  %6 = alloca %struct.usb_endpoint_descriptor*, align 8
  %7 = alloca %struct.usb_ss_ep_comp_descriptor*, align 8
  %8 = alloca %struct.cdns3_device*, align 8
  %9 = alloca %struct.cdns3_endpoint*, align 8
  %10 = alloca i64, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %5, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %6, align 8
  store %struct.usb_ss_ep_comp_descriptor* %2, %struct.usb_ss_ep_comp_descriptor** %7, align 8
  %11 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %12 = call %struct.cdns3_device* @gadget_to_cdns3_device(%struct.usb_gadget* %11)
  store %struct.cdns3_device* %12, %struct.cdns3_device** %8, align 8
  %13 = load %struct.cdns3_device*, %struct.cdns3_device** %8, align 8
  %14 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %15 = call %struct.cdns3_endpoint* @cdns3_find_available_ep(%struct.cdns3_device* %13, %struct.usb_endpoint_descriptor* %14)
  store %struct.cdns3_endpoint* %15, %struct.cdns3_endpoint** %9, align 8
  %16 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %9, align 8
  %17 = call i64 @IS_ERR(%struct.cdns3_endpoint* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.cdns3_device*, %struct.cdns3_device** %8, align 8
  %21 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store %struct.usb_ep* null, %struct.usb_ep** %4, align 8
  br label %81

24:                                               ; preds = %3
  %25 = load %struct.cdns3_device*, %struct.cdns3_device** %8, align 8
  %26 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %9, align 8
  %29 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.cdns3_device*, %struct.cdns3_device** %8, align 8
  %33 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %32, i32 0, i32 0
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %37 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %9, align 8
  %38 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %38, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %36, %struct.usb_endpoint_descriptor** %39, align 8
  %40 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %41 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %24
  %44 = load i32, i32* @USB_DIR_IN, align 4
  br label %47

45:                                               ; preds = %24
  %46 = load i32, i32* @USB_DIR_OUT, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %9, align 8
  %50 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %52 = call i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %51)
  %53 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %9, align 8
  %54 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @EP_CLAIMED, align 4
  %56 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %9, align 8
  %57 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %61 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %47
  %65 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %66 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %67, 1
  %69 = call i32 @BIT(i64 %68)
  br label %71

70:                                               ; preds = %47
  br label %71

71:                                               ; preds = %70, %64
  %72 = phi i32 [ %69, %64 ], [ 0, %70 ]
  %73 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %9, align 8
  %74 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.cdns3_device*, %struct.cdns3_device** %8, align 8
  %76 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %75, i32 0, i32 0
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %9, align 8
  %80 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %79, i32 0, i32 0
  store %struct.usb_ep* %80, %struct.usb_ep** %4, align 8
  br label %81

81:                                               ; preds = %71, %19
  %82 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  ret %struct.usb_ep* %82
}

declare dso_local %struct.cdns3_device* @gadget_to_cdns3_device(%struct.usb_gadget*) #1

declare dso_local %struct.cdns3_endpoint* @cdns3_find_available_ep(%struct.cdns3_device*, %struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @IS_ERR(%struct.cdns3_endpoint*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
