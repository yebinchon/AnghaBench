; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_ep_onchip_buffer_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_ep_onchip_buffer_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_device = type { i32, i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns3_device*, i32, i32)* @cdns3_ep_onchip_buffer_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_ep_onchip_buffer_reserve(%struct.cdns3_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdns3_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cdns3_device* %0, %struct.cdns3_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %11 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %14 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  %17 = sub nsw i32 %16, 2
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %64

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %30 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %63

33:                                               ; preds = %3
  %34 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %35 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %64

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %43 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %41, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* @EPERM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %64

52:                                               ; preds = %40
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %55 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %60 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %52, %27
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %49, %39, %24
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
