; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_chip.c_ddk750_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_chip.c_ddk750_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initchip_param = type { i64, i32, i32, i32, i32, i64 }

@CURRENT_GATE = common dso_local global i32 0, align 4
@CURRENT_GATE_DISPLAY = common dso_local global i32 0, align 4
@CURRENT_GATE_LOCALMEM = common dso_local global i32 0, align 4
@SM750LE = common dso_local global i64 0, align 8
@VGA_CONFIGURATION = common dso_local global i32 0, align 4
@VGA_CONFIGURATION_PLL = common dso_local global i32 0, align 4
@VGA_CONFIGURATION_MODE = common dso_local global i32 0, align 4
@MISC_CTRL = common dso_local global i32 0, align 4
@MISC_CTRL_LOCALMEM_RESET = common dso_local global i32 0, align 4
@VIDEO_DISPLAY_CTRL = common dso_local global i32 0, align 4
@DISPLAY_CTRL_PLANE = common dso_local global i32 0, align 4
@VIDEO_ALPHA_DISPLAY_CTRL = common dso_local global i32 0, align 4
@ALPHA_DISPLAY_CTRL = common dso_local global i32 0, align 4
@DMA_ABORT_INTERRUPT = common dso_local global i32 0, align 4
@DMA_ABORT_INTERRUPT_ABORT_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddk750_init_hw(%struct.initchip_param* %0) #0 {
  %2 = alloca %struct.initchip_param*, align 8
  %3 = alloca i32, align 4
  store %struct.initchip_param* %0, %struct.initchip_param** %2, align 8
  %4 = load %struct.initchip_param*, %struct.initchip_param** %2, align 8
  %5 = getelementptr inbounds %struct.initchip_param, %struct.initchip_param* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.initchip_param*, %struct.initchip_param** %2, align 8
  %10 = getelementptr inbounds %struct.initchip_param, %struct.initchip_param* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.initchip_param*, %struct.initchip_param** %2, align 8
  %13 = getelementptr inbounds %struct.initchip_param, %struct.initchip_param* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @sm750_set_power_mode(i64 %14)
  %16 = load i32, i32* @CURRENT_GATE, align 4
  %17 = call i32 @peek32(i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @CURRENT_GATE_DISPLAY, align 4
  %19 = load i32, i32* @CURRENT_GATE_LOCALMEM, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @sm750_set_current_gate(i32 %23)
  %25 = call i64 (...) @sm750_get_chip_type()
  %26 = load i64, i64* @SM750LE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %11
  %29 = load i32, i32* @VGA_CONFIGURATION, align 4
  %30 = call i32 @peek32(i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @VGA_CONFIGURATION_PLL, align 4
  %32 = load i32, i32* @VGA_CONFIGURATION_MODE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @VGA_CONFIGURATION, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @poke32(i32 %36, i32 %37)
  br label %42

39:                                               ; preds = %11
  %40 = call i32 @outb_p(i32 136, i32 980)
  %41 = call i32 @outb_p(i32 6, i32 981)
  br label %42

42:                                               ; preds = %39, %28
  %43 = load %struct.initchip_param*, %struct.initchip_param** %2, align 8
  %44 = getelementptr inbounds %struct.initchip_param, %struct.initchip_param* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @MHz(i32 %46)
  %48 = call i32 @set_chip_clock(i32 %47)
  %49 = load %struct.initchip_param*, %struct.initchip_param** %2, align 8
  %50 = getelementptr inbounds %struct.initchip_param, %struct.initchip_param* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @MHz(i32 %51)
  %53 = call i32 @set_memory_clock(i32 %52)
  %54 = load %struct.initchip_param*, %struct.initchip_param** %2, align 8
  %55 = getelementptr inbounds %struct.initchip_param, %struct.initchip_param* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @MHz(i32 %56)
  %58 = call i32 @set_master_clock(i32 %57)
  %59 = load %struct.initchip_param*, %struct.initchip_param** %2, align 8
  %60 = getelementptr inbounds %struct.initchip_param, %struct.initchip_param* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %79

63:                                               ; preds = %42
  %64 = load i32, i32* @MISC_CTRL, align 4
  %65 = call i32 @peek32(i32 %64)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* @MISC_CTRL_LOCALMEM_RESET, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %3, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* @MISC_CTRL, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @poke32(i32 %70, i32 %71)
  %73 = load i32, i32* @MISC_CTRL_LOCALMEM_RESET, align 4
  %74 = load i32, i32* %3, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* @MISC_CTRL, align 4
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @poke32(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %63, %42
  %80 = load %struct.initchip_param*, %struct.initchip_param** %2, align 8
  %81 = getelementptr inbounds %struct.initchip_param, %struct.initchip_param* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %122

84:                                               ; preds = %79
  %85 = call i32 @sm750_enable_2d_engine(i32 0)
  %86 = load i32, i32* @VIDEO_DISPLAY_CTRL, align 4
  %87 = call i32 @peek32(i32 %86)
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* @DISPLAY_CTRL_PLANE, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %3, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %3, align 4
  %92 = load i32, i32* @VIDEO_DISPLAY_CTRL, align 4
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @poke32(i32 %92, i32 %93)
  %95 = load i32, i32* @VIDEO_ALPHA_DISPLAY_CTRL, align 4
  %96 = call i32 @peek32(i32 %95)
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* @DISPLAY_CTRL_PLANE, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %3, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %3, align 4
  %101 = load i32, i32* @VIDEO_ALPHA_DISPLAY_CTRL, align 4
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @poke32(i32 %101, i32 %102)
  %104 = load i32, i32* @ALPHA_DISPLAY_CTRL, align 4
  %105 = call i32 @peek32(i32 %104)
  store i32 %105, i32* %3, align 4
  %106 = load i32, i32* @DISPLAY_CTRL_PLANE, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %3, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %3, align 4
  %110 = load i32, i32* @ALPHA_DISPLAY_CTRL, align 4
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @poke32(i32 %110, i32 %111)
  %113 = load i32, i32* @DMA_ABORT_INTERRUPT, align 4
  %114 = call i32 @peek32(i32 %113)
  store i32 %114, i32* %3, align 4
  %115 = load i32, i32* @DMA_ABORT_INTERRUPT_ABORT_1, align 4
  %116 = load i32, i32* %3, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* @DMA_ABORT_INTERRUPT, align 4
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @poke32(i32 %118, i32 %119)
  %121 = call i32 @sm750_enable_dma(i32 0)
  br label %122

122:                                              ; preds = %84, %79
  ret i32 0
}

declare dso_local i32 @sm750_set_power_mode(i64) #1

declare dso_local i32 @peek32(i32) #1

declare dso_local i32 @sm750_set_current_gate(i32) #1

declare dso_local i64 @sm750_get_chip_type(...) #1

declare dso_local i32 @poke32(i32, i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @set_chip_clock(i32) #1

declare dso_local i32 @MHz(i32) #1

declare dso_local i32 @set_memory_clock(i32) #1

declare dso_local i32 @set_master_clock(i32) #1

declare dso_local i32 @sm750_enable_2d_engine(i32) #1

declare dso_local i32 @sm750_enable_dma(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
