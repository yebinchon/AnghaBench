; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_ai_dma_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_ai_dma_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.dt282x_private* }
%struct.dt282x_private = type { i32, i64, i32, %struct.comedi_isadma* }
%struct.comedi_isadma = type { i64, %struct.comedi_isadma_desc* }
%struct.comedi_isadma_desc = type { i32, i32, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DT2821_SUPCSR_CLRDMADNE = common dso_local global i32 0, align 4
@DT2821_SUPCSR_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"nread off by one\0A\00", align 1
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@DT2821_SUPCSR_DDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @dt282x_ai_dma_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt282x_ai_dma_interrupt(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.dt282x_private*, align 8
  %6 = alloca %struct.comedi_isadma*, align 8
  %7 = alloca %struct.comedi_isadma_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 2
  %12 = load %struct.dt282x_private*, %struct.dt282x_private** %11, align 8
  store %struct.dt282x_private* %12, %struct.dt282x_private** %5, align 8
  %13 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %14 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %13, i32 0, i32 3
  %15 = load %struct.comedi_isadma*, %struct.comedi_isadma** %14, align 8
  store %struct.comedi_isadma* %15, %struct.comedi_isadma** %6, align 8
  %16 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %16, i32 0, i32 1
  %18 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %17, align 8
  %19 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %18, i64 %21
  store %struct.comedi_isadma_desc* %22, %struct.comedi_isadma_desc** %7, align 8
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %24 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %7, align 8
  %25 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %23, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %29 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DT2821_SUPCSR_CLRDMADNE, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DT2821_SUPCSR_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outw(i32 %32, i64 %37)
  %39 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %7, align 8
  %40 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @comedi_isadma_disable(i32 %41)
  %43 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %45 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %7, align 8
  %46 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %7, align 8
  %49 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dt282x_munge(%struct.comedi_device* %43, %struct.comedi_subdevice* %44, i32 %47, i32 %50)
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %53 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %7, align 8
  %54 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %52, i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %7, align 8
  %60 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %2
  br label %107

64:                                               ; preds = %2
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %68 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %69, %66
  store i64 %70, i64* %68, align 8
  %71 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %72 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %64
  %76 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dev_info(i32 %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %81 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %75, %64
  %83 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %84 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @COMEDI_CB_EOA, align 4
  %89 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %90 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %88
  store i32 %94, i32* %92, align 4
  br label %107

95:                                               ; preds = %82
  %96 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %97 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %98 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @dt282x_prep_ai_dma(%struct.comedi_device* %96, i64 %99, i32 0)
  %101 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %102 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub i64 1, %103
  %105 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %106 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %95, %87, %63
  ret void
}

declare dso_local i32 @comedi_bytes_to_samples(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @comedi_isadma_disable(i32) #1

declare dso_local i32 @dt282x_munge(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @dt282x_prep_ai_dma(%struct.comedi_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
