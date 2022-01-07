; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_dev_set_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_dev_set_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_dev = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"SET_ADDRESS: Got address %x\0A\00", align 1
@AST_VHUB_DEV_EN_CTRL = common dso_local global i64 0, align 8
@VHUB_DEV_EN_ADDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ast_vhub_dev*, i32)* @ast_vhub_dev_set_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_vhub_dev_set_address(%struct.ast_vhub_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.ast_vhub_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ast_vhub_dev* %0, %struct.ast_vhub_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @DDBG(%struct.ast_vhub_dev* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %3, align 8
  %10 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AST_VHUB_DEV_EN_CTRL, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @VHUB_DEV_EN_ADDR_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @VHUB_DEV_EN_SET_ADDR(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %3, align 8
  %25 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AST_VHUB_DEV_EN_CTRL, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  ret void
}

declare dso_local i32 @DDBG(%struct.ast_vhub_dev*, i8*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @VHUB_DEV_EN_SET_ADDR(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
