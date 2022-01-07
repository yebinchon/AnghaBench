; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_udc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_udc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.ast_vhub_dev = type { %struct.TYPE_3__*, i64, %struct.TYPE_4__, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"stop\0A\00", align 1
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*)* @ast_vhub_udc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_vhub_udc_stop(%struct.usb_gadget* %0) #0 {
  %2 = alloca %struct.usb_gadget*, align 8
  %3 = alloca %struct.ast_vhub_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %2, align 8
  %5 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %6 = call %struct.ast_vhub_dev* @to_ast_dev(%struct.usb_gadget* %5)
  store %struct.ast_vhub_dev* %6, %struct.ast_vhub_dev** %3, align 8
  %7 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %3, align 8
  %8 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %3, align 8
  %14 = call i32 @DDBG(%struct.ast_vhub_dev* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %3, align 8
  %16 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %15, i32 0, i32 3
  store i32* null, i32** %16, align 8
  %17 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %18 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %3, align 8
  %19 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %3, align 8
  %22 = call i32 @ast_vhub_dev_nuke(%struct.ast_vhub_dev* %21)
  %23 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %3, align 8
  %24 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %3, align 8
  %29 = call i32 @ast_vhub_dev_disable(%struct.ast_vhub_dev* %28)
  br label %30

30:                                               ; preds = %27, %1
  %31 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %3, align 8
  %32 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  ret i32 0
}

declare dso_local %struct.ast_vhub_dev* @to_ast_dev(%struct.usb_gadget*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DDBG(%struct.ast_vhub_dev*, i8*) #1

declare dso_local i32 @ast_vhub_dev_nuke(%struct.ast_vhub_dev*) #1

declare dso_local i32 @ast_vhub_dev_disable(%struct.ast_vhub_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
