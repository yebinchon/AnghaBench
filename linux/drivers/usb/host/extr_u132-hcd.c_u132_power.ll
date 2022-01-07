; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.u132 = type { i32 }
%struct.usb_hcd = type { i32 }

@HC_STATE_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.u132*, i32)* @u132_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u132_power(%struct.u132* %0, i32 %1) #0 {
  %3 = alloca %struct.u132*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  store %struct.u132* %0, %struct.u132** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.u132*, %struct.u132** %3, align 8
  %7 = call %struct.usb_hcd* @u132_to_hcd(%struct.u132* %6)
  store %struct.usb_hcd* %7, %struct.usb_hcd** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.u132*, %struct.u132** %3, align 8
  %12 = getelementptr inbounds %struct.u132, %struct.u132* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %25

16:                                               ; preds = %10
  %17 = load %struct.u132*, %struct.u132** %3, align 8
  %18 = getelementptr inbounds %struct.u132, %struct.u132* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load %struct.u132*, %struct.u132** %3, align 8
  %21 = getelementptr inbounds %struct.u132, %struct.u132* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* @HC_STATE_HALT, align 4
  %23 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %24 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %15, %19, %16
  ret void
}

declare dso_local %struct.usb_hcd* @u132_to_hcd(%struct.u132*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
