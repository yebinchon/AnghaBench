; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_set_port_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_set_port_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_ep = type { %struct.ast_vhub* }
%struct.ast_vhub = type { %struct.ast_vhub_port* }
%struct.ast_vhub_port = type { i32, i32, i32 }

@AST_VHUB_NUM_PORTS = common dso_local global i64 0, align 8
@std_req_stall = common dso_local global i32 0, align 4
@USB_PORT_STAT_ENABLE = common dso_local global i32 0, align 4
@std_req_complete = common dso_local global i32 0, align 4
@USB_PORT_STAT_SUSPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Port reset !\0A\00", align 1
@USB_PORT_STAT_CONNECTION = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_CONNECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ast_vhub_ep*, i64, i32)* @ast_vhub_set_port_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_vhub_set_port_feature(%struct.ast_vhub_ep* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ast_vhub_ep*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ast_vhub*, align 8
  %9 = alloca %struct.ast_vhub_port*, align 8
  store %struct.ast_vhub_ep* %0, %struct.ast_vhub_ep** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %5, align 8
  %11 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %10, i32 0, i32 0
  %12 = load %struct.ast_vhub*, %struct.ast_vhub** %11, align 8
  store %struct.ast_vhub* %12, %struct.ast_vhub** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @AST_VHUB_NUM_PORTS, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %3
  %20 = load i32, i32* @std_req_stall, align 4
  store i32 %20, i32* %4, align 4
  br label %77

21:                                               ; preds = %15
  %22 = load i64, i64* %6, align 8
  %23 = add i64 %22, -1
  store i64 %23, i64* %6, align 8
  %24 = load %struct.ast_vhub*, %struct.ast_vhub** %8, align 8
  %25 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %24, i32 0, i32 0
  %26 = load %struct.ast_vhub_port*, %struct.ast_vhub_port** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.ast_vhub_port, %struct.ast_vhub_port* %26, i64 %27
  store %struct.ast_vhub_port* %28, %struct.ast_vhub_port** %9, align 8
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %75 [
    i32 129, label %30
    i32 130, label %48
    i32 131, label %55
    i32 128, label %73
    i32 132, label %73
  ]

30:                                               ; preds = %21
  %31 = load %struct.ast_vhub_port*, %struct.ast_vhub_port** %9, align 8
  %32 = getelementptr inbounds %struct.ast_vhub_port, %struct.ast_vhub_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @USB_PORT_STAT_ENABLE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @std_req_complete, align 4
  store i32 %38, i32* %4, align 4
  br label %77

39:                                               ; preds = %30
  %40 = load %struct.ast_vhub*, %struct.ast_vhub** %8, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i32, i32* @USB_PORT_STAT_SUSPEND, align 4
  %43 = call i32 @ast_vhub_change_port_stat(%struct.ast_vhub* %40, i64 %41, i32 0, i32 %42, i32 0)
  %44 = load %struct.ast_vhub_port*, %struct.ast_vhub_port** %9, align 8
  %45 = getelementptr inbounds %struct.ast_vhub_port, %struct.ast_vhub_port* %44, i32 0, i32 2
  %46 = call i32 @ast_vhub_dev_suspend(i32* %45)
  %47 = load i32, i32* @std_req_complete, align 4
  store i32 %47, i32* %4, align 4
  br label %77

48:                                               ; preds = %21
  %49 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %5, align 8
  %50 = call i32 @EPDBG(%struct.ast_vhub_ep* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.ast_vhub*, %struct.ast_vhub** %8, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @ast_vhub_port_reset(%struct.ast_vhub* %51, i64 %52)
  %54 = load i32, i32* @std_req_complete, align 4
  store i32 %54, i32* %4, align 4
  br label %77

55:                                               ; preds = %21
  %56 = load %struct.ast_vhub_port*, %struct.ast_vhub_port** %9, align 8
  %57 = getelementptr inbounds %struct.ast_vhub_port, %struct.ast_vhub_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %64 = load %struct.ast_vhub_port*, %struct.ast_vhub_port** %9, align 8
  %65 = getelementptr inbounds %struct.ast_vhub_port, %struct.ast_vhub_port* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.ast_vhub*, %struct.ast_vhub** %8, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @ast_vhub_update_hub_ep1(%struct.ast_vhub* %68, i64 %69)
  br label %71

71:                                               ; preds = %62, %55
  %72 = load i32, i32* @std_req_complete, align 4
  store i32 %72, i32* %4, align 4
  br label %77

73:                                               ; preds = %21, %21
  %74 = load i32, i32* @std_req_complete, align 4
  store i32 %74, i32* %4, align 4
  br label %77

75:                                               ; preds = %21
  %76 = load i32, i32* @std_req_stall, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %73, %71, %48, %39, %37, %19
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @ast_vhub_change_port_stat(%struct.ast_vhub*, i64, i32, i32, i32) #1

declare dso_local i32 @ast_vhub_dev_suspend(i32*) #1

declare dso_local i32 @EPDBG(%struct.ast_vhub_ep*, i8*) #1

declare dso_local i32 @ast_vhub_port_reset(%struct.ast_vhub*, i64) #1

declare dso_local i32 @ast_vhub_update_hub_ep1(%struct.ast_vhub*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
