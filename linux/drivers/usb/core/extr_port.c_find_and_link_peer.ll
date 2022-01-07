; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_port.c_find_and_link_peer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_port.c_find_and_link_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { %struct.usb_port**, %struct.usb_device* }
%struct.usb_port = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.usb_device* }
%struct.usb_device = type { i32, i32, %struct.usb_device*, i32 }
%struct.usb_hcd = type { %struct.TYPE_3__, %struct.usb_hcd* }
%struct.TYPE_3__ = type { %struct.usb_device* }

@match_location = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hub*, i32)* @find_and_link_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_and_link_peer(%struct.usb_hub* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_hub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_port*, align 8
  %6 = alloca %struct.usb_port*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.usb_hub*, align 8
  %10 = alloca %struct.usb_hcd*, align 8
  %11 = alloca %struct.usb_hcd*, align 8
  %12 = alloca %struct.usb_port*, align 8
  %13 = alloca %struct.usb_device*, align 8
  %14 = alloca %struct.usb_hub*, align 8
  store %struct.usb_hub* %0, %struct.usb_hub** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %16 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %15, i32 0, i32 0
  %17 = load %struct.usb_port**, %struct.usb_port*** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.usb_port*, %struct.usb_port** %17, i64 %20
  %22 = load %struct.usb_port*, %struct.usb_port** %21, align 8
  store %struct.usb_port* %22, %struct.usb_port** %5, align 8
  %23 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %24 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %23, i32 0, i32 1
  %25 = load %struct.usb_device*, %struct.usb_device** %24, align 8
  store %struct.usb_device* %25, %struct.usb_device** %7, align 8
  %26 = load %struct.usb_port*, %struct.usb_port** %5, align 8
  %27 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.usb_port*, %struct.usb_port** %5, align 8
  %32 = load i32, i32* @match_location, align 4
  %33 = call i32 @usb_for_each_dev(%struct.usb_port* %31, i32 %32)
  br label %122

34:                                               ; preds = %2
  %35 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %36 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %35, i32 0, i32 2
  %37 = load %struct.usb_device*, %struct.usb_device** %36, align 8
  %38 = icmp ne %struct.usb_device* %37, null
  br i1 %38, label %55, label %39

39:                                               ; preds = %34
  %40 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %41 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.usb_hcd* @bus_to_hcd(i32 %42)
  store %struct.usb_hcd* %43, %struct.usb_hcd** %10, align 8
  %44 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %45 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %44, i32 0, i32 1
  %46 = load %struct.usb_hcd*, %struct.usb_hcd** %45, align 8
  store %struct.usb_hcd* %46, %struct.usb_hcd** %11, align 8
  %47 = load %struct.usb_hcd*, %struct.usb_hcd** %11, align 8
  %48 = icmp ne %struct.usb_hcd* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %39
  br label %122

50:                                               ; preds = %39
  %51 = load %struct.usb_hcd*, %struct.usb_hcd** %11, align 8
  %52 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.usb_device*, %struct.usb_device** %53, align 8
  store %struct.usb_device* %54, %struct.usb_device** %8, align 8
  br label %89

55:                                               ; preds = %34
  %56 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %57 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %56, i32 0, i32 2
  %58 = load %struct.usb_device*, %struct.usb_device** %57, align 8
  store %struct.usb_device* %58, %struct.usb_device** %13, align 8
  %59 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %60 = call %struct.usb_hub* @usb_hub_to_struct_hub(%struct.usb_device* %59)
  store %struct.usb_hub* %60, %struct.usb_hub** %14, align 8
  %61 = load %struct.usb_hub*, %struct.usb_hub** %14, align 8
  %62 = icmp ne %struct.usb_hub* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %55
  br label %122

64:                                               ; preds = %55
  %65 = load %struct.usb_hub*, %struct.usb_hub** %14, align 8
  %66 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %65, i32 0, i32 0
  %67 = load %struct.usb_port**, %struct.usb_port*** %66, align 8
  %68 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %69 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.usb_port*, %struct.usb_port** %67, i64 %72
  %74 = load %struct.usb_port*, %struct.usb_port** %73, align 8
  store %struct.usb_port* %74, %struct.usb_port** %12, align 8
  %75 = load %struct.usb_port*, %struct.usb_port** %12, align 8
  %76 = icmp ne %struct.usb_port* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %64
  %78 = load %struct.usb_port*, %struct.usb_port** %12, align 8
  %79 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = icmp ne %struct.TYPE_4__* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %77, %64
  br label %122

83:                                               ; preds = %77
  %84 = load %struct.usb_port*, %struct.usb_port** %12, align 8
  %85 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.usb_device*, %struct.usb_device** %87, align 8
  store %struct.usb_device* %88, %struct.usb_device** %8, align 8
  br label %89

89:                                               ; preds = %83, %50
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %92 = call %struct.usb_hub* @usb_hub_to_struct_hub(%struct.usb_device* %91)
  store %struct.usb_hub* %92, %struct.usb_hub** %9, align 8
  %93 = load %struct.usb_hub*, %struct.usb_hub** %9, align 8
  %94 = icmp ne %struct.usb_hub* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %98 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95, %90
  br label %122

102:                                              ; preds = %95
  %103 = load %struct.usb_hub*, %struct.usb_hub** %9, align 8
  %104 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %103, i32 0, i32 0
  %105 = load %struct.usb_port**, %struct.usb_port*** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.usb_port*, %struct.usb_port** %105, i64 %108
  %110 = load %struct.usb_port*, %struct.usb_port** %109, align 8
  store %struct.usb_port* %110, %struct.usb_port** %6, align 8
  %111 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %112 = icmp ne %struct.usb_port* %111, null
  br i1 %112, label %113, label %122

113:                                              ; preds = %102
  %114 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %115 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load %struct.usb_port*, %struct.usb_port** %5, align 8
  %120 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %121 = call i32 @link_peers_report(%struct.usb_port* %119, %struct.usb_port* %120)
  br label %122

122:                                              ; preds = %30, %49, %63, %82, %101, %118, %113, %102
  ret void
}

declare dso_local i32 @usb_for_each_dev(%struct.usb_port*, i32) #1

declare dso_local %struct.usb_hcd* @bus_to_hcd(i32) #1

declare dso_local %struct.usb_hub* @usb_hub_to_struct_hub(%struct.usb_device*) #1

declare dso_local i32 @link_peers_report(%struct.usb_port*, %struct.usb_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
