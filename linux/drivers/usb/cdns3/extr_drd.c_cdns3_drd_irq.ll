; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_drd.c_cdns3_drd_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_drd.c_cdns3_drd_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3 = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@USB_DR_MODE_OTG = common dso_local global i64 0, align 8
@OTGIEN_ID_CHANGE_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"OTG IRQ: new ID: %d\0A\00", align 1
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@OTGIEN_VBUSVALID_RISE_INT = common dso_local global i32 0, align 4
@OTGIEN_VBUSVALID_FALL_INT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"OTG IRQ: new VBUS: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cdns3_drd_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_drd_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdns3*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @IRQ_NONE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.cdns3*
  store %struct.cdns3* %11, %struct.cdns3** %7, align 8
  %12 = load %struct.cdns3*, %struct.cdns3** %7, align 8
  %13 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @USB_DR_MODE_OTG, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %64

19:                                               ; preds = %2
  %20 = load %struct.cdns3*, %struct.cdns3** %7, align 8
  %21 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @readl(i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %64

29:                                               ; preds = %19
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @OTGIEN_ID_CHANGE_INT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.cdns3*, %struct.cdns3** %7, align 8
  %36 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.cdns3*, %struct.cdns3** %7, align 8
  %39 = call i32 @cdns3_get_id(%struct.cdns3* %38)
  %40 = call i32 @dev_dbg(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %34, %29
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @OTGIEN_VBUSVALID_RISE_INT, align 4
  %45 = load i32, i32* @OTGIEN_VBUSVALID_FALL_INT, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load %struct.cdns3*, %struct.cdns3** %7, align 8
  %51 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.cdns3*, %struct.cdns3** %7, align 8
  %54 = call i32 @cdns3_get_vbus(%struct.cdns3* %53)
  %55 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %49, %42
  %58 = load %struct.cdns3*, %struct.cdns3** %7, align 8
  %59 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @writel(i32 -1, i32* %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %57, %27, %17
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @cdns3_get_id(%struct.cdns3*) #1

declare dso_local i32 @cdns3_get_vbus(%struct.cdns3*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
