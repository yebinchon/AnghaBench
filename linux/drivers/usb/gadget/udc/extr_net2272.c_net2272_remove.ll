; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2272 = type { i32, i32, i32, i32 }

@dev_attr_registers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unbind\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net2272*)* @net2272_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net2272_remove(%struct.net2272* %0) #0 {
  %2 = alloca %struct.net2272*, align 8
  store %struct.net2272* %0, %struct.net2272** %2, align 8
  %3 = load %struct.net2272*, %struct.net2272** %2, align 8
  %4 = getelementptr inbounds %struct.net2272, %struct.net2272* %3, i32 0, i32 3
  %5 = call i32 @usb_del_gadget_udc(i32* %4)
  %6 = load %struct.net2272*, %struct.net2272** %2, align 8
  %7 = getelementptr inbounds %struct.net2272, %struct.net2272* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.net2272*, %struct.net2272** %2, align 8
  %10 = call i32 @free_irq(i32 %8, %struct.net2272* %9)
  %11 = load %struct.net2272*, %struct.net2272** %2, align 8
  %12 = getelementptr inbounds %struct.net2272, %struct.net2272* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @iounmap(i32 %13)
  %15 = load %struct.net2272*, %struct.net2272** %2, align 8
  %16 = getelementptr inbounds %struct.net2272, %struct.net2272* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @device_remove_file(i32 %17, i32* @dev_attr_registers)
  %19 = load %struct.net2272*, %struct.net2272** %2, align 8
  %20 = getelementptr inbounds %struct.net2272, %struct.net2272* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_info(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @usb_del_gadget_udc(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.net2272*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @device_remove_file(i32, i32*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
