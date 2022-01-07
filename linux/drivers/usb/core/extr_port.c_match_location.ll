; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_port.c_match_location.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_port.c_match_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, i32 }
%struct.usb_hcd = type { %struct.usb_hcd* }
%struct.usb_port = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.usb_hub = type { %struct.usb_port** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i8*)* @match_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_location(%struct.usb_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_hcd*, align 8
  %8 = alloca %struct.usb_hcd*, align 8
  %9 = alloca %struct.usb_port*, align 8
  %10 = alloca %struct.usb_port*, align 8
  %11 = alloca %struct.usb_hub*, align 8
  %12 = alloca %struct.usb_device*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.usb_port*
  store %struct.usb_port* %14, %struct.usb_port** %9, align 8
  %15 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %16 = call %struct.usb_hub* @usb_hub_to_struct_hub(%struct.usb_device* %15)
  store %struct.usb_hub* %16, %struct.usb_hub** %11, align 8
  %17 = load %struct.usb_port*, %struct.usb_port** %9, align 8
  %18 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.usb_device* @to_usb_device(i32 %22)
  store %struct.usb_device* %23, %struct.usb_device** %12, align 8
  %24 = load %struct.usb_hub*, %struct.usb_hub** %11, align 8
  %25 = icmp ne %struct.usb_hub* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

27:                                               ; preds = %2
  %28 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.usb_hcd* @bus_to_hcd(i32 %30)
  store %struct.usb_hcd* %31, %struct.usb_hcd** %7, align 8
  %32 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %33 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.usb_hcd* @bus_to_hcd(i32 %34)
  store %struct.usb_hcd* %35, %struct.usb_hcd** %8, align 8
  %36 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %37 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %38 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %37, i32 0, i32 0
  %39 = load %struct.usb_hcd*, %struct.usb_hcd** %38, align 8
  %40 = icmp ne %struct.usb_hcd* %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %77

42:                                               ; preds = %27
  store i32 1, i32* %6, align 4
  br label %43

43:                                               ; preds = %73, %42
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %46 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sle i32 %44, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %43
  %50 = load %struct.usb_hub*, %struct.usb_hub** %11, align 8
  %51 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %50, i32 0, i32 0
  %52 = load %struct.usb_port**, %struct.usb_port*** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.usb_port*, %struct.usb_port** %52, i64 %55
  %57 = load %struct.usb_port*, %struct.usb_port** %56, align 8
  store %struct.usb_port* %57, %struct.usb_port** %10, align 8
  %58 = load %struct.usb_port*, %struct.usb_port** %10, align 8
  %59 = icmp ne %struct.usb_port* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %49
  %61 = load %struct.usb_port*, %struct.usb_port** %10, align 8
  %62 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.usb_port*, %struct.usb_port** %9, align 8
  %65 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load %struct.usb_port*, %struct.usb_port** %9, align 8
  %70 = load %struct.usb_port*, %struct.usb_port** %10, align 8
  %71 = call i32 @link_peers_report(%struct.usb_port* %69, %struct.usb_port* %70)
  store i32 1, i32* %3, align 4
  br label %77

72:                                               ; preds = %60, %49
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %43

76:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %68, %41, %26
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.usb_hub* @usb_hub_to_struct_hub(%struct.usb_device*) #1

declare dso_local %struct.usb_device* @to_usb_device(i32) #1

declare dso_local %struct.usb_hcd* @bus_to_hcd(i32) #1

declare dso_local i32 @link_peers_report(%struct.usb_port*, %struct.usb_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
