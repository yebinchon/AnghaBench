; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_toggle_bias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_toggle_bias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usba_udc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.usba_udc*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usba_udc*, i32)* @toggle_bias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toggle_bias(%struct.usba_udc* %0, i32 %1) #0 {
  %3 = alloca %struct.usba_udc*, align 8
  %4 = alloca i32, align 4
  store %struct.usba_udc* %0, %struct.usba_udc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %6 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %11 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.usba_udc*, i32)*, i32 (%struct.usba_udc*, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.usba_udc*, i32)* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %18 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.usba_udc*, i32)*, i32 (%struct.usba_udc*, i32)** %20, align 8
  %22 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 %21(%struct.usba_udc* %22, i32 %23)
  br label %25

25:                                               ; preds = %16, %9, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
