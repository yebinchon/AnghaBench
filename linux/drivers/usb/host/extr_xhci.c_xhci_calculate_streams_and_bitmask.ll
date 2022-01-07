; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_calculate_streams_and_bitmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_calculate_streams_and_bitmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.usb_device = type { i32 }
%struct.usb_host_endpoint = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Ep 0x%x only supports %u stream IDs.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32*, i32*)* @xhci_calculate_streams_and_bitmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_calculate_streams_and_bitmask(%struct.xhci_hcd* %0, %struct.usb_device* %1, %struct.usb_host_endpoint** %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xhci_hcd*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca %struct.usb_host_endpoint**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %8, align 8
  store %struct.usb_device* %1, %struct.usb_device** %9, align 8
  store %struct.usb_host_endpoint** %2, %struct.usb_host_endpoint*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %16, align 4
  br label %18

18:                                               ; preds = %87, %6
  %19 = load i32, i32* %16, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %90

22:                                               ; preds = %18
  %23 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %24 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %25 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %10, align 8
  %26 = load i32, i32* %16, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %25, i64 %27
  %29 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %28, align 8
  %30 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %31 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @xhci_check_streams_endpoint(%struct.xhci_hcd* %23, %struct.usb_device* %24, %struct.usb_host_endpoint* %29, i32 %32)
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i32, i32* %17, align 4
  store i32 %37, i32* %7, align 4
  br label %91

38:                                               ; preds = %22
  %39 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %10, align 8
  %40 = load i32, i32* %16, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %39, i64 %41
  %43 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %42, align 8
  %44 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %43, i32 0, i32 1
  %45 = call i32 @usb_ss_max_streams(i32* %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %47, align 4
  %49 = sub i32 %48, 1
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %38
  %52 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %53 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %10, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %53, i64 %55
  %57 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %56, align 8
  %58 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @xhci_dbg(%struct.xhci_hcd* %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load i32, i32* %14, align 4
  %64 = add i32 %63, 1
  %65 = load i32*, i32** %12, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %51, %38
  %67 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %10, align 8
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %67, i64 %69
  %71 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %70, align 8
  %72 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %71, i32 0, i32 0
  %73 = call i32 @xhci_get_endpoint_flag(%struct.TYPE_2__* %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32*, i32** %13, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %15, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %66
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  br label %91

82:                                               ; preds = %66
  %83 = load i32, i32* %15, align 4
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %83
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %16, align 4
  br label %18

90:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %90, %79, %36
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32 @xhci_check_streams_endpoint(%struct.xhci_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*, i32) #1

declare dso_local i32 @usb_ss_max_streams(i32*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i32, i32) #1

declare dso_local i32 @xhci_get_endpoint_flag(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
