; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_wd719x.c_wd719x_detect_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_wd719x.c_wd719x_detect_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wd719x = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WD719X_PCI_GPIO_CONTROL = common dso_local global i32 0, align 4
@WD719X_GPIO_ID_BITS = common dso_local global i32 0, align 4
@WD719X_PCI_GPIO_DATA = common dso_local global i32 0, align 4
@WD719X_TYPE_7193 = common dso_local global i32 0, align 4
@WD719X_TYPE_7197 = common dso_local global i32 0, align 4
@WD719X_TYPE_7296 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unknown card type 0x%x\0A\00", align 1
@WD719X_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wd719x*)* @wd719x_detect_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wd719x_detect_type(%struct.wd719x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wd719x*, align 8
  %4 = alloca i32, align 4
  store %struct.wd719x* %0, %struct.wd719x** %3, align 8
  %5 = load %struct.wd719x*, %struct.wd719x** %3, align 8
  %6 = load i32, i32* @WD719X_PCI_GPIO_CONTROL, align 4
  %7 = call i32 @wd719x_readb(%struct.wd719x* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @WD719X_GPIO_ID_BITS, align 4
  %9 = load i32, i32* %4, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.wd719x*, %struct.wd719x** %3, align 8
  %12 = load i32, i32* @WD719X_PCI_GPIO_CONTROL, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @wd719x_writeb(%struct.wd719x* %11, i32 %12, i32 %13)
  %15 = load %struct.wd719x*, %struct.wd719x** %3, align 8
  %16 = load i32, i32* @WD719X_PCI_GPIO_DATA, align 4
  %17 = call i32 @wd719x_readb(%struct.wd719x* %15, i32 %16)
  %18 = load i32, i32* @WD719X_GPIO_ID_BITS, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %27 [
    i32 8, label %21
    i32 2, label %23
    i32 0, label %25
  ]

21:                                               ; preds = %1
  %22 = load i32, i32* @WD719X_TYPE_7193, align 4
  store i32 %22, i32* %2, align 4
  br label %35

23:                                               ; preds = %1
  %24 = load i32, i32* @WD719X_TYPE_7197, align 4
  store i32 %24, i32* %2, align 4
  br label %35

25:                                               ; preds = %1
  %26 = load i32, i32* @WD719X_TYPE_7296, align 4
  store i32 %26, i32* %2, align 4
  br label %35

27:                                               ; preds = %1
  %28 = load %struct.wd719x*, %struct.wd719x** %3, align 8
  %29 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @dev_warn(i32* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @WD719X_TYPE_UNKNOWN, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %27, %25, %23, %21
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @wd719x_readb(%struct.wd719x*, i32) #1

declare dso_local i32 @wd719x_writeb(%struct.wd719x*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
