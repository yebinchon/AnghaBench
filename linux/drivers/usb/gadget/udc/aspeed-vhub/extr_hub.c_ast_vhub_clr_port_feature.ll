; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_clr_port_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_clr_port_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_ep = type { %struct.ast_vhub* }
%struct.ast_vhub = type { %struct.ast_vhub_port* }
%struct.ast_vhub_port = type { i32, i32, i32 }

@AST_VHUB_NUM_PORTS = common dso_local global i64 0, align 8
@std_req_stall = common dso_local global i32 0, align 4
@USB_PORT_STAT_ENABLE = common dso_local global i32 0, align 4
@USB_PORT_STAT_SUSPEND = common dso_local global i32 0, align 4
@std_req_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ast_vhub_ep*, i64, i32)* @ast_vhub_clr_port_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_vhub_clr_port_feature(%struct.ast_vhub_ep* %0, i64 %1, i32 %2) #0 {
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
  br label %78

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
  switch i32 %29, label %76 [
    i32 131, label %30
    i32 128, label %41
    i32 129, label %59
    i32 130, label %61
    i32 136, label %63
    i32 135, label %63
    i32 132, label %63
    i32 134, label %63
    i32 133, label %63
  ]

30:                                               ; preds = %21
  %31 = load %struct.ast_vhub*, %struct.ast_vhub** %8, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* @USB_PORT_STAT_ENABLE, align 4
  %34 = load i32, i32* @USB_PORT_STAT_SUSPEND, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @ast_vhub_change_port_stat(%struct.ast_vhub* %31, i64 %32, i32 %35, i32 0, i32 0)
  %37 = load %struct.ast_vhub_port*, %struct.ast_vhub_port** %9, align 8
  %38 = getelementptr inbounds %struct.ast_vhub_port, %struct.ast_vhub_port* %37, i32 0, i32 2
  %39 = call i32 @ast_vhub_dev_suspend(i32* %38)
  %40 = load i32, i32* @std_req_complete, align 4
  store i32 %40, i32* %4, align 4
  br label %78

41:                                               ; preds = %21
  %42 = load %struct.ast_vhub_port*, %struct.ast_vhub_port** %9, align 8
  %43 = getelementptr inbounds %struct.ast_vhub_port, %struct.ast_vhub_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @USB_PORT_STAT_SUSPEND, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @std_req_complete, align 4
  store i32 %49, i32* %4, align 4
  br label %78

50:                                               ; preds = %41
  %51 = load %struct.ast_vhub*, %struct.ast_vhub** %8, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i32, i32* @USB_PORT_STAT_SUSPEND, align 4
  %54 = call i32 @ast_vhub_change_port_stat(%struct.ast_vhub* %51, i64 %52, i32 %53, i32 0, i32 0)
  %55 = load %struct.ast_vhub_port*, %struct.ast_vhub_port** %9, align 8
  %56 = getelementptr inbounds %struct.ast_vhub_port, %struct.ast_vhub_port* %55, i32 0, i32 2
  %57 = call i32 @ast_vhub_dev_resume(i32* %56)
  %58 = load i32, i32* @std_req_complete, align 4
  store i32 %58, i32* %4, align 4
  br label %78

59:                                               ; preds = %21
  %60 = load i32, i32* @std_req_complete, align 4
  store i32 %60, i32* %4, align 4
  br label %78

61:                                               ; preds = %21
  %62 = load i32, i32* @std_req_complete, align 4
  store i32 %62, i32* %4, align 4
  br label %78

63:                                               ; preds = %21, %21, %21, %21, %21
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %64, 16
  %66 = shl i32 1, %65
  %67 = xor i32 %66, -1
  %68 = load %struct.ast_vhub_port*, %struct.ast_vhub_port** %9, align 8
  %69 = getelementptr inbounds %struct.ast_vhub_port, %struct.ast_vhub_port* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.ast_vhub*, %struct.ast_vhub** %8, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @ast_vhub_update_hub_ep1(%struct.ast_vhub* %72, i64 %73)
  %75 = load i32, i32* @std_req_complete, align 4
  store i32 %75, i32* %4, align 4
  br label %78

76:                                               ; preds = %21
  %77 = load i32, i32* @std_req_stall, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %63, %61, %59, %50, %48, %30, %19
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @ast_vhub_change_port_stat(%struct.ast_vhub*, i64, i32, i32, i32) #1

declare dso_local i32 @ast_vhub_dev_suspend(i32*) #1

declare dso_local i32 @ast_vhub_dev_resume(i32*) #1

declare dso_local i32 @ast_vhub_update_hub_ep1(%struct.ast_vhub*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
