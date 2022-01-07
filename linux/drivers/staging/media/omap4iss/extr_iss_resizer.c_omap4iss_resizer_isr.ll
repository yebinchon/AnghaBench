; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_resizer.c_omap4iss_resizer_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_resizer.c_omap4iss_resizer_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_resizer_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iss_device = type { i32 }
%struct.iss_pipeline = type { i32 }

@ISP5_IRQ_RSZ_FIFO_IN_BLK_ERR = common dso_local global i32 0, align 4
@ISP5_IRQ_RSZ_FIFO_OVF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"RSZ Err: FIFO_IN_BLK:%d, FIFO_OVF:%d\0A\00", align 1
@ISP5_IRQ_RSZ_INT_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap4iss_resizer_isr(%struct.iss_resizer_device* %0, i32 %1) #0 {
  %3 = alloca %struct.iss_resizer_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iss_device*, align 8
  %6 = alloca %struct.iss_pipeline*, align 8
  store %struct.iss_resizer_device* %0, %struct.iss_resizer_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %3, align 8
  %8 = call %struct.iss_device* @to_iss_device(%struct.iss_resizer_device* %7)
  store %struct.iss_device* %8, %struct.iss_device** %5, align 8
  %9 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %3, align 8
  %10 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call %struct.iss_pipeline* @to_iss_pipeline(i32* %11)
  store %struct.iss_pipeline* %12, %struct.iss_pipeline** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ISP5_IRQ_RSZ_FIFO_IN_BLK_ERR, align 4
  %15 = load i32, i32* @ISP5_IRQ_RSZ_FIFO_OVF, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %21 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @ISP5_IRQ_RSZ_FIFO_IN_BLK_ERR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @ISP5_IRQ_RSZ_FIFO_OVF, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  %35 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %34)
  %36 = load %struct.iss_pipeline*, %struct.iss_pipeline** %6, align 8
  %37 = call i32 @omap4iss_pipeline_cancel_stream(%struct.iss_pipeline* %36)
  br label %38

38:                                               ; preds = %19, %2
  %39 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %3, align 8
  %40 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %39, i32 0, i32 1
  %41 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %3, align 8
  %42 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %41, i32 0, i32 0
  %43 = call i64 @omap4iss_module_sync_is_stopping(i32* %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %54

46:                                               ; preds = %38
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @ISP5_IRQ_RSZ_INT_DMA, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %3, align 8
  %53 = call i32 @resizer_isr_buffer(%struct.iss_resizer_device* %52)
  br label %54

54:                                               ; preds = %45, %51, %46
  ret void
}

declare dso_local %struct.iss_device* @to_iss_device(%struct.iss_resizer_device*) #1

declare dso_local %struct.iss_pipeline* @to_iss_pipeline(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @omap4iss_pipeline_cancel_stream(%struct.iss_pipeline*) #1

declare dso_local i64 @omap4iss_module_sync_is_stopping(i32*, i32*) #1

declare dso_local i32 @resizer_isr_buffer(%struct.iss_resizer_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
