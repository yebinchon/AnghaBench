; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1760_device = type { i32, i32, %struct.isp1760_udc }
%struct.isp1760_udc = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, %struct.isp1760_device* }
%struct.TYPE_2__ = type { i8*, i32, i32, i32* }

@isp1760_udc_vbus_poll = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s (udc)\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@isp1760_udc_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i64 0, align 8
@isp1760_udc_ops = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"isp1761_udc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isp1760_udc_register(%struct.isp1760_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.isp1760_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.isp1760_udc*, align 8
  %9 = alloca i32, align 4
  store %struct.isp1760_device* %0, %struct.isp1760_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.isp1760_device*, %struct.isp1760_device** %5, align 8
  %11 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %10, i32 0, i32 2
  store %struct.isp1760_udc* %11, %struct.isp1760_udc** %8, align 8
  %12 = load %struct.isp1760_udc*, %struct.isp1760_udc** %8, align 8
  %13 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %12, i32 0, i32 0
  store i32 -1, i32* %13, align 8
  %14 = load %struct.isp1760_device*, %struct.isp1760_device** %5, align 8
  %15 = load %struct.isp1760_udc*, %struct.isp1760_udc** %8, align 8
  %16 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %15, i32 0, i32 6
  store %struct.isp1760_device* %14, %struct.isp1760_device** %16, align 8
  %17 = load %struct.isp1760_device*, %struct.isp1760_device** %5, align 8
  %18 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.isp1760_udc*, %struct.isp1760_udc** %8, align 8
  %21 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %struct.isp1760_udc*, %struct.isp1760_udc** %8, align 8
  %23 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %22, i32 0, i32 4
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.isp1760_udc*, %struct.isp1760_udc** %8, align 8
  %26 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %25, i32 0, i32 3
  %27 = load i32, i32* @isp1760_udc_vbus_poll, align 4
  %28 = call i32 @timer_setup(i32* %26, i32 %27, i32 0)
  %29 = load %struct.isp1760_udc*, %struct.isp1760_udc** %8, align 8
  %30 = call i32 @isp1760_udc_init(%struct.isp1760_udc* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %112

35:                                               ; preds = %3
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = load %struct.isp1760_device*, %struct.isp1760_device** %5, align 8
  %38 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_name(i32 %39)
  %41 = call i32 @kasprintf(i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.isp1760_udc*, %struct.isp1760_udc** %8, align 8
  %43 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.isp1760_udc*, %struct.isp1760_udc** %8, align 8
  %45 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %35
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %112

51:                                               ; preds = %35
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @isp1760_udc_irq, align 4
  %54 = load i64, i64* @IRQF_SHARED, align 8
  %55 = load i64, i64* %7, align 8
  %56 = or i64 %54, %55
  %57 = load %struct.isp1760_udc*, %struct.isp1760_udc** %8, align 8
  %58 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.isp1760_udc*, %struct.isp1760_udc** %8, align 8
  %61 = call i32 @request_irq(i32 %52, i32 %53, i64 %56, i32 %59, %struct.isp1760_udc* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  br label %95

65:                                               ; preds = %51
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.isp1760_udc*, %struct.isp1760_udc** %8, align 8
  %68 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.isp1760_udc*, %struct.isp1760_udc** %8, align 8
  %70 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  store i32* @isp1760_udc_ops, i32** %71, align 8
  %72 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %73 = load %struct.isp1760_udc*, %struct.isp1760_udc** %8, align 8
  %74 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @USB_SPEED_HIGH, align 4
  %77 = load %struct.isp1760_udc*, %struct.isp1760_udc** %8, align 8
  %78 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 8
  %80 = load %struct.isp1760_udc*, %struct.isp1760_udc** %8, align 8
  %81 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %82, align 8
  %83 = load %struct.isp1760_udc*, %struct.isp1760_udc** %8, align 8
  %84 = call i32 @isp1760_udc_init_eps(%struct.isp1760_udc* %83)
  %85 = load %struct.isp1760_device*, %struct.isp1760_device** %5, align 8
  %86 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.isp1760_udc*, %struct.isp1760_udc** %8, align 8
  %89 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %88, i32 0, i32 2
  %90 = call i32 @usb_add_gadget_udc(i32 %87, %struct.TYPE_2__* %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %65
  br label %95

94:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %112

95:                                               ; preds = %93, %64
  %96 = load %struct.isp1760_udc*, %struct.isp1760_udc** %8, align 8
  %97 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.isp1760_udc*, %struct.isp1760_udc** %8, align 8
  %102 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.isp1760_udc*, %struct.isp1760_udc** %8, align 8
  %105 = call i32 @free_irq(i32 %103, %struct.isp1760_udc* %104)
  br label %106

106:                                              ; preds = %100, %95
  %107 = load %struct.isp1760_udc*, %struct.isp1760_udc** %8, align 8
  %108 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @kfree(i32 %109)
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %106, %94, %48, %33
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @isp1760_udc_init(%struct.isp1760_udc*) #1

declare dso_local i32 @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @request_irq(i32, i32, i64, i32, %struct.isp1760_udc*) #1

declare dso_local i32 @isp1760_udc_init_eps(%struct.isp1760_udc*) #1

declare dso_local i32 @usb_add_gadget_udc(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @free_irq(i32, %struct.isp1760_udc*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
