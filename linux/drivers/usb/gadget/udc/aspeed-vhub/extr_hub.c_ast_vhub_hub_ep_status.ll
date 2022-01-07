; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_hub_ep_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_hub_ep_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_ep = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"GET_STATUS(ep%d)\0A\00", align 1
@USB_ENDPOINT_HALT = common dso_local global i32 0, align 4
@std_req_stall = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ast_vhub_ep*, i32, i32)* @ast_vhub_hub_ep_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_vhub_hub_ep_status(%struct.ast_vhub_ep* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ast_vhub_ep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ast_vhub_ep* %0, %struct.ast_vhub_ep** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %5, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @EPDBG(%struct.ast_vhub_ep* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  %19 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %5, align 8
  %20 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i32, i32* @USB_ENDPOINT_HALT, align 4
  %27 = shl i32 1, %26
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %25, %18
  br label %37

31:                                               ; preds = %3
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @std_req_stall, align 4
  store i32 %35, i32* %4, align 4
  br label %41

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %30
  %38 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @ast_vhub_simple_reply(%struct.ast_vhub_ep* %38, i32 %39, i32 0)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @EPDBG(%struct.ast_vhub_ep*, i8*, i32) #1

declare dso_local i32 @ast_vhub_simple_reply(%struct.ast_vhub_ep*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
