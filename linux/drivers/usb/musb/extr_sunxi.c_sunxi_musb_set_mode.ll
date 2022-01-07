; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_sunxi.c_sunxi_musb_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_sunxi.c_sunxi_musb_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sunxi_glue = type { i32, i32, i32 }

@PHY_MODE_USB_HOST = common dso_local global i32 0, align 4
@PHY_MODE_USB_DEVICE = common dso_local global i32 0, align 4
@PHY_MODE_USB_OTG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Error requested mode not supported by this kernel\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Error changing modes is only supported in dual role mode\0A\00", align 1
@USB_PORT_STAT_ENABLE = common dso_local global i32 0, align 4
@SUNXI_MUSB_FL_PHY_MODE_PEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musb*, i32)* @sunxi_musb_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_musb_set_mode(%struct.musb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.musb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sunxi_glue*, align 8
  %7 = alloca i32, align 4
  store %struct.musb* %0, %struct.musb** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.musb*, %struct.musb** %4, align 8
  %9 = getelementptr inbounds %struct.musb, %struct.musb* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.sunxi_glue* @dev_get_drvdata(i32 %12)
  store %struct.sunxi_glue* %13, %struct.sunxi_glue** %6, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %21 [
    i32 130, label %15
    i32 128, label %17
    i32 129, label %19
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @PHY_MODE_USB_HOST, align 4
  store i32 %16, i32* %7, align 4
  br label %30

17:                                               ; preds = %2
  %18 = load i32, i32* @PHY_MODE_USB_DEVICE, align 4
  store i32 %18, i32* %7, align 4
  br label %30

19:                                               ; preds = %2
  %20 = load i32, i32* @PHY_MODE_USB_OTG, align 4
  store i32 %20, i32* %7, align 4
  br label %30

21:                                               ; preds = %2
  %22 = load %struct.musb*, %struct.musb** %4, align 8
  %23 = getelementptr inbounds %struct.musb, %struct.musb* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %72

30:                                               ; preds = %19, %17, %15
  %31 = load %struct.sunxi_glue*, %struct.sunxi_glue** %6, align 8
  %32 = getelementptr inbounds %struct.sunxi_glue, %struct.sunxi_glue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %72

37:                                               ; preds = %30
  %38 = load %struct.musb*, %struct.musb** %4, align 8
  %39 = getelementptr inbounds %struct.musb, %struct.musb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 129
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.musb*, %struct.musb** %4, align 8
  %44 = getelementptr inbounds %struct.musb, %struct.musb* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %72

51:                                               ; preds = %37
  %52 = load %struct.musb*, %struct.musb** %4, align 8
  %53 = getelementptr inbounds %struct.musb, %struct.musb* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @USB_PORT_STAT_ENABLE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.musb*, %struct.musb** %4, align 8
  %60 = call i32 @musb_root_disconnect(%struct.musb* %59)
  br label %61

61:                                               ; preds = %58, %51
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.sunxi_glue*, %struct.sunxi_glue** %6, align 8
  %64 = getelementptr inbounds %struct.sunxi_glue, %struct.sunxi_glue* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @SUNXI_MUSB_FL_PHY_MODE_PEND, align 4
  %66 = load %struct.sunxi_glue*, %struct.sunxi_glue** %6, align 8
  %67 = getelementptr inbounds %struct.sunxi_glue, %struct.sunxi_glue* %66, i32 0, i32 2
  %68 = call i32 @set_bit(i32 %65, i32* %67)
  %69 = load %struct.sunxi_glue*, %struct.sunxi_glue** %6, align 8
  %70 = getelementptr inbounds %struct.sunxi_glue, %struct.sunxi_glue* %69, i32 0, i32 1
  %71 = call i32 @schedule_work(i32* %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %61, %42, %36, %21
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.sunxi_glue* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @musb_root_disconnect(%struct.musb*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
