; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc = type { i32, i64, %struct.TYPE_3__*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32* }

@udc_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"gadget\00", align 1
@name = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@mod_desc = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@UDC_HSA0_REV = common dso_local global i64 0, align 8
@UDC_HSB1_REV = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c"irq %s, pci mem %08lx, chip rev %02x(Geode5536 %s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"A0\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"B1\00", align 1
@UDC_DRIVER_VERSION_STRING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"chip revision is A0; too old\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"driver version: %s(for Geode5536 B1)\0A\00", align 1
@udc = common dso_local global %struct.udc* null, align 8
@gadget_release = common dso_local global i32 0, align 4
@udc_timer = common dso_local global i32 0, align 4
@udc_timer_function = common dso_local global i32 0, align 4
@udc_pollstall_timer = common dso_local global i32 0, align 4
@udc_pollstall_timer_function = common dso_local global i32 0, align 4
@UDC_DEVCTL_SD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udc_probe(%struct.udc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.udc*, align 8
  %4 = alloca [128 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.udc* %0, %struct.udc** %3, align 8
  %7 = load %struct.udc*, %struct.udc** %3, align 8
  %8 = getelementptr inbounds %struct.udc, %struct.udc* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  store i32* @udc_ops, i32** %9, align 8
  %10 = load %struct.udc*, %struct.udc** %3, align 8
  %11 = getelementptr inbounds %struct.udc, %struct.udc* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = call i32 @dev_set_name(i32* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @name, align 4
  %15 = load %struct.udc*, %struct.udc** %3, align 8
  %16 = getelementptr inbounds %struct.udc, %struct.udc* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @USB_SPEED_HIGH, align 4
  %19 = load %struct.udc*, %struct.udc** %3, align 8
  %20 = getelementptr inbounds %struct.udc, %struct.udc* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load %struct.udc*, %struct.udc** %3, align 8
  %23 = call i32 @startup_registers(%struct.udc* %22)
  %24 = load %struct.udc*, %struct.udc** %3, align 8
  %25 = getelementptr inbounds %struct.udc, %struct.udc* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** @mod_desc, align 8
  %28 = call i32 (i32, i8*, i8*, ...) @dev_info(i32 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %30 = load %struct.udc*, %struct.udc** %3, align 8
  %31 = getelementptr inbounds %struct.udc, %struct.udc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @snprintf(i8* %29, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load %struct.udc*, %struct.udc** %3, align 8
  %35 = getelementptr inbounds %struct.udc, %struct.udc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UDC_HSA0_REV, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %1
  %40 = load %struct.udc*, %struct.udc** %3, align 8
  %41 = getelementptr inbounds %struct.udc, %struct.udc* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @UDC_HSB1_REV, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %85

45:                                               ; preds = %39, %1
  %46 = load %struct.udc*, %struct.udc** %3, align 8
  %47 = getelementptr inbounds %struct.udc, %struct.udc* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %50 = load %struct.udc*, %struct.udc** %3, align 8
  %51 = getelementptr inbounds %struct.udc, %struct.udc* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.udc*, %struct.udc** %3, align 8
  %54 = getelementptr inbounds %struct.udc, %struct.udc* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.udc*, %struct.udc** %3, align 8
  %57 = getelementptr inbounds %struct.udc, %struct.udc* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @UDC_HSA0_REV, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %63 = call i32 (i32, i8*, i8*, ...) @dev_info(i32 %48, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %49, i32 %52, i64 %55, i8* %62)
  %64 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %65 = load i32, i32* @UDC_DRIVER_VERSION_STRING, align 4
  %66 = call i32 @strcpy(i8* %64, i32 %65)
  %67 = load %struct.udc*, %struct.udc** %3, align 8
  %68 = getelementptr inbounds %struct.udc, %struct.udc* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @UDC_HSA0_REV, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %45
  %73 = load %struct.udc*, %struct.udc** %3, align 8
  %74 = getelementptr inbounds %struct.udc, %struct.udc* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %119

79:                                               ; preds = %45
  %80 = load %struct.udc*, %struct.udc** %3, align 8
  %81 = getelementptr inbounds %struct.udc, %struct.udc* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %84 = call i32 (i32, i8*, i8*, ...) @dev_info(i32 %82, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %79, %39
  %86 = load %struct.udc*, %struct.udc** %3, align 8
  store %struct.udc* %86, %struct.udc** @udc, align 8
  %87 = load %struct.udc*, %struct.udc** @udc, align 8
  %88 = getelementptr inbounds %struct.udc, %struct.udc* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.udc*, %struct.udc** %3, align 8
  %91 = getelementptr inbounds %struct.udc, %struct.udc* %90, i32 0, i32 3
  %92 = load i32, i32* @gadget_release, align 4
  %93 = call i32 @usb_add_gadget_udc_release(i32 %89, %struct.TYPE_4__* %91, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %119

97:                                               ; preds = %85
  %98 = load i32, i32* @udc_timer_function, align 4
  %99 = call i32 @timer_setup(i32* @udc_timer, i32 %98, i32 0)
  %100 = load i32, i32* @udc_pollstall_timer_function, align 4
  %101 = call i32 @timer_setup(i32* @udc_pollstall_timer, i32 %100, i32 0)
  %102 = load %struct.udc*, %struct.udc** %3, align 8
  %103 = getelementptr inbounds %struct.udc, %struct.udc* %102, i32 0, i32 2
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = call i32 @readl(i32* %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* @UDC_DEVCTL_SD, align 4
  %108 = call i32 @AMD_BIT(i32 %107)
  %109 = load i32, i32* %5, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.udc*, %struct.udc** %3, align 8
  %113 = getelementptr inbounds %struct.udc, %struct.udc* %112, i32 0, i32 2
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = call i32 @writel(i32 %111, i32* %115)
  %117 = load %struct.udc*, %struct.udc** %3, align 8
  %118 = call i32 @print_regs(%struct.udc* %117)
  store i32 0, i32* %2, align 4
  br label %121

119:                                              ; preds = %96, %72
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %119, %97
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @dev_set_name(i32*, i8*) #1

declare dso_local i32 @startup_registers(%struct.udc*) #1

declare dso_local i32 @dev_info(i32, i8*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @usb_add_gadget_udc_release(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @AMD_BIT(i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @print_regs(%struct.udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
