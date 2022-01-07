; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_udc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_udc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usb_gadget_driver = type { i32 }
%struct.ast_vhub_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__, %struct.usb_gadget_driver* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"start\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)* @ast_vhub_udc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_vhub_udc_start(%struct.usb_gadget* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca %struct.usb_gadget_driver*, align 8
  %5 = alloca %struct.ast_vhub_dev*, align 8
  %6 = alloca i64, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %4, align 8
  %7 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %8 = call %struct.ast_vhub_dev* @to_ast_dev(%struct.usb_gadget* %7)
  store %struct.ast_vhub_dev* %8, %struct.ast_vhub_dev** %5, align 8
  %9 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %5, align 8
  %10 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %5, align 8
  %16 = call i32 @DDBG(%struct.ast_vhub_dev* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %18 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %5, align 8
  %19 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %18, i32 0, i32 2
  store %struct.usb_gadget_driver* %17, %struct.usb_gadget_driver** %19, align 8
  %20 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %5, align 8
  %21 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %5, align 8
  %24 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  ret i32 0
}

declare dso_local %struct.ast_vhub_dev* @to_ast_dev(%struct.usb_gadget*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DDBG(%struct.ast_vhub_dev*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
