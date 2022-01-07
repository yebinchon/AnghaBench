; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usb_gadget_driver = type { i64, i32 }
%struct.s3c_hsudc = type { %struct.usb_gadget_driver*, i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 (...)* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@USB_SPEED_FULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to enable supplies: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: can't bind to transceiver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)* @s3c_hsudc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_hsudc_start(%struct.usb_gadget* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca %struct.usb_gadget_driver*, align 8
  %6 = alloca %struct.s3c_hsudc*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %5, align 8
  %8 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %9 = call %struct.s3c_hsudc* @to_hsudc(%struct.usb_gadget* %8)
  store %struct.s3c_hsudc* %9, %struct.s3c_hsudc** %6, align 8
  %10 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %11 = icmp ne %struct.usb_gadget_driver* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %14 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @USB_SPEED_FULL, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %20 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18, %12, %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %126

26:                                               ; preds = %18
  %27 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %28 = icmp ne %struct.s3c_hsudc* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %126

32:                                               ; preds = %26
  %33 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %34 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %33, i32 0, i32 0
  %35 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %34, align 8
  %36 = icmp ne %struct.usb_gadget_driver* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %126

40:                                               ; preds = %32
  %41 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %42 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %43 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %42, i32 0, i32 0
  store %struct.usb_gadget_driver* %41, %struct.usb_gadget_driver** %43, align 8
  %44 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %45 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ARRAY_SIZE(i32 %46)
  %48 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %49 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @regulator_bulk_enable(i32 %47, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %40
  %55 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %56 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %122

60:                                               ; preds = %40
  %61 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %62 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %61, i32 0, i32 6
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = call i32 @IS_ERR_OR_NULL(%struct.TYPE_6__* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %87, label %66

66:                                               ; preds = %60
  %67 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %68 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %67, i32 0, i32 6
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %73 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %72, i32 0, i32 5
  %74 = call i32 @otg_set_peripheral(i32 %71, %struct.TYPE_5__* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %66
  %78 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %79 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %82 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %113

86:                                               ; preds = %66
  br label %87

87:                                               ; preds = %86, %60
  %88 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %89 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @enable_irq(i32 %90)
  %92 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %93 = call i32 @s3c_hsudc_reconfig(%struct.s3c_hsudc* %92)
  %94 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %95 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @pm_runtime_get_sync(i32 %96)
  %98 = call i32 (...) @s3c_hsudc_init_phy()
  %99 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %100 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %99, i32 0, i32 2
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32 (...)*, i32 (...)** %102, align 8
  %104 = icmp ne i32 (...)* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %87
  %106 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %107 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %106, i32 0, i32 2
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32 (...)*, i32 (...)** %109, align 8
  %111 = call i32 (...) %110()
  br label %112

112:                                              ; preds = %105, %87
  store i32 0, i32* %3, align 4
  br label %126

113:                                              ; preds = %77
  %114 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %115 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @ARRAY_SIZE(i32 %116)
  %118 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %119 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @regulator_bulk_disable(i32 %117, i32 %120)
  br label %122

122:                                              ; preds = %113, %54
  %123 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %124 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %123, i32 0, i32 0
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %124, align 8
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %122, %112, %37, %29, %23
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.s3c_hsudc* @to_hsudc(%struct.usb_gadget*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.TYPE_6__*) #1

declare dso_local i32 @otg_set_peripheral(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @s3c_hsudc_reconfig(%struct.s3c_hsudc*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @s3c_hsudc_init_phy(...) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
