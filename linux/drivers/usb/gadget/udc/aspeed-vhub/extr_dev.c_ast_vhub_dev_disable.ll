; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_dev_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_dev_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_dev = type { i32, i32, %struct.TYPE_3__, i64, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@VHUB_IRQ_DEVICE1 = common dso_local global i32 0, align 4
@AST_VHUB_IER = common dso_local global i64 0, align 8
@AST_VHUB_DEV_EN_CTRL = common dso_local global i64 0, align 8
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ast_vhub_dev*)* @ast_vhub_dev_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_vhub_dev_disable(%struct.ast_vhub_dev* %0) #0 {
  %2 = alloca %struct.ast_vhub_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ast_vhub_dev* %0, %struct.ast_vhub_dev** %2, align 8
  %5 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %6 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %49

10:                                               ; preds = %1
  %11 = load i32, i32* @VHUB_IRQ_DEVICE1, align 4
  %12 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %13 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %11, %14
  store i32 %15, i32* %4, align 4
  %16 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %17 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %16, i32 0, i32 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AST_VHUB_IER, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %30 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %29, i32 0, i32 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AST_VHUB_IER, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %28, i64 %35)
  %37 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %38 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AST_VHUB_DEV_EN_CTRL, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 0, i64 %41)
  %43 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %44 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %45 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %48 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %10, %9
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
