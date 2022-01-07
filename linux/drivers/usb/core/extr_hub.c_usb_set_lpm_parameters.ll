; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_usb_set_lpm_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_usb_set_lpm_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i32, i32, %struct.TYPE_10__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.usb_hub = type { i32 }

@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*)* @usb_set_lpm_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_set_lpm_parameters(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca %struct.usb_hub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %9 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %10 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %15 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @USB_SPEED_SUPER, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %1
  br label %129

20:                                               ; preds = %13
  %21 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 3
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = call %struct.usb_hub* @usb_hub_to_struct_hub(%struct.TYPE_10__* %23)
  store %struct.usb_hub* %24, %struct.usb_hub** %3, align 8
  %25 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %26 = icmp ne %struct.usb_hub* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %129

28:                                               ; preds = %20
  %29 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %30 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %29, i32 0, i32 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %5, align 4
  %36 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %37 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %45 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %44, i32 0, i32 3
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %7, align 4
  %53 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %54 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %53, i32 0, i32 3
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le16_to_cpu(i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %64 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %65 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %64, i32 0, i32 2
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %68 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %69 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %68, i32 0, i32 3
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @usb_set_lpm_mel(%struct.usb_device* %63, i32* %65, i32 %66, %struct.usb_hub* %67, i32* %71, i32 %72)
  %74 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %75 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %76 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %75, i32 0, i32 1
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %79 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %80 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %79, i32 0, i32 3
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @usb_set_lpm_mel(%struct.usb_device* %74, i32* %76, i32 %77, %struct.usb_hub* %78, i32* %82, i32 %83)
  store i32 1, i32* %4, align 4
  %85 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %86 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %87 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %86, i32 0, i32 2
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %90 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %91 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %90, i32 0, i32 3
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @usb_set_lpm_pel(%struct.usb_device* %85, i32* %87, i32 %88, %struct.usb_hub* %89, i32* %93, i32 %94, i32 %95)
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ugt i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %28
  %101 = load i32, i32* %8, align 4
  %102 = add i32 1, %101
  %103 = load i32, i32* %7, align 4
  %104 = sub i32 %102, %103
  store i32 %104, i32* %4, align 4
  br label %108

105:                                              ; preds = %28
  %106 = load i32, i32* %7, align 4
  %107 = add i32 1, %106
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %105, %100
  %109 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %110 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %111 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %110, i32 0, i32 1
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %114 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %115 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %114, i32 0, i32 3
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @usb_set_lpm_pel(%struct.usb_device* %109, i32* %111, i32 %112, %struct.usb_hub* %113, i32* %117, i32 %118, i32 %119)
  %121 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %122 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %123 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %122, i32 0, i32 2
  %124 = call i32 @usb_set_lpm_sel(%struct.usb_device* %121, i32* %123)
  %125 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %126 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %127 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %126, i32 0, i32 1
  %128 = call i32 @usb_set_lpm_sel(%struct.usb_device* %125, i32* %127)
  br label %129

129:                                              ; preds = %108, %27, %19
  ret void
}

declare dso_local %struct.usb_hub* @usb_hub_to_struct_hub(%struct.TYPE_10__*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_set_lpm_mel(%struct.usb_device*, i32*, i32, %struct.usb_hub*, i32*, i32) #1

declare dso_local i32 @usb_set_lpm_pel(%struct.usb_device*, i32*, i32, %struct.usb_hub*, i32*, i32, i32) #1

declare dso_local i32 @usb_set_lpm_sel(%struct.usb_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
