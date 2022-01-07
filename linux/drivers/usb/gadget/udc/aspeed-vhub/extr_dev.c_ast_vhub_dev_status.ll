; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_dev_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_dev_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_dev = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"GET_STATUS(dev)\0A\00", align 1
@USB_DEVICE_SELF_POWERED = common dso_local global i32 0, align 4
@USB_DEVICE_REMOTE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ast_vhub_dev*, i32, i32)* @ast_vhub_dev_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_vhub_dev_status(%struct.ast_vhub_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ast_vhub_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ast_vhub_dev* %0, %struct.ast_vhub_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %4, align 8
  %9 = call i32 @DDBG(%struct.ast_vhub_dev* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %4, align 8
  %11 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @USB_DEVICE_SELF_POWERED, align 4
  %15 = shl i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %4, align 8
  %17 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* @USB_DEVICE_REMOTE_WAKEUP, align 4
  %22 = shl i32 1, %21
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %20, %3
  %26 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %4, align 8
  %27 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @ast_vhub_simple_reply(i32* %27, i32 %28, i32 0)
  ret i32 %29
}

declare dso_local i32 @DDBG(%struct.ast_vhub_dev*, i8*) #1

declare dso_local i32 @ast_vhub_simple_reply(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
