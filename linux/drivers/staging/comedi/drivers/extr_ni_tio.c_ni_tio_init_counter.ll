; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_init_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_init_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i32** }

@GI_SYNC_GATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ni_tio_init_counter(%struct.ni_gpct* %0) #0 {
  %2 = alloca %struct.ni_gpct*, align 8
  %3 = alloca %struct.ni_gpct_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %2, align 8
  %6 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %7 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %6, i32 0, i32 2
  %8 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %7, align 8
  store %struct.ni_gpct_device* %8, %struct.ni_gpct_device** %3, align 8
  %9 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %10 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %13 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %16 = call i32 @ni_tio_reset_count_and_disarm(%struct.ni_gpct* %15)
  %17 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %3, align 8
  %18 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %17, i32 0, i32 0
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @NITIO_AUTO_INC_REG(i32 %24)
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 0, i32* %26, align 4
  %27 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @NITIO_AUTO_INC_REG(i32 %28)
  %30 = call i32 @ni_tio_write(%struct.ni_gpct* %27, i32 0, i64 %29)
  %31 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @NITIO_CMD_REG(i32 %32)
  %34 = load i32, i32* @GI_SYNC_GATE, align 4
  %35 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %31, i32 %33, i32 -1, i32 %34)
  %36 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @NITIO_MODE_REG(i32 %37)
  %39 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %36, i32 %38, i32 -1, i32 0)
  %40 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %3, align 8
  %41 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @NITIO_LOADA_REG(i32 %47)
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 0, i32* %49, align 4
  %50 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i64 @NITIO_LOADA_REG(i32 %51)
  %53 = call i32 @ni_tio_write(%struct.ni_gpct* %50, i32 0, i64 %52)
  %54 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %3, align 8
  %55 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @NITIO_LOADB_REG(i32 %61)
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 0, i32* %63, align 4
  %64 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i64 @NITIO_LOADB_REG(i32 %65)
  %67 = call i32 @ni_tio_write(%struct.ni_gpct* %64, i32 0, i64 %66)
  %68 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @NITIO_INPUT_SEL_REG(i32 %69)
  %71 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %68, i32 %70, i32 -1, i32 0)
  %72 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %3, align 8
  %73 = call i64 @ni_tio_counting_mode_registers_present(%struct.ni_gpct_device* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %1
  %76 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @NITIO_CNT_MODE_REG(i32 %77)
  %79 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %76, i32 %78, i32 -1, i32 0)
  br label %80

80:                                               ; preds = %75, %1
  %81 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %3, align 8
  %82 = call i64 @ni_tio_has_gate2_registers(%struct.ni_gpct_device* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %80
  %85 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %3, align 8
  %86 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %85, i32 0, i32 0
  %87 = load i32**, i32*** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i64 @NITIO_GATE2_REG(i32 %92)
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 0, i32* %94, align 4
  %95 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i64 @NITIO_GATE2_REG(i32 %96)
  %98 = call i32 @ni_tio_write(%struct.ni_gpct* %95, i32 0, i64 %97)
  br label %99

99:                                               ; preds = %84, %80
  %100 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @NITIO_DMA_CFG_REG(i32 %101)
  %103 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %100, i32 %102, i32 -1, i32 0)
  %104 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @NITIO_INT_ENA_REG(i32 %105)
  %107 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %104, i32 %106, i32 -1, i32 0)
  ret void
}

declare dso_local i32 @ni_tio_reset_count_and_disarm(%struct.ni_gpct*) #1

declare dso_local i64 @NITIO_AUTO_INC_REG(i32) #1

declare dso_local i32 @ni_tio_write(%struct.ni_gpct*, i32, i64) #1

declare dso_local i32 @ni_tio_set_bits(%struct.ni_gpct*, i32, i32, i32) #1

declare dso_local i32 @NITIO_CMD_REG(i32) #1

declare dso_local i32 @NITIO_MODE_REG(i32) #1

declare dso_local i64 @NITIO_LOADA_REG(i32) #1

declare dso_local i64 @NITIO_LOADB_REG(i32) #1

declare dso_local i32 @NITIO_INPUT_SEL_REG(i32) #1

declare dso_local i64 @ni_tio_counting_mode_registers_present(%struct.ni_gpct_device*) #1

declare dso_local i32 @NITIO_CNT_MODE_REG(i32) #1

declare dso_local i64 @ni_tio_has_gate2_registers(%struct.ni_gpct_device*) #1

declare dso_local i64 @NITIO_GATE2_REG(i32) #1

declare dso_local i32 @NITIO_DMA_CFG_REG(i32) #1

declare dso_local i32 @NITIO_INT_ENA_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
