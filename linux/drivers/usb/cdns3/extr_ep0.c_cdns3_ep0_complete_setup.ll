; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_ep0.c_cdns3_ep0_complete_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_ep0.c_cdns3_ep0_complete_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_device = type { %struct.TYPE_2__*, i32, %struct.cdns3_endpoint** }
%struct.TYPE_2__ = type { i32 }
%struct.cdns3_endpoint = type { i32 }
%struct.usb_request = type { i32 }

@EP_CMD_SSTALL = common dso_local global i32 0, align 4
@CDNS3_SETUP_STAGE = common dso_local global i32 0, align 4
@EP_CMD_ERDY = common dso_local global i32 0, align 4
@EP_CMD_REQ_CMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns3_device*, i64, i64)* @cdns3_ep0_complete_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns3_ep0_complete_setup(%struct.cdns3_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.cdns3_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cdns3_endpoint*, align 8
  %8 = alloca %struct.usb_request*, align 8
  store %struct.cdns3_device* %0, %struct.cdns3_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %10 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %9, i32 0, i32 2
  %11 = load %struct.cdns3_endpoint**, %struct.cdns3_endpoint*** %10, align 8
  %12 = getelementptr inbounds %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %11, i64 0
  %13 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %12, align 8
  store %struct.cdns3_endpoint* %13, %struct.cdns3_endpoint** %7, align 8
  %14 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %7, align 8
  %15 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %14, i32 0, i32 0
  %16 = call %struct.usb_request* @cdns3_next_request(i32* %15)
  store %struct.usb_request* %16, %struct.usb_request** %8, align 8
  %17 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %18 = icmp ne %struct.usb_request* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %21 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %20, i32 0, i32 0
  %22 = call i32 @list_del_init(i32* %21)
  br label %23

23:                                               ; preds = %19, %3
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %7, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @trace_cdns3_halt(%struct.cdns3_endpoint* %27, i64 %28, i32 0)
  %30 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %31 = call i32 @cdns3_select_ep(%struct.cdns3_device* %30, i32 0)
  %32 = load i32, i32* @EP_CMD_SSTALL, align 4
  %33 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %34 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @writel(i32 %32, i32* %36)
  br label %41

38:                                               ; preds = %23
  %39 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %40 = call i32 @cdns3_prepare_setup_packet(%struct.cdns3_device* %39)
  br label %41

41:                                               ; preds = %38, %26
  %42 = load i32, i32* @CDNS3_SETUP_STAGE, align 4
  %43 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %44 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @EP_CMD_ERDY, align 4
  br label %50

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = load i32, i32* @EP_CMD_REQ_CMPL, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %55 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @writel(i32 %53, i32* %57)
  %59 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %60 = call i32 @cdns3_allow_enable_l1(%struct.cdns3_device* %59, i32 1)
  ret void
}

declare dso_local %struct.usb_request* @cdns3_next_request(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @trace_cdns3_halt(%struct.cdns3_endpoint*, i64, i32) #1

declare dso_local i32 @cdns3_select_ep(%struct.cdns3_device*, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @cdns3_prepare_setup_packet(%struct.cdns3_device*) #1

declare dso_local i32 @cdns3_allow_enable_l1(%struct.cdns3_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
