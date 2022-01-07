; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_free_all_eps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_free_all_eps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_device = type { i32**, i32 }

@CDNS3_ENDPOINTS_MAX_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns3_device*)* @cdns3_free_all_eps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns3_free_all_eps(%struct.cdns3_device* %0) #0 {
  %2 = alloca %struct.cdns3_device*, align 8
  %3 = alloca i32, align 4
  store %struct.cdns3_device* %0, %struct.cdns3_device** %2, align 8
  %4 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %5 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %4, i32 0, i32 0
  %6 = load i32**, i32*** %5, align 8
  %7 = getelementptr inbounds i32*, i32** %6, i64 16
  store i32* null, i32** %7, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %42, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @CDNS3_ENDPOINTS_MAX_COUNT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %8
  %13 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %14 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %13, i32 0, i32 0
  %15 = load i32**, i32*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %12
  %22 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %23 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %22, i32 0, i32 0
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @cdns3_free_trb_pool(i32* %28)
  %30 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %31 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %34 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @devm_kfree(i32 %32, i32* %39)
  br label %41

41:                                               ; preds = %21, %12
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %8

45:                                               ; preds = %8
  ret void
}

declare dso_local i32 @cdns3_free_trb_pool(i32*) #1

declare dso_local i32 @devm_kfree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
