; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@DMM32AT_CTRL_RESETA = common dso_local global i32 0, align 4
@DMM32AT_CTRL_REG = common dso_local global i64 0, align 8
@DMM32AT_FIFO_CTRL_REG = common dso_local global i64 0, align 8
@DMM32AT_INTCLK_REG = common dso_local global i64 0, align 8
@DMM32AT_AI_LO_CHAN_REG = common dso_local global i64 0, align 8
@DMM32AT_AI_HI_CHAN_REG = common dso_local global i64 0, align 8
@DMM32AT_RANGE_U10 = common dso_local global i32 0, align 4
@DMM32AT_AI_CFG_REG = common dso_local global i64 0, align 8
@DMM32AT_FIFO_STATUS_REG = common dso_local global i64 0, align 8
@DMM32AT_AI_STATUS_REG = common dso_local global i64 0, align 8
@DMM32AT_AI_READBACK_REG = common dso_local global i64 0, align 8
@DMM32AT_FIFO_STATUS_EF = common dso_local global i8 0, align 1
@DMM32AT_AI_STATUS_SD1 = common dso_local global i8 0, align 1
@DMM32AT_AI_STATUS_SD0 = common dso_local global i8 0, align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @dmm32at_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmm32at_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %10 = load i32, i32* @DMM32AT_CTRL_RESETA, align 4
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DMM32AT_CTRL_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @outb(i32 %10, i64 %15)
  %17 = call i32 @usleep_range(i32 1000, i32 3000)
  %18 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DMM32AT_FIFO_CTRL_REG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @outb(i32 0, i64 %22)
  %24 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DMM32AT_INTCLK_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outb(i32 0, i64 %28)
  %30 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DMM32AT_AI_LO_CHAN_REG, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outb(i32 128, i64 %34)
  %36 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DMM32AT_AI_HI_CHAN_REG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @outb(i32 255, i64 %40)
  %42 = load i32, i32* @DMM32AT_RANGE_U10, align 4
  %43 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DMM32AT_AI_CFG_REG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outb(i32 %42, i64 %47)
  %49 = call i32 @usleep_range(i32 100, i32 200)
  %50 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DMM32AT_AI_LO_CHAN_REG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call zeroext i8 @inb(i64 %54)
  store i8 %55, i8* %5, align 1
  %56 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DMM32AT_AI_HI_CHAN_REG, align 8
  %60 = add nsw i64 %58, %59
  %61 = call zeroext i8 @inb(i64 %60)
  store i8 %61, i8* %4, align 1
  %62 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %63 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DMM32AT_FIFO_STATUS_REG, align 8
  %66 = add nsw i64 %64, %65
  %67 = call zeroext i8 @inb(i64 %66)
  store i8 %67, i8* %6, align 1
  %68 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DMM32AT_AI_STATUS_REG, align 8
  %72 = add nsw i64 %70, %71
  %73 = call zeroext i8 @inb(i64 %72)
  store i8 %73, i8* %7, align 1
  %74 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DMM32AT_INTCLK_REG, align 8
  %78 = add nsw i64 %76, %77
  %79 = call zeroext i8 @inb(i64 %78)
  store i8 %79, i8* %8, align 1
  %80 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %81 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @DMM32AT_AI_READBACK_REG, align 8
  %84 = add nsw i64 %82, %83
  %85 = call zeroext i8 @inb(i64 %84)
  store i8 %85, i8* %9, align 1
  %86 = load i8, i8* %5, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %116, label %89

89:                                               ; preds = %1
  %90 = load i8, i8* %4, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp ne i32 %91, 31
  br i1 %92, label %116, label %93

93:                                               ; preds = %89
  %94 = load i8, i8* %6, align 1
  %95 = zext i8 %94 to i32
  %96 = load i8, i8* @DMM32AT_FIFO_STATUS_EF, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp ne i32 %95, %97
  br i1 %98, label %116, label %99

99:                                               ; preds = %93
  %100 = load i8, i8* %7, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8, i8* @DMM32AT_AI_STATUS_SD1, align 1
  %103 = zext i8 %102 to i32
  %104 = load i8, i8* @DMM32AT_AI_STATUS_SD0, align 1
  %105 = zext i8 %104 to i32
  %106 = or i32 %103, %105
  %107 = icmp ne i32 %101, %106
  br i1 %107, label %116, label %108

108:                                              ; preds = %99
  %109 = load i8, i8* %8, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i8, i8* %9, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp ne i32 %114, 12
  br i1 %115, label %116, label %119

116:                                              ; preds = %112, %108, %99, %93, %89, %1
  %117 = load i32, i32* @EIO, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %120

119:                                              ; preds = %112
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %119, %116
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local zeroext i8 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
