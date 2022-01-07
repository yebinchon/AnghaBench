; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_hub_dev_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_hub_dev_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_ep = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"%s_FEATURE(dev val=%02x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@USB_DEVICE_REMOTE_WAKEUP = common dso_local global i64 0, align 8
@std_req_stall = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Hub remote wakeup %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@std_req_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ast_vhub_ep*, i64, i64, i32)* @ast_vhub_hub_dev_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_vhub_hub_dev_feature(%struct.ast_vhub_ep* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ast_vhub_ep*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ast_vhub_ep* %0, %struct.ast_vhub_ep** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %15 = load i64, i64* %8, align 8
  %16 = call i32 (%struct.ast_vhub_ep*, i8*, i8*, ...) @EPDBG(%struct.ast_vhub_ep* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %14, i64 %15)
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @USB_DEVICE_REMOTE_WAKEUP, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @std_req_stall, align 4
  store i32 %21, i32* %5, align 4
  br label %35

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %25 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  %28 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %33 = call i32 (%struct.ast_vhub_ep*, i8*, i8*, ...) @EPDBG(%struct.ast_vhub_ep* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @std_req_complete, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %22, %20
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @EPDBG(%struct.ast_vhub_ep*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
