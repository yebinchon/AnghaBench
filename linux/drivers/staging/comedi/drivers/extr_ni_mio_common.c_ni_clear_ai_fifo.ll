; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_clear_ai_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_clear_ai_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.ni_private* }
%struct.ni_private = type { i64, i64 }

@ni_clear_ai_fifo.timeout = internal constant i32 10000, align 4
@NI6143_AI_FIFO_CTRL_REG = common dso_local global i32 0, align 4
@NI6143_AI_FIFO_STATUS_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"FIFO flush timeout\0A\00", align 1
@NISTC_ADC_FIFO_CLR_REG = common dso_local global i32 0, align 4
@NISTC_AI_CMD1_CONVERT_PULSE = common dso_local global i32 0, align 4
@NISTC_AI_CMD1_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @ni_clear_ai_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_clear_ai_fifo(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.ni_private*, align 8
  %4 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 1
  %7 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  store %struct.ni_private* %7, %struct.ni_private** %3, align 8
  %8 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %9 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %1
  %13 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %14 = load i32, i32* @NI6143_AI_FIFO_CTRL_REG, align 4
  %15 = call i32 @ni_writel(%struct.comedi_device* %13, i32 16, i32 %14)
  %16 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %17 = load i32, i32* @NI6143_AI_FIFO_CTRL_REG, align 4
  %18 = call i32 @ni_writel(%struct.comedi_device* %16, i32 0, i32 %17)
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %31, %12
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 10000
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %24 = load i32, i32* @NI6143_AI_FIFO_STATUS_REG, align 4
  %25 = call i32 @ni_readl(%struct.comedi_device* %23, i32 %24)
  %26 = and i32 %25, 16
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %34

29:                                               ; preds = %22
  %30 = call i32 @udelay(i32 1)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %19

34:                                               ; preds = %28, %19
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 10000
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %34
  br label %59

43:                                               ; preds = %1
  %44 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %45 = load i32, i32* @NISTC_ADC_FIFO_CLR_REG, align 4
  %46 = call i32 @ni_stc_writew(%struct.comedi_device* %44, i32 1, i32 %45)
  %47 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %48 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %53 = call i32 @NI_M_STATIC_AI_CTRL_REG(i32 0)
  %54 = call i32 @ni_writeb(%struct.comedi_device* %52, i32 0, i32 %53)
  %55 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %56 = call i32 @NI_M_STATIC_AI_CTRL_REG(i32 0)
  %57 = call i32 @ni_writeb(%struct.comedi_device* %55, i32 1, i32 %56)
  br label %58

58:                                               ; preds = %51, %43
  br label %59

59:                                               ; preds = %58, %42
  ret void
}

declare dso_local i32 @ni_writel(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_readl(%struct.comedi_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_writeb(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @NI_M_STATIC_AI_CTRL_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
