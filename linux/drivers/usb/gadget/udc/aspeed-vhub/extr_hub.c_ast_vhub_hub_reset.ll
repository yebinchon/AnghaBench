; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_hub_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_hub_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub = type { i64, i32, i32, i64, %struct.ast_vhub_port* }
%struct.ast_vhub_port = type { i32, i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"USB bus reset\0A\00", align 1
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@AST_VHUB_NUM_PORTS = common dso_local global i32 0, align 4
@USB_PORT_STAT_CONNECTION = common dso_local global i32 0, align 4
@AST_VHUB_CONF = common dso_local global i64 0, align 8
@AST_VHUB_EP0_CTRL = common dso_local global i64 0, align 8
@VHUB_EP1_CTRL_RESET_TOGGLE = common dso_local global i32 0, align 4
@VHUB_EP1_CTRL_ENABLE = common dso_local global i32 0, align 4
@AST_VHUB_EP1_CTRL = common dso_local global i64 0, align 8
@AST_VHUB_EP1_STS_CHG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ast_vhub_hub_reset(%struct.ast_vhub* %0) #0 {
  %2 = alloca %struct.ast_vhub*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ast_vhub_port*, align 8
  store %struct.ast_vhub* %0, %struct.ast_vhub** %2, align 8
  %5 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %6 = call i32 @UDCDBG(%struct.ast_vhub* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %8 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %73

13:                                               ; preds = %1
  %14 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %15 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %14, i32 0, i32 1
  store i32 0, i32* %15, align 8
  %16 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %17 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %18 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %20 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %19, i32 0, i32 2
  store i32 0, i32* %20, align 4
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %42, %13
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @AST_VHUB_NUM_PORTS, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %27 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %26, i32 0, i32 4
  %28 = load %struct.ast_vhub_port*, %struct.ast_vhub_port** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ast_vhub_port, %struct.ast_vhub_port* %28, i64 %30
  store %struct.ast_vhub_port* %31, %struct.ast_vhub_port** %4, align 8
  %32 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %33 = load %struct.ast_vhub_port*, %struct.ast_vhub_port** %4, align 8
  %34 = getelementptr inbounds %struct.ast_vhub_port, %struct.ast_vhub_port* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.ast_vhub_port*, %struct.ast_vhub_port** %4, align 8
  %38 = getelementptr inbounds %struct.ast_vhub_port, %struct.ast_vhub_port* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.ast_vhub_port*, %struct.ast_vhub_port** %4, align 8
  %40 = getelementptr inbounds %struct.ast_vhub_port, %struct.ast_vhub_port* %39, i32 0, i32 0
  %41 = call i32 @ast_vhub_dev_suspend(i32* %40)
  br label %42

42:                                               ; preds = %25
  %43 = load i32, i32* %3, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %21

45:                                               ; preds = %21
  %46 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %47 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AST_VHUB_CONF, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 0, i64 %50)
  %52 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %53 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AST_VHUB_EP0_CTRL, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 0, i64 %56)
  %58 = load i32, i32* @VHUB_EP1_CTRL_RESET_TOGGLE, align 4
  %59 = load i32, i32* @VHUB_EP1_CTRL_ENABLE, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %62 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AST_VHUB_EP1_CTRL, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %60, i64 %65)
  %67 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %68 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AST_VHUB_EP1_STS_CHG, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 0, i64 %71)
  br label %73

73:                                               ; preds = %45, %12
  ret void
}

declare dso_local i32 @UDCDBG(%struct.ast_vhub*, i8*) #1

declare dso_local i32 @ast_vhub_dev_suspend(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
