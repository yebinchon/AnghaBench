; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_probe_fin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_probe_fin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2272 = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"2272 not found!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@net2272_irq = common dso_local global i32 0, align 4
@driver_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"request interrupt %i failed\0A\00", align 1
@CHIPREV_2272 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@driver_desc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"irq %i, mem %p, chip rev %04x, dma %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"version: %s\0A\00", align 1
@driver_vers = common dso_local global i32 0, align 4
@dev_attr_registers = common dso_local global i32 0, align 4
@net2272_gadget_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net2272*, i32)* @net2272_probe_fin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net2272_probe_fin(%struct.net2272* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net2272*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net2272* %0, %struct.net2272** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net2272*, %struct.net2272** %4, align 8
  %8 = call i64 @net2272_present(%struct.net2272* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.net2272*, %struct.net2272** %4, align 8
  %12 = getelementptr inbounds %struct.net2272, %struct.net2272* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_warn(i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  br label %100

17:                                               ; preds = %2
  %18 = load %struct.net2272*, %struct.net2272** %4, align 8
  %19 = call i32 @net2272_usb_reset(%struct.net2272* %18)
  %20 = load %struct.net2272*, %struct.net2272** %4, align 8
  %21 = call i32 @net2272_usb_reinit(%struct.net2272* %20)
  %22 = load %struct.net2272*, %struct.net2272** %4, align 8
  %23 = getelementptr inbounds %struct.net2272, %struct.net2272* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @net2272_irq, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @driver_name, align 4
  %28 = load %struct.net2272*, %struct.net2272** %4, align 8
  %29 = call i32 @request_irq(i32 %24, i32 %25, i32 %26, i32 %27, %struct.net2272* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %17
  %33 = load %struct.net2272*, %struct.net2272** %4, align 8
  %34 = getelementptr inbounds %struct.net2272, %struct.net2272* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.net2272*, %struct.net2272** %4, align 8
  %37 = getelementptr inbounds %struct.net2272, %struct.net2272* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %100

40:                                               ; preds = %17
  %41 = load %struct.net2272*, %struct.net2272** %4, align 8
  %42 = load i32, i32* @CHIPREV_2272, align 4
  %43 = call i32 @net2272_read(%struct.net2272* %41, i32 %42)
  %44 = load %struct.net2272*, %struct.net2272** %4, align 8
  %45 = getelementptr inbounds %struct.net2272, %struct.net2272* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.net2272*, %struct.net2272** %4, align 8
  %47 = getelementptr inbounds %struct.net2272, %struct.net2272* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @driver_desc, align 4
  %50 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load %struct.net2272*, %struct.net2272** %4, align 8
  %52 = getelementptr inbounds %struct.net2272, %struct.net2272* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.net2272*, %struct.net2272** %4, align 8
  %55 = getelementptr inbounds %struct.net2272, %struct.net2272* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.net2272*, %struct.net2272** %4, align 8
  %58 = getelementptr inbounds %struct.net2272, %struct.net2272* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.net2272*, %struct.net2272** %4, align 8
  %61 = getelementptr inbounds %struct.net2272, %struct.net2272* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (...) @dma_mode_string()
  %64 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %59, i32 %62, i32 %63)
  %65 = load %struct.net2272*, %struct.net2272** %4, align 8
  %66 = getelementptr inbounds %struct.net2272, %struct.net2272* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @driver_vers, align 4
  %69 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  %70 = load %struct.net2272*, %struct.net2272** %4, align 8
  %71 = getelementptr inbounds %struct.net2272, %struct.net2272* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @device_create_file(i32 %72, i32* @dev_attr_registers)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %40
  br label %94

77:                                               ; preds = %40
  %78 = load %struct.net2272*, %struct.net2272** %4, align 8
  %79 = getelementptr inbounds %struct.net2272, %struct.net2272* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.net2272*, %struct.net2272** %4, align 8
  %82 = getelementptr inbounds %struct.net2272, %struct.net2272* %81, i32 0, i32 2
  %83 = load i32, i32* @net2272_gadget_release, align 4
  %84 = call i32 @usb_add_gadget_udc_release(i32 %80, i32* %82, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %89

88:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %102

89:                                               ; preds = %87
  %90 = load %struct.net2272*, %struct.net2272** %4, align 8
  %91 = getelementptr inbounds %struct.net2272, %struct.net2272* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @device_remove_file(i32 %92, i32* @dev_attr_registers)
  br label %94

94:                                               ; preds = %89, %76
  %95 = load %struct.net2272*, %struct.net2272** %4, align 8
  %96 = getelementptr inbounds %struct.net2272, %struct.net2272* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.net2272*, %struct.net2272** %4, align 8
  %99 = call i32 @free_irq(i32 %97, %struct.net2272* %98)
  br label %100

100:                                              ; preds = %94, %32, %10
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %88
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @net2272_present(%struct.net2272*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @net2272_usb_reset(%struct.net2272*) #1

declare dso_local i32 @net2272_usb_reinit(%struct.net2272*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net2272*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @net2272_read(%struct.net2272*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, ...) #1

declare dso_local i32 @dma_mode_string(...) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @usb_add_gadget_udc_release(i32, i32*, i32) #1

declare dso_local i32 @device_remove_file(i32, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.net2272*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
