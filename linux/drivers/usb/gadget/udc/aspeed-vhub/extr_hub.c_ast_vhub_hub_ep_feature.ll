; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_hub_ep_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_hub_ep_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_ep = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s_FEATURE(ep%d val=%02x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@std_req_stall = common dso_local global i32 0, align 4
@USB_ENDPOINT_HALT = common dso_local global i32 0, align 4
@std_req_complete = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"%s stall on EP 1\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"setting\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"clearing\00", align 1
@AST_VHUB_EP1_CTRL = common dso_local global i64 0, align 8
@VHUB_EP1_CTRL_STALL = common dso_local global i32 0, align 4
@VHUB_EP1_CTRL_RESET_TOGGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ast_vhub_ep*, i32, i32, i32)* @ast_vhub_hub_ep_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_vhub_hub_ep_feature(%struct.ast_vhub_ep* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ast_vhub_ep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ast_vhub_ep* %0, %struct.ast_vhub_ep** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %10, align 4
  %15 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 (%struct.ast_vhub_ep*, i8*, i8*, ...) @EPDBG(%struct.ast_vhub_ep* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %10, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @std_req_stall, align 4
  store i32 %26, i32* %5, align 4
  br label %83

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @USB_ENDPOINT_HALT, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @std_req_stall, align 4
  store i32 %32, i32* %5, align 4
  br label %83

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @std_req_complete, align 4
  store i32 %37, i32* %5, align 4
  br label %83

38:                                               ; preds = %33
  %39 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %44 = call i32 (%struct.ast_vhub_ep*, i8*, i8*, ...) @EPDBG(%struct.ast_vhub_ep* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %47 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 8
  %50 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %51 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AST_VHUB_EP1_CTRL, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @readl(i64 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %38
  %61 = load i32, i32* @VHUB_EP1_CTRL_STALL, align 4
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  br label %72

64:                                               ; preds = %38
  %65 = load i32, i32* @VHUB_EP1_CTRL_STALL, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %11, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* @VHUB_EP1_CTRL_RESET_TOGGLE, align 4
  %70 = load i32, i32* %11, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %64, %60
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %75 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @AST_VHUB_EP1_CTRL, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %73, i64 %80)
  %82 = load i32, i32* @std_req_complete, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %72, %36, %31, %25
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @EPDBG(%struct.ast_vhub_ep*, i8*, i8*, ...) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
