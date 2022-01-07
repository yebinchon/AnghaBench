; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c_rtw_hal_get_hwreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c_rtw_hal_get_hwreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@REG_TXPAUSE = common dso_local global i32 0, align 4
@REG_TDECTRL = common dso_local global i32 0, align 4
@rf_off = common dso_local global i32 0, align 4
@REG_RCR = common dso_local global i32 0, align 4
@REG_HGQ_INFORMATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_hal_get_hwreg(%struct.adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %91 [
    i32 134, label %9
    i32 128, label %16
    i32 133, label %22
    i32 129, label %34
    i32 131, label %60
    i32 130, label %68
    i32 135, label %75
    i32 132, label %82
  ]

9:                                                ; preds = %3
  %10 = load %struct.adapter*, %struct.adapter** %4, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %6, align 8
  store i32 %14, i32* %15, align 4
  br label %16

16:                                               ; preds = %3, %9
  %17 = load %struct.adapter*, %struct.adapter** %4, align 8
  %18 = load i32, i32* @REG_TXPAUSE, align 4
  %19 = call i32 @usb_read8(%struct.adapter* %17, i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %19, i32* %21, align 4
  br label %92

22:                                               ; preds = %3
  %23 = call i32 @BIT(i32 0)
  %24 = load %struct.adapter*, %struct.adapter** %4, align 8
  %25 = load i32, i32* @REG_TDECTRL, align 4
  %26 = add nsw i32 %25, 2
  %27 = call i32 @usb_read8(%struct.adapter* %24, i32 %26)
  %28 = and i32 %23, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %31, i32* %33, align 4
  br label %92

34:                                               ; preds = %3
  %35 = load %struct.adapter*, %struct.adapter** %4, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @rf_off, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 1, i32* %43, align 4
  br label %59

44:                                               ; preds = %34
  %45 = load %struct.adapter*, %struct.adapter** %4, align 8
  %46 = load i32, i32* @REG_RCR, align 4
  %47 = call i32 @usb_read32(%struct.adapter* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, 458752
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 0, i32* %54, align 4
  br label %58

55:                                               ; preds = %44
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %41
  br label %92

60:                                               ; preds = %3
  %61 = load %struct.adapter*, %struct.adapter** %4, align 8
  %62 = getelementptr inbounds %struct.adapter, %struct.adapter* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %65, i32* %67, align 4
  br label %92

68:                                               ; preds = %3
  %69 = load %struct.adapter*, %struct.adapter** %4, align 8
  %70 = getelementptr inbounds %struct.adapter, %struct.adapter* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %6, align 8
  store i32 %73, i32* %74, align 4
  br label %92

75:                                               ; preds = %3
  %76 = load %struct.adapter*, %struct.adapter** %4, align 8
  %77 = getelementptr inbounds %struct.adapter, %struct.adapter* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %6, align 8
  store i32 %80, i32* %81, align 4
  br label %92

82:                                               ; preds = %3
  %83 = load %struct.adapter*, %struct.adapter** %4, align 8
  %84 = load i32, i32* @REG_HGQ_INFORMATION, align 4
  %85 = call i32 @usb_read32(%struct.adapter* %83, i32 %84)
  %86 = and i32 %85, 65280
  %87 = icmp eq i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 1, i32 0
  %90 = load i32*, i32** %6, align 8
  store i32 %89, i32* %90, align 4
  br label %92

91:                                               ; preds = %3
  br label %92

92:                                               ; preds = %91, %82, %75, %68, %60, %59, %22, %16
  ret void
}

declare dso_local i32 @usb_read8(%struct.adapter*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @usb_read32(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
