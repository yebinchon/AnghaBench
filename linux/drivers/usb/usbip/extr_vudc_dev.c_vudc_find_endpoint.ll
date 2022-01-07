; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_dev.c_vudc_find_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_dev.c_vudc_find_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vep = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vudc = type { %struct.vep* }

@USB_DIR_IN = common dso_local global i32 0, align 4
@VIRTUAL_ENDPOINTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vep* @vudc_find_endpoint(%struct.vudc* %0, i32 %1) #0 {
  %3 = alloca %struct.vep*, align 8
  %4 = alloca %struct.vudc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vep*, align 8
  store %struct.vudc* %0, %struct.vudc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @USB_DIR_IN, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.vudc*, %struct.vudc** %4, align 8
  %15 = getelementptr inbounds %struct.vudc, %struct.vudc* %14, i32 0, i32 0
  %16 = load %struct.vep*, %struct.vep** %15, align 8
  %17 = getelementptr inbounds %struct.vep, %struct.vep* %16, i64 0
  store %struct.vep* %17, %struct.vep** %3, align 8
  br label %50

18:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %19

19:                                               ; preds = %46, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @VIRTUAL_ENDPOINTS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %19
  %24 = load %struct.vudc*, %struct.vudc** %4, align 8
  %25 = getelementptr inbounds %struct.vudc, %struct.vudc* %24, i32 0, i32 0
  %26 = load %struct.vep*, %struct.vep** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.vep, %struct.vep* %26, i64 %28
  store %struct.vep* %29, %struct.vep** %7, align 8
  %30 = load %struct.vep*, %struct.vep** %7, align 8
  %31 = getelementptr inbounds %struct.vep, %struct.vep* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  br label %46

35:                                               ; preds = %23
  %36 = load %struct.vep*, %struct.vep** %7, align 8
  %37 = getelementptr inbounds %struct.vep, %struct.vep* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load %struct.vep*, %struct.vep** %7, align 8
  store %struct.vep* %44, %struct.vep** %3, align 8
  br label %50

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %34
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %19

49:                                               ; preds = %19
  store %struct.vep* null, %struct.vep** %3, align 8
  br label %50

50:                                               ; preds = %49, %43, %13
  %51 = load %struct.vep*, %struct.vep** %3, align 8
  ret %struct.vep* %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
