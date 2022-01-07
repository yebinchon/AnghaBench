; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_main.c_irqpoll_weight_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_main.c_irqpoll_weight_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cxlflash_cfg = type { %struct.afu*, %struct.TYPE_2__* }
%struct.afu = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.hwq = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Invalid IRQ poll weight. It must be 256 or less.\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Current IRQ poll weight has the same weight.\0A\00", align 1
@cxlflash_irqpoll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @irqpoll_weight_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @irqpoll_weight_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cxlflash_cfg*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.afu*, align 8
  %13 = alloca %struct.hwq*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call i32 @class_to_shost(%struct.device* %17)
  %19 = call %struct.cxlflash_cfg* @shost_priv(i32 %18)
  store %struct.cxlflash_cfg* %19, %struct.cxlflash_cfg** %10, align 8
  %20 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %10, align 8
  %21 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.device* %23, %struct.device** %11, align 8
  %24 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %10, align 8
  %25 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %24, i32 0, i32 0
  %26 = load %struct.afu*, %struct.afu** %25, align 8
  store %struct.afu* %26, %struct.afu** %12, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @kstrtouint(i8* %27, i32 10, i32* %14)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i64, i64* @EINVAL, align 8
  %33 = sub i64 0, %32
  store i64 %33, i64* %5, align 8
  br label %103

34:                                               ; preds = %4
  %35 = load i32, i32* %14, align 4
  %36 = icmp sgt i32 %35, 256
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.device*, %struct.device** %11, align 8
  %39 = call i32 @dev_info(%struct.device* %38, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %40 = load i64, i64* @EINVAL, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %5, align 8
  br label %103

42:                                               ; preds = %34
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.afu*, %struct.afu** %12, align 8
  %45 = getelementptr inbounds %struct.afu, %struct.afu* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.device*, %struct.device** %11, align 8
  %50 = call i32 @dev_info(%struct.device* %49, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i64, i64* @EINVAL, align 8
  %52 = sub i64 0, %51
  store i64 %52, i64* %5, align 8
  br label %103

53:                                               ; preds = %42
  %54 = load %struct.afu*, %struct.afu** %12, align 8
  %55 = call i64 @afu_is_irqpoll_enabled(%struct.afu* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %53
  store i32 0, i32* %16, align 4
  br label %58

58:                                               ; preds = %71, %57
  %59 = load i32, i32* %16, align 4
  %60 = load %struct.afu*, %struct.afu** %12, align 8
  %61 = getelementptr inbounds %struct.afu, %struct.afu* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load %struct.afu*, %struct.afu** %12, align 8
  %66 = load i32, i32* %16, align 4
  %67 = call %struct.hwq* @get_hwq(%struct.afu* %65, i32 %66)
  store %struct.hwq* %67, %struct.hwq** %13, align 8
  %68 = load %struct.hwq*, %struct.hwq** %13, align 8
  %69 = getelementptr inbounds %struct.hwq, %struct.hwq* %68, i32 0, i32 0
  %70 = call i32 @irq_poll_disable(i32* %69)
  br label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %16, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %16, align 4
  br label %58

74:                                               ; preds = %58
  br label %75

75:                                               ; preds = %74, %53
  %76 = load i32, i32* %14, align 4
  %77 = load %struct.afu*, %struct.afu** %12, align 8
  %78 = getelementptr inbounds %struct.afu, %struct.afu* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %75
  store i32 0, i32* %16, align 4
  br label %82

82:                                               ; preds = %97, %81
  %83 = load i32, i32* %16, align 4
  %84 = load %struct.afu*, %struct.afu** %12, align 8
  %85 = getelementptr inbounds %struct.afu, %struct.afu* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %82
  %89 = load %struct.afu*, %struct.afu** %12, align 8
  %90 = load i32, i32* %16, align 4
  %91 = call %struct.hwq* @get_hwq(%struct.afu* %89, i32 %90)
  store %struct.hwq* %91, %struct.hwq** %13, align 8
  %92 = load %struct.hwq*, %struct.hwq** %13, align 8
  %93 = getelementptr inbounds %struct.hwq, %struct.hwq* %92, i32 0, i32 0
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* @cxlflash_irqpoll, align 4
  %96 = call i32 @irq_poll_init(i32* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %16, align 4
  br label %82

100:                                              ; preds = %82
  br label %101

101:                                              ; preds = %100, %75
  %102 = load i64, i64* %9, align 8
  store i64 %102, i64* %5, align 8
  br label %103

103:                                              ; preds = %101, %48, %37, %31
  %104 = load i64, i64* %5, align 8
  ret i64 %104
}

declare dso_local %struct.cxlflash_cfg* @shost_priv(i32) #1

declare dso_local i32 @class_to_shost(%struct.device*) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i64 @afu_is_irqpoll_enabled(%struct.afu*) #1

declare dso_local %struct.hwq* @get_hwq(%struct.afu*, i32) #1

declare dso_local i32 @irq_poll_disable(i32*) #1

declare dso_local i32 @irq_poll_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
