; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_core.c_ast_vhub_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_core.c_ast_vhub_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"(Re)Starting HW ...\0A\00", align 1
@VHUB_CTRL_PHY_CLK = common dso_local global i32 0, align 4
@VHUB_CTRL_PHY_RESET_DIS = common dso_local global i32 0, align 4
@VHUB_CTRL_ISO_RSP_CTRL = common dso_local global i32 0, align 4
@VHUB_CTRL_SPLIT_IN = common dso_local global i32 0, align 4
@AST_VHUB_CTRL = common dso_local global i64 0, align 8
@AST_VHUB_DESCS_COUNT = common dso_local global i32 0, align 4
@VHUB_CTRL_LONG_DESC = common dso_local global i32 0, align 4
@VHUB_SW_RESET_ALL = common dso_local global i32 0, align 4
@AST_VHUB_SW_RESET = common dso_local global i64 0, align 8
@AST_VHUB_EP_ACK_IER = common dso_local global i64 0, align 8
@AST_VHUB_EP_NACK_IER = common dso_local global i64 0, align 8
@VHUB_EP_IRQ_ALL = common dso_local global i32 0, align 4
@AST_VHUB_EP_ACK_ISR = common dso_local global i64 0, align 8
@AST_VHUB_EP_NACK_ISR = common dso_local global i64 0, align 8
@AST_VHUB_EP0_CTRL = common dso_local global i64 0, align 8
@VHUB_EP1_CTRL_RESET_TOGGLE = common dso_local global i32 0, align 4
@VHUB_EP1_CTRL_ENABLE = common dso_local global i32 0, align 4
@AST_VHUB_EP1_CTRL = common dso_local global i64 0, align 8
@AST_VHUB_EP1_STS_CHG = common dso_local global i64 0, align 8
@AST_VHUB_EP0_DATA = common dso_local global i64 0, align 8
@AST_VHUB_CONF = common dso_local global i64 0, align 8
@VHUB_CTRL_FULL_SPEED_ONLY = common dso_local global i32 0, align 4
@VHUB_CTRL_UPSTREAM_CONNECT = common dso_local global i32 0, align 4
@VHUB_IRQ_HUB_EP0_IN_ACK_STALL = common dso_local global i32 0, align 4
@VHUB_IRQ_HUB_EP0_OUT_ACK_STALL = common dso_local global i32 0, align 4
@VHUB_IRQ_HUB_EP0_SETUP = common dso_local global i32 0, align 4
@VHUB_IRQ_EP_POOL_ACK_STALL = common dso_local global i32 0, align 4
@VHUB_IRQ_BUS_RESUME = common dso_local global i32 0, align 4
@VHUB_IRQ_BUS_SUSPEND = common dso_local global i32 0, align 4
@VHUB_IRQ_BUS_RESET = common dso_local global i32 0, align 4
@AST_VHUB_IER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ast_vhub_init_hw(%struct.ast_vhub* %0) #0 {
  %2 = alloca %struct.ast_vhub*, align 8
  %3 = alloca i32, align 4
  store %struct.ast_vhub* %0, %struct.ast_vhub** %2, align 8
  %4 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %5 = call i32 @UDCDBG(%struct.ast_vhub* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @VHUB_CTRL_PHY_CLK, align 4
  %7 = load i32, i32* @VHUB_CTRL_PHY_RESET_DIS, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @VHUB_CTRL_ISO_RSP_CTRL, align 4
  %10 = load i32, i32* @VHUB_CTRL_SPLIT_IN, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %16 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AST_VHUB_CTRL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  %21 = call i32 @udelay(i32 1)
  %22 = load i32, i32* @AST_VHUB_DESCS_COUNT, align 4
  %23 = icmp eq i32 %22, 256
  br i1 %23, label %24, label %35

24:                                               ; preds = %1
  %25 = load i32, i32* @VHUB_CTRL_LONG_DESC, align 4
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %30 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AST_VHUB_CTRL, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  br label %40

35:                                               ; preds = %1
  %36 = load i32, i32* @AST_VHUB_DESCS_COUNT, align 4
  %37 = icmp ne i32 %36, 32
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUILD_BUG_ON(i32 %38)
  br label %40

40:                                               ; preds = %35, %24
  %41 = load i32, i32* @VHUB_SW_RESET_ALL, align 4
  %42 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %43 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AST_VHUB_SW_RESET, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  %48 = call i32 @udelay(i32 1)
  %49 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %50 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AST_VHUB_SW_RESET, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 0, i64 %53)
  %55 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %56 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AST_VHUB_EP_ACK_IER, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 0, i64 %59)
  %61 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %62 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AST_VHUB_EP_NACK_IER, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 0, i64 %65)
  %67 = load i32, i32* @VHUB_EP_IRQ_ALL, align 4
  %68 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %69 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @AST_VHUB_EP_ACK_ISR, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 %67, i64 %72)
  %74 = load i32, i32* @VHUB_EP_IRQ_ALL, align 4
  %75 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %76 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @AST_VHUB_EP_NACK_ISR, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel(i32 %74, i64 %79)
  %81 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %82 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @AST_VHUB_EP0_CTRL, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 0, i64 %85)
  %87 = load i32, i32* @VHUB_EP1_CTRL_RESET_TOGGLE, align 4
  %88 = load i32, i32* @VHUB_EP1_CTRL_ENABLE, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %91 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @AST_VHUB_EP1_CTRL, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writel(i32 %89, i64 %94)
  %96 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %97 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @AST_VHUB_EP1_STS_CHG, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel(i32 0, i64 %100)
  %102 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %103 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %107 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @AST_VHUB_EP0_DATA, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @writel(i32 %105, i64 %110)
  %112 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %113 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @AST_VHUB_CONF, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @writel(i32 0, i64 %116)
  %118 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %119 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %40
  %123 = load i32, i32* @VHUB_CTRL_FULL_SPEED_ONLY, align 4
  %124 = load i32, i32* %3, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %122, %40
  %127 = load i32, i32* @VHUB_CTRL_UPSTREAM_CONNECT, align 4
  %128 = load i32, i32* %3, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %3, align 4
  %130 = load i32, i32* %3, align 4
  %131 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %132 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @AST_VHUB_CTRL, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @writel(i32 %130, i64 %135)
  %137 = load i32, i32* @VHUB_IRQ_HUB_EP0_IN_ACK_STALL, align 4
  %138 = load i32, i32* @VHUB_IRQ_HUB_EP0_OUT_ACK_STALL, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @VHUB_IRQ_HUB_EP0_SETUP, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @VHUB_IRQ_EP_POOL_ACK_STALL, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @VHUB_IRQ_BUS_RESUME, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @VHUB_IRQ_BUS_SUSPEND, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @VHUB_IRQ_BUS_RESET, align 4
  %149 = or i32 %147, %148
  %150 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %151 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @AST_VHUB_IER, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @writel(i32 %149, i64 %154)
  ret void
}

declare dso_local i32 @UDCDBG(%struct.ast_vhub*, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
