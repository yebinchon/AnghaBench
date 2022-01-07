; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt3000.c_dt3k_ai_empty_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt3000.c_dt3k_ai_empty_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.dt3k_private* }
%struct.dt3k_private = type { i32, i32 }
%struct.comedi_subdevice = type { i32 }

@DPR_AD_BUF_FRONT = common dso_local global i64 0, align 8
@DPR_AI_FIFO_DEPTH = common dso_local global i32 0, align 4
@DPR_ADC_BUFFER = common dso_local global i64 0, align 8
@DPR_AD_BUF_REAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @dt3k_ai_empty_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt3k_ai_empty_fifo(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.dt3k_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 1
  %13 = load %struct.dt3k_private*, %struct.dt3k_private** %12, align 8
  store %struct.dt3k_private* %13, %struct.dt3k_private** %5, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DPR_AD_BUF_FRONT, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i8* @readw(i64 %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.dt3k_private*, %struct.dt3k_private** %5, align 8
  %23 = getelementptr inbounds %struct.dt3k_private, %struct.dt3k_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* @DPR_AI_FIFO_DEPTH, align 4
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %28, %2
  %33 = load %struct.dt3k_private*, %struct.dt3k_private** %5, align 8
  %34 = getelementptr inbounds %struct.dt3k_private, %struct.dt3k_private* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %60, %32
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  %41 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %42 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DPR_ADC_BUFFER, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = call i8* @readw(i64 %48)
  %50 = ptrtoint i8* %49 to i16
  store i16 %50, i16* %10, align 2
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %52 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %51, i16* %10, i32 1)
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @DPR_AI_FIFO_DEPTH, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %58, %40
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %36

63:                                               ; preds = %36
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.dt3k_private*, %struct.dt3k_private** %5, align 8
  %66 = getelementptr inbounds %struct.dt3k_private, %struct.dt3k_private* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DPR_AD_BUF_REAR, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writew(i32 %67, i64 %72)
  ret void
}

declare dso_local i8* @readw(i64) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i16*, i32) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
