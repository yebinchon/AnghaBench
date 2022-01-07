; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-rcar.c_xhci_rcar_is_gen2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-rcar.c_xhci_rcar_is_gen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"renesas,xhci-r8a7790\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"renesas,xhci-r8a7791\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"renesas,xhci-r8a7793\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"renesas,rcar-gen2-xhci\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @xhci_rcar_is_gen2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_rcar_is_gen2(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0
  %6 = load %struct.device_node*, %struct.device_node** %5, align 8
  store %struct.device_node* %6, %struct.device_node** %3, align 8
  %7 = load %struct.device_node*, %struct.device_node** %3, align 8
  %8 = call i64 @of_device_is_compatible(%struct.device_node* %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = load %struct.device_node*, %struct.device_node** %3, align 8
  %12 = call i64 @of_device_is_compatible(%struct.device_node* %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = load %struct.device_node*, %struct.device_node** %3, align 8
  %16 = call i64 @of_device_is_compatible(%struct.device_node* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load %struct.device_node*, %struct.device_node** %3, align 8
  %20 = call i64 @of_device_is_compatible(%struct.device_node* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %18, %14, %10, %1
  %23 = phi i1 [ true, %14 ], [ true, %10 ], [ true, %1 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
