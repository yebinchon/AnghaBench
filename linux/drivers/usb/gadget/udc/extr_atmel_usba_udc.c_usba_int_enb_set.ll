; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_int_enb_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_int_enb_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usba_udc = type { i32 }

@INT_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usba_udc*, i32)* @usba_int_enb_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usba_int_enb_set(%struct.usba_udc* %0, i32 %1) #0 {
  %3 = alloca %struct.usba_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usba_udc* %0, %struct.usba_udc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %7 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %12 = load i32, i32* @INT_ENB, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @usba_writel(%struct.usba_udc* %11, i32 %12, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %17 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  ret void
}

declare dso_local i32 @usba_writel(%struct.usba_udc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
