; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_update_hub_ep1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_update_hub_ep1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@AST_VHUB_EP1_STS_CHG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ast_vhub*, i32)* @ast_vhub_update_hub_ep1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_vhub_update_hub_ep1(%struct.ast_vhub* %0, i32 %1) #0 {
  %3 = alloca %struct.ast_vhub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ast_vhub* %0, %struct.ast_vhub** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ast_vhub*, %struct.ast_vhub** %3, align 8
  %8 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AST_VHUB_EP1_STS_CHG, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = add i32 %13, 1
  %15 = shl i32 1, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.ast_vhub*, %struct.ast_vhub** %3, align 8
  %17 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %34

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.ast_vhub*, %struct.ast_vhub** %3, align 8
  %37 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AST_VHUB_EP1_STS_CHG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
