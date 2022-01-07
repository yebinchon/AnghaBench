; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_epn.c_ast_vhub_count_free_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_epn.c_ast_vhub_count_free_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_ep = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@AST_VHUB_DESCS_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ast_vhub_ep*)* @ast_vhub_count_free_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_vhub_count_free_descs(%struct.ast_vhub_ep* %0) #0 {
  %2 = alloca %struct.ast_vhub_ep*, align 8
  store %struct.ast_vhub_ep* %0, %struct.ast_vhub_ep** %2, align 8
  %3 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %4 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @AST_VHUB_DESCS_COUNT, align 4
  %8 = add nsw i32 %6, %7
  %9 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %10 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %8, %12
  %14 = sub nsw i32 %13, 1
  %15 = load i32, i32* @AST_VHUB_DESCS_COUNT, align 4
  %16 = sub nsw i32 %15, 1
  %17 = and i32 %14, %16
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
