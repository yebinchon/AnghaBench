; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ssb-hcd.c_ssb_hcd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ssb-hcd.c_ssb_hcd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ssb_device_id = type { i32 }
%struct.ssb_hcd_device = type { i8*, i8*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SSB_ADMATCH0 = common dso_local global i32 0, align 4
@SSB_DEV_USB20_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_device*, %struct.ssb_device_id*)* @ssb_hcd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_hcd_probe(%struct.ssb_device* %0, %struct.ssb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssb_device*, align 8
  %5 = alloca %struct.ssb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ssb_hcd_device*, align 8
  store %struct.ssb_device* %0, %struct.ssb_device** %4, align 8
  store %struct.ssb_device_id* %1, %struct.ssb_device_id** %5, align 8
  %13 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %14 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %11, align 4
  %17 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %18 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 65280
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 18176
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 21248
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %122

31:                                               ; preds = %25, %2
  %32 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %33 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @DMA_BIT_MASK(i32 32)
  %36 = call i64 @dma_set_mask_and_coherent(i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %122

41:                                               ; preds = %31
  %42 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %43 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.ssb_hcd_device* @devm_kzalloc(i32 %44, i32 24, i32 %45)
  store %struct.ssb_hcd_device* %46, %struct.ssb_hcd_device** %12, align 8
  %47 = load %struct.ssb_hcd_device*, %struct.ssb_hcd_device** %12, align 8
  %48 = icmp ne %struct.ssb_hcd_device* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %122

52:                                               ; preds = %41
  %53 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %54 = call i32 @ssb_hcd_init_chip(%struct.ssb_device* %53)
  %55 = load %struct.ssb_hcd_device*, %struct.ssb_hcd_device** %12, align 8
  %56 = getelementptr inbounds %struct.ssb_hcd_device, %struct.ssb_hcd_device* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %58 = load i32, i32* @SSB_ADMATCH0, align 4
  %59 = call i32 @ssb_read32(%struct.ssb_device* %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @ssb_admatch_base(i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @SSB_DEV_USB20_HOST, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  br label %69

66:                                               ; preds = %52
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @ssb_admatch_size(i32 %67)
  br label %69

69:                                               ; preds = %66, %65
  %70 = phi i32 [ 2048, %65 ], [ %68, %66 ]
  store i32 %70, i32* %9, align 4
  %71 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i8* @ssb_hcd_create_pdev(%struct.ssb_device* %71, i32 1, i32 %72, i32 %73)
  %75 = load %struct.ssb_hcd_device*, %struct.ssb_hcd_device** %12, align 8
  %76 = getelementptr inbounds %struct.ssb_hcd_device, %struct.ssb_hcd_device* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load %struct.ssb_hcd_device*, %struct.ssb_hcd_device** %12, align 8
  %78 = getelementptr inbounds %struct.ssb_hcd_device, %struct.ssb_hcd_device* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @IS_ERR(i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %69
  %83 = load %struct.ssb_hcd_device*, %struct.ssb_hcd_device** %12, align 8
  %84 = getelementptr inbounds %struct.ssb_hcd_device, %struct.ssb_hcd_device* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @PTR_ERR(i8* %85)
  store i32 %86, i32* %3, align 4
  br label %122

87:                                               ; preds = %69
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @SSB_DEV_USB20_HOST, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %112

91:                                               ; preds = %87
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @ssb_admatch_base(i32 %92)
  %94 = add nsw i32 %93, 2048
  store i32 %94, i32* %8, align 4
  %95 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i8* @ssb_hcd_create_pdev(%struct.ssb_device* %95, i32 0, i32 %96, i32 %97)
  %99 = load %struct.ssb_hcd_device*, %struct.ssb_hcd_device** %12, align 8
  %100 = getelementptr inbounds %struct.ssb_hcd_device, %struct.ssb_hcd_device* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load %struct.ssb_hcd_device*, %struct.ssb_hcd_device** %12, align 8
  %102 = getelementptr inbounds %struct.ssb_hcd_device, %struct.ssb_hcd_device* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @IS_ERR(i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %91
  %107 = load %struct.ssb_hcd_device*, %struct.ssb_hcd_device** %12, align 8
  %108 = getelementptr inbounds %struct.ssb_hcd_device, %struct.ssb_hcd_device* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @PTR_ERR(i8* %109)
  store i32 %110, i32* %6, align 4
  br label %116

111:                                              ; preds = %91
  br label %112

112:                                              ; preds = %111, %87
  %113 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %114 = load %struct.ssb_hcd_device*, %struct.ssb_hcd_device** %12, align 8
  %115 = call i32 @ssb_set_drvdata(%struct.ssb_device* %113, %struct.ssb_hcd_device* %114)
  store i32 0, i32* %3, align 4
  br label %122

116:                                              ; preds = %106
  %117 = load %struct.ssb_hcd_device*, %struct.ssb_hcd_device** %12, align 8
  %118 = getelementptr inbounds %struct.ssb_hcd_device, %struct.ssb_hcd_device* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @platform_device_unregister(i8* %119)
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %116, %112, %82, %49, %38, %28
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i64 @dma_set_mask_and_coherent(i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.ssb_hcd_device* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ssb_hcd_init_chip(%struct.ssb_device*) #1

declare dso_local i32 @ssb_read32(%struct.ssb_device*, i32) #1

declare dso_local i32 @ssb_admatch_base(i32) #1

declare dso_local i32 @ssb_admatch_size(i32) #1

declare dso_local i8* @ssb_hcd_create_pdev(%struct.ssb_device*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @ssb_set_drvdata(%struct.ssb_device*, %struct.ssb_hcd_device*) #1

declare dso_local i32 @platform_device_unregister(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
