; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i32, %struct.comedi_subdevice*, %struct.das16_private_struct* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64 }
%struct.das16_private_struct = type { i32, %struct.comedi_isadma* }
%struct.comedi_isadma = type { i64, %struct.comedi_isadma_desc* }
%struct.comedi_isadma_desc = type { i32, i32, i32 }

@DAS16_CTRL_DMAE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"residue > transfer size!\0A\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @das16_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @das16_interrupt(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.das16_private_struct*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.comedi_async*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca %struct.comedi_isadma*, align 8
  %8 = alloca %struct.comedi_isadma_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 3
  %15 = load %struct.das16_private_struct*, %struct.das16_private_struct** %14, align 8
  store %struct.das16_private_struct* %15, %struct.das16_private_struct** %3, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 2
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %17, align 8
  store %struct.comedi_subdevice* %18, %struct.comedi_subdevice** %4, align 8
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %20 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 0
  %21 = load %struct.comedi_async*, %struct.comedi_async** %20, align 8
  store %struct.comedi_async* %21, %struct.comedi_async** %5, align 8
  %22 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %23 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %22, i32 0, i32 2
  store %struct.comedi_cmd* %23, %struct.comedi_cmd** %6, align 8
  %24 = load %struct.das16_private_struct*, %struct.das16_private_struct** %3, align 8
  %25 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %24, i32 0, i32 1
  %26 = load %struct.comedi_isadma*, %struct.comedi_isadma** %25, align 8
  store %struct.comedi_isadma* %26, %struct.comedi_isadma** %7, align 8
  %27 = load %struct.comedi_isadma*, %struct.comedi_isadma** %7, align 8
  %28 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %27, i32 0, i32 1
  %29 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %28, align 8
  %30 = load %struct.comedi_isadma*, %struct.comedi_isadma** %7, align 8
  %31 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %29, i64 %32
  store %struct.comedi_isadma_desc* %33, %struct.comedi_isadma_desc** %8, align 8
  %34 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 0
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.das16_private_struct*, %struct.das16_private_struct** %3, align 8
  %39 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @DAS16_CTRL_DMAE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %1
  %45 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 0
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  br label %128

49:                                               ; preds = %1
  %50 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %8, align 8
  %51 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %54 = call i32 @comedi_bytes_per_sample(%struct.comedi_subdevice* %53)
  %55 = call i32 @comedi_isadma_disable_on_sample(i32 %52, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %8, align 8
  %58 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ugt i32 %56, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %49
  %62 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %63 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %67 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %68 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  store i32 0, i32* %11, align 4
  br label %77

71:                                               ; preds = %49
  %72 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %8, align 8
  %73 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %10, align 4
  %76 = sub i32 %74, %75
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %71, %61
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %78, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %77
  %84 = load %struct.comedi_isadma*, %struct.comedi_isadma** %7, align 8
  %85 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = sub i64 1, %86
  %88 = load %struct.comedi_isadma*, %struct.comedi_isadma** %7, align 8
  %89 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %91 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @das16_ai_setup_dma(%struct.comedi_device* %90, %struct.comedi_subdevice* %91, i32 %92)
  br label %94

94:                                               ; preds = %83, %77
  %95 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %96 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %95, i32 0, i32 0
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* %96, i64 %97)
  %99 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %100 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %8, align 8
  %101 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %99, i32 %102, i32 %103)
  %105 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %106 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @TRIG_COUNT, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %94
  %111 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %112 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %115 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp sge i64 %113, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = load i32, i32* @COMEDI_CB_EOA, align 4
  %120 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %121 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %118, %110, %94
  %125 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %126 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %127 = call i32 @comedi_handle_events(%struct.comedi_device* %125, %struct.comedi_subdevice* %126)
  br label %128

128:                                              ; preds = %124, %44
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @comedi_isadma_disable_on_sample(i32, i32) #1

declare dso_local i32 @comedi_bytes_per_sample(%struct.comedi_subdevice*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @comedi_bytes_to_samples(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @das16_ai_setup_dma(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
