; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_get_port_stat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_get_port_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_ep = type { %struct.ast_vhub* }
%struct.ast_vhub = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@AST_VHUB_NUM_PORTS = common dso_local global i64 0, align 8
@std_req_stall = common dso_local global i32 0, align 4
@USB_PORT_STAT_POWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c" port status=%04x change=%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ast_vhub_ep*, i64)* @ast_vhub_get_port_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_vhub_get_port_stat(%struct.ast_vhub_ep* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ast_vhub_ep*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ast_vhub*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ast_vhub_ep* %0, %struct.ast_vhub_ep** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %10 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %9, i32 0, i32 0
  %11 = load %struct.ast_vhub*, %struct.ast_vhub** %10, align 8
  store %struct.ast_vhub* %11, %struct.ast_vhub** %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @AST_VHUB_NUM_PORTS, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %2
  %19 = load i32, i32* @std_req_stall, align 4
  store i32 %19, i32* %3, align 4
  br label %54

20:                                               ; preds = %14
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %5, align 8
  %23 = load %struct.ast_vhub*, %struct.ast_vhub** %6, align 8
  %24 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.ast_vhub*, %struct.ast_vhub** %6, align 8
  %31 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @USB_PORT_STAT_POWER, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @EPDBG(%struct.ast_vhub_ep* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 255
  %47 = load i32, i32* %7, align 4
  %48 = ashr i32 %47, 8
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, 255
  %51 = load i32, i32* %8, align 4
  %52 = ashr i32 %51, 8
  %53 = call i32 @ast_vhub_simple_reply(%struct.ast_vhub_ep* %44, i32 %46, i32 %48, i32 %50, i32 %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %20, %18
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @EPDBG(%struct.ast_vhub_ep*, i8*, i32, i32) #1

declare dso_local i32 @ast_vhub_simple_reply(%struct.ast_vhub_ep*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
