; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_h264.c_cedrus_h264_irq_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_h264.c_cedrus_h264_irq_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cedrus_ctx = type { %struct.cedrus_dev* }
%struct.cedrus_dev = type { i32 }

@VE_H264_STATUS = common dso_local global i32 0, align 4
@VE_H264_STATUS_DECODE_ERR_INT = common dso_local global i32 0, align 4
@VE_H264_STATUS_VLD_DATA_REQ_INT = common dso_local global i32 0, align 4
@CEDRUS_IRQ_ERROR = common dso_local global i32 0, align 4
@VE_H264_CTRL_SLICE_DECODE_INT = common dso_local global i32 0, align 4
@CEDRUS_IRQ_OK = common dso_local global i32 0, align 4
@CEDRUS_IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cedrus_ctx*)* @cedrus_h264_irq_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cedrus_h264_irq_status(%struct.cedrus_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cedrus_ctx*, align 8
  %4 = alloca %struct.cedrus_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.cedrus_ctx* %0, %struct.cedrus_ctx** %3, align 8
  %6 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %6, i32 0, i32 0
  %8 = load %struct.cedrus_dev*, %struct.cedrus_dev** %7, align 8
  store %struct.cedrus_dev* %8, %struct.cedrus_dev** %4, align 8
  %9 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %10 = load i32, i32* @VE_H264_STATUS, align 4
  %11 = call i32 @cedrus_read(%struct.cedrus_dev* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @VE_H264_STATUS_DECODE_ERR_INT, align 4
  %14 = load i32, i32* @VE_H264_STATUS_VLD_DATA_REQ_INT, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @CEDRUS_IRQ_ERROR, align 4
  store i32 %19, i32* %2, align 4
  br label %29

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @VE_H264_CTRL_SLICE_DECODE_INT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @CEDRUS_IRQ_OK, align 4
  store i32 %26, i32* %2, align 4
  br label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @CEDRUS_IRQ_NONE, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %25, %18
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @cedrus_read(%struct.cedrus_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
