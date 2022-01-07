; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_hw.c_hw_sm750_inithw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_hw.c_hw_sm750_inithw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm750_dev = type { i32, i32, i32, i64, %struct.init_status }
%struct.init_status = type { i32, i64, i32 }
%struct.pci_dev = type { i32 }
%struct.initchip_param = type { i32 }

@SM750LE = common dso_local global i64 0, align 8
@DEFAULT_SM750LE_CHIP_CLOCK = common dso_local global i32 0, align 4
@DEFAULT_SM750_CHIP_CLOCK = common dso_local global i32 0, align 4
@SYSTEM_CTRL = common dso_local global i32 0, align 4
@SYSTEM_CTRL_PCI_BURST = common dso_local global i32 0, align 4
@MISC_CTRL = common dso_local global i32 0, align 4
@MISC_CTRL_DAC_POWER_OFF = common dso_local global i32 0, align 4
@SYSTEM_CTRL_DPMS_MASK = common dso_local global i32 0, align 4
@SYSTEM_CTRL_DPMS_VPHN = common dso_local global i32 0, align 4
@SYSTEM_CTRL_DPMS_VPHP = common dso_local global i32 0, align 4
@PANEL_DISPLAY_CTRL = common dso_local global i32 0, align 4
@PANEL_DISPLAY_CTRL_DUAL_DISPLAY = common dso_local global i32 0, align 4
@PANEL_DISPLAY_CTRL_DOUBLE_PIXEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"yes,CH7301 DVI chip found\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"okay,CH7301 DVI chip setup done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hw_sm750_inithw(%struct.sm750_dev* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.sm750_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.init_status*, align 8
  %6 = alloca i32, align 4
  store %struct.sm750_dev* %0, %struct.sm750_dev** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %7 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %8 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %7, i32 0, i32 4
  store %struct.init_status* %8, %struct.init_status** %5, align 8
  %9 = load %struct.init_status*, %struct.init_status** %5, align 8
  %10 = getelementptr inbounds %struct.init_status, %struct.init_status* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = call i64 (...) @sm750_get_chip_type()
  %15 = load i64, i64* @SM750LE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @DEFAULT_SM750LE_CHIP_CLOCK, align 4
  br label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @DEFAULT_SM750_CHIP_CLOCK, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = load %struct.init_status*, %struct.init_status** %5, align 8
  %24 = getelementptr inbounds %struct.init_status, %struct.init_status* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %21, %2
  %26 = load %struct.init_status*, %struct.init_status** %5, align 8
  %27 = getelementptr inbounds %struct.init_status, %struct.init_status* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.init_status*, %struct.init_status** %5, align 8
  %32 = getelementptr inbounds %struct.init_status, %struct.init_status* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = load %struct.init_status*, %struct.init_status** %5, align 8
  %36 = getelementptr inbounds %struct.init_status, %struct.init_status* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %30, %25
  %38 = load %struct.init_status*, %struct.init_status** %5, align 8
  %39 = getelementptr inbounds %struct.init_status, %struct.init_status* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.init_status*, %struct.init_status** %5, align 8
  %44 = getelementptr inbounds %struct.init_status, %struct.init_status* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sdiv i32 %45, 3
  %47 = load %struct.init_status*, %struct.init_status** %5, align 8
  %48 = getelementptr inbounds %struct.init_status, %struct.init_status* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %42, %37
  %50 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %51 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %50, i32 0, i32 4
  %52 = bitcast %struct.init_status* %51 to %struct.initchip_param*
  %53 = call i32 @ddk750_init_hw(%struct.initchip_param* %52)
  %54 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %55 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 1816
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = load i32, i32* @SYSTEM_CTRL, align 4
  %60 = load i32, i32* @SYSTEM_CTRL, align 4
  %61 = call i32 @peek32(i32 %60)
  %62 = load i32, i32* @SYSTEM_CTRL_PCI_BURST, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @poke32(i32 %59, i32 %63)
  br label %65

65:                                               ; preds = %58, %49
  %66 = call i64 (...) @sm750_get_chip_type()
  %67 = load i64, i64* @SM750LE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %135

69:                                               ; preds = %65
  %70 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %71 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %69
  %75 = load i32, i32* @MISC_CTRL, align 4
  %76 = load i32, i32* @MISC_CTRL, align 4
  %77 = call i32 @peek32(i32 %76)
  %78 = load i32, i32* @MISC_CTRL_DAC_POWER_OFF, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @poke32(i32 %75, i32 %79)
  %81 = load i32, i32* @SYSTEM_CTRL, align 4
  %82 = call i32 @peek32(i32 %81)
  %83 = load i32, i32* @SYSTEM_CTRL_DPMS_MASK, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* @SYSTEM_CTRL_DPMS_VPHN, align 4
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* @SYSTEM_CTRL, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @poke32(i32 %89, i32 %90)
  br label %111

92:                                               ; preds = %69
  %93 = load i32, i32* @MISC_CTRL, align 4
  %94 = load i32, i32* @MISC_CTRL, align 4
  %95 = call i32 @peek32(i32 %94)
  %96 = load i32, i32* @MISC_CTRL_DAC_POWER_OFF, align 4
  %97 = xor i32 %96, -1
  %98 = and i32 %95, %97
  %99 = call i32 @poke32(i32 %93, i32 %98)
  %100 = load i32, i32* @SYSTEM_CTRL, align 4
  %101 = call i32 @peek32(i32 %100)
  %102 = load i32, i32* @SYSTEM_CTRL_DPMS_MASK, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %101, %103
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* @SYSTEM_CTRL_DPMS_VPHP, align 4
  %106 = load i32, i32* %6, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* @SYSTEM_CTRL, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @poke32(i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %92, %74
  %112 = load i32, i32* @PANEL_DISPLAY_CTRL, align 4
  %113 = call i32 @peek32(i32 %112)
  %114 = load i32, i32* @PANEL_DISPLAY_CTRL_DUAL_DISPLAY, align 4
  %115 = load i32, i32* @PANEL_DISPLAY_CTRL_DOUBLE_PIXEL, align 4
  %116 = or i32 %114, %115
  %117 = xor i32 %116, -1
  %118 = and i32 %113, %117
  store i32 %118, i32* %6, align 4
  %119 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %120 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  switch i32 %121, label %131 [
    i32 130, label %122
    i32 129, label %123
    i32 128, label %127
  ]

122:                                              ; preds = %111
  br label %131

123:                                              ; preds = %111
  %124 = load i32, i32* @PANEL_DISPLAY_CTRL_DOUBLE_PIXEL, align 4
  %125 = load i32, i32* %6, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %6, align 4
  br label %131

127:                                              ; preds = %111
  %128 = load i32, i32* @PANEL_DISPLAY_CTRL_DUAL_DISPLAY, align 4
  %129 = load i32, i32* %6, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %111, %127, %123, %122
  %132 = load i32, i32* @PANEL_DISPLAY_CTRL, align 4
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @poke32(i32 %132, i32 %133)
  br label %146

135:                                              ; preds = %65
  %136 = call i32 @sm750_sw_i2c_init(i32 0, i32 1)
  %137 = call i32 @sm750_sw_i2c_read_reg(i32 236, i32 74)
  %138 = icmp eq i32 %137, 149
  br i1 %138, label %139, label %145

139:                                              ; preds = %135
  %140 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %141 = call i32 @sm750_sw_i2c_write_reg(i32 236, i32 29, i32 22)
  %142 = call i32 @sm750_sw_i2c_write_reg(i32 236, i32 33, i32 9)
  %143 = call i32 @sm750_sw_i2c_write_reg(i32 236, i32 73, i32 192)
  %144 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %145

145:                                              ; preds = %139, %135
  br label %146

146:                                              ; preds = %145, %131
  %147 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %148 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %146
  %152 = load %struct.sm750_dev*, %struct.sm750_dev** %3, align 8
  %153 = call i32 @hw_sm750_initAccel(%struct.sm750_dev* %152)
  br label %154

154:                                              ; preds = %151, %146
  ret i32 0
}

declare dso_local i64 @sm750_get_chip_type(...) #1

declare dso_local i32 @ddk750_init_hw(%struct.initchip_param*) #1

declare dso_local i32 @poke32(i32, i32) #1

declare dso_local i32 @peek32(i32) #1

declare dso_local i32 @sm750_sw_i2c_init(i32, i32) #1

declare dso_local i32 @sm750_sw_i2c_read_reg(i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @sm750_sw_i2c_write_reg(i32, i32, i32) #1

declare dso_local i32 @hw_sm750_initAccel(%struct.sm750_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
