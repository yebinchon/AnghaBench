; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_dev_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_dev_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_dev = type { i32, i64, i32, %struct.ast_vhub_ep**, i64, %struct.TYPE_7__, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.ast_vhub_ep = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@VHUB_DEV_EN_ENABLE_PORT = common dso_local global i64 0, align 8
@VHUB_DEV_EN_EP0_IN_ACK_IRQEN = common dso_local global i64 0, align 8
@VHUB_DEV_EN_EP0_OUT_ACK_IRQEN = common dso_local global i64 0, align 8
@VHUB_DEV_EN_EP0_SETUP_IRQEN = common dso_local global i64 0, align 8
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@VHUB_DEV_EN_SPEED_SEL_HIGH = common dso_local global i64 0, align 8
@AST_VHUB_DEV_EN_CTRL = common dso_local global i64 0, align 8
@VHUB_IRQ_DEVICE1 = common dso_local global i64 0, align 8
@AST_VHUB_IER = common dso_local global i64 0, align 8
@AST_VHUB_DEV_EP0_DATA = common dso_local global i64 0, align 8
@AST_VHUB_NUM_GEN_EPs = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ast_vhub_dev*)* @ast_vhub_dev_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_vhub_dev_enable(%struct.ast_vhub_dev* %0) #0 {
  %2 = alloca %struct.ast_vhub_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ast_vhub_ep*, align 8
  store %struct.ast_vhub_dev* %0, %struct.ast_vhub_dev** %2, align 8
  %7 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %8 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %118

12:                                               ; preds = %1
  %13 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %14 = call i32 @ast_vhub_reset_ep0(%struct.ast_vhub_dev* %13)
  %15 = load i64, i64* @VHUB_DEV_EN_ENABLE_PORT, align 8
  %16 = load i64, i64* @VHUB_DEV_EN_EP0_IN_ACK_IRQEN, align 8
  %17 = or i64 %15, %16
  %18 = load i64, i64* @VHUB_DEV_EN_EP0_OUT_ACK_IRQEN, align 8
  %19 = or i64 %17, %18
  %20 = load i64, i64* @VHUB_DEV_EN_EP0_SETUP_IRQEN, align 8
  %21 = or i64 %19, %20
  store i64 %21, i64* %3, align 8
  %22 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %23 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @USB_SPEED_HIGH, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %12
  %29 = load i64, i64* @VHUB_DEV_EN_SPEED_SEL_HIGH, align 8
  %30 = load i64, i64* %3, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %28, %12
  %33 = load i64, i64* %3, align 8
  %34 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %35 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AST_VHUB_DEV_EN_CTRL, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i64 %33, i64 %38)
  %40 = load i64, i64* @VHUB_IRQ_DEVICE1, align 8
  %41 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %42 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = shl i64 %40, %43
  store i64 %44, i64* %4, align 8
  %45 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %46 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %45, i32 0, i32 6
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AST_VHUB_IER, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i64 @readl(i64 %51)
  store i64 %52, i64* %3, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* %3, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %3, align 8
  %56 = load i64, i64* %3, align 8
  %57 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %58 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %57, i32 0, i32 6
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @AST_VHUB_IER, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i64 %56, i64 %63)
  %65 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %66 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %70 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @AST_VHUB_DEV_EP0_DATA, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i64 %68, i64 %73)
  store i64 0, i64* %5, align 8
  br label %75

75:                                               ; preds = %110, %32
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* @AST_VHUB_NUM_GEN_EPs, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %113

79:                                               ; preds = %75
  %80 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %81 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %80, i32 0, i32 3
  %82 = load %struct.ast_vhub_ep**, %struct.ast_vhub_ep*** %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = getelementptr inbounds %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %82, i64 %83
  %85 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %84, align 8
  store %struct.ast_vhub_ep* %85, %struct.ast_vhub_ep** %6, align 8
  %86 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %87 = icmp ne %struct.ast_vhub_ep* %86, null
  br i1 %87, label %88, label %109

88:                                               ; preds = %79
  %89 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %90 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %96 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %94, %88
  %101 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %102 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  store i32 0, i32* %103, align 4
  %104 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %105 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  store i32 0, i32* %106, align 4
  %107 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %6, align 8
  %108 = call i32 @ast_vhub_update_epn_stall(%struct.ast_vhub_ep* %107)
  br label %109

109:                                              ; preds = %100, %94, %79
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %5, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %5, align 8
  br label %75

113:                                              ; preds = %75
  %114 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %115 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %114, i32 0, i32 2
  store i32 0, i32* %115, align 8
  %116 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %117 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  br label %118

118:                                              ; preds = %113, %11
  ret void
}

declare dso_local i32 @ast_vhub_reset_ep0(%struct.ast_vhub_dev*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @ast_vhub_update_epn_stall(%struct.ast_vhub_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
