; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_epn.c_ast_vhub_update_epn_stall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_epn.c_ast_vhub_update_epn_stall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_ep = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i64, i64, i64 }

@AST_VHUB_EP_CONFIG = common dso_local global i64 0, align 8
@VHUB_EP_CFG_STALL_CTRL = common dso_local global i32 0, align 4
@AST_VHUB_EP_TOGGLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ast_vhub_update_epn_stall(%struct.ast_vhub_ep* %0) #0 {
  %2 = alloca %struct.ast_vhub_ep*, align 8
  %3 = alloca i32, align 4
  store %struct.ast_vhub_ep* %0, %struct.ast_vhub_ep** %2, align 8
  %4 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %5 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i64 @WARN_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %74

12:                                               ; preds = %1
  %13 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %14 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AST_VHUB_EP_CONFIG, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %3, align 4
  %20 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %21 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %12
  %26 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %27 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25, %12
  %32 = load i32, i32* @VHUB_EP_CFG_STALL_CTRL, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %40

35:                                               ; preds = %25
  %36 = load i32, i32* @VHUB_EP_CFG_STALL_CTRL, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %31
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %43 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AST_VHUB_EP_CONFIG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %41, i64 %47)
  %49 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %50 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %74, label %54

54:                                               ; preds = %40
  %55 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %56 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %54
  %61 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %62 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @VHUB_EP_TOGGLE_SET_EPNUM(i32 %64)
  %66 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %67 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @AST_VHUB_EP_TOGGLE, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 %65, i64 %72)
  br label %74

74:                                               ; preds = %11, %60, %54, %40
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @VHUB_EP_TOGGLE_SET_EPNUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
