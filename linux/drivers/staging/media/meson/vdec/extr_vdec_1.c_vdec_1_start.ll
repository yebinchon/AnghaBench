; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec_1.c_vdec_1_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec_1.c_vdec_1_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amvdec_session = type { i64, %struct.TYPE_2__*, %struct.amvdec_core* }
%struct.TYPE_2__ = type { i32, %struct.amvdec_codec_ops* }
%struct.amvdec_codec_ops = type { {}* }
%struct.amvdec_core = type { i32, i32 }

@AO_RTI_GEN_PWR_SLEEP0 = common dso_local global i32 0, align 4
@GEN_PWR_VDEC_1 = common dso_local global i32 0, align 4
@DOS_SW_RESET0 = common dso_local global i32 0, align 4
@DOS_GCLK_EN0 = common dso_local global i32 0, align 4
@DOS_MEM_PD_VDEC = common dso_local global i32 0, align 4
@AO_RTI_GEN_PWR_ISO0 = common dso_local global i32 0, align 4
@DOS_VDEC_MCRCC_STALL_CTRL = common dso_local global i32 0, align 4
@GCLK_EN = common dso_local global i32 0, align 4
@MDEC_PIC_DC_CTRL = common dso_local global i32 0, align 4
@ASSIST_MBOX1_CLR_REG = common dso_local global i32 0, align 4
@ASSIST_MBOX1_MASK = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV12M = common dso_local global i64 0, align 8
@MPSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amvdec_session*)* @vdec_1_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_1_start(%struct.amvdec_session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amvdec_session*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amvdec_core*, align 8
  %6 = alloca %struct.amvdec_codec_ops*, align 8
  store %struct.amvdec_session* %0, %struct.amvdec_session** %3, align 8
  %7 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %8 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %7, i32 0, i32 2
  %9 = load %struct.amvdec_core*, %struct.amvdec_core** %8, align 8
  store %struct.amvdec_core* %9, %struct.amvdec_core** %5, align 8
  %10 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %11 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.amvdec_codec_ops*, %struct.amvdec_codec_ops** %13, align 8
  store %struct.amvdec_codec_ops* %14, %struct.amvdec_codec_ops** %6, align 8
  %15 = load %struct.amvdec_core*, %struct.amvdec_core** %5, align 8
  %16 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clk_set_rate(i32 %17, i32 666666666)
  %19 = load %struct.amvdec_core*, %struct.amvdec_core** %5, align 8
  %20 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_prepare_enable(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %115

27:                                               ; preds = %1
  %28 = load %struct.amvdec_core*, %struct.amvdec_core** %5, align 8
  %29 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AO_RTI_GEN_PWR_SLEEP0, align 4
  %32 = load i32, i32* @GEN_PWR_VDEC_1, align 4
  %33 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 %32, i32 0)
  %34 = call i32 @usleep_range(i32 10, i32 20)
  %35 = load %struct.amvdec_core*, %struct.amvdec_core** %5, align 8
  %36 = load i32, i32* @DOS_SW_RESET0, align 4
  %37 = call i32 @amvdec_write_dos(%struct.amvdec_core* %35, i32 %36, i32 -4)
  %38 = load %struct.amvdec_core*, %struct.amvdec_core** %5, align 8
  %39 = load i32, i32* @DOS_SW_RESET0, align 4
  %40 = call i32 @amvdec_write_dos(%struct.amvdec_core* %38, i32 %39, i32 0)
  %41 = load %struct.amvdec_core*, %struct.amvdec_core** %5, align 8
  %42 = load i32, i32* @DOS_GCLK_EN0, align 4
  %43 = call i32 @amvdec_write_dos(%struct.amvdec_core* %41, i32 %42, i32 1023)
  %44 = load %struct.amvdec_core*, %struct.amvdec_core** %5, align 8
  %45 = load i32, i32* @DOS_MEM_PD_VDEC, align 4
  %46 = call i32 @amvdec_write_dos(%struct.amvdec_core* %44, i32 %45, i32 0)
  %47 = load %struct.amvdec_core*, %struct.amvdec_core** %5, align 8
  %48 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @AO_RTI_GEN_PWR_ISO0, align 4
  %51 = call i32 @regmap_write(i32 %49, i32 %50, i32 0)
  %52 = load %struct.amvdec_core*, %struct.amvdec_core** %5, align 8
  %53 = load i32, i32* @DOS_VDEC_MCRCC_STALL_CTRL, align 4
  %54 = call i32 @amvdec_write_dos(%struct.amvdec_core* %52, i32 %53, i32 0)
  %55 = load %struct.amvdec_core*, %struct.amvdec_core** %5, align 8
  %56 = load i32, i32* @GCLK_EN, align 4
  %57 = call i32 @amvdec_write_dos(%struct.amvdec_core* %55, i32 %56, i32 1023)
  %58 = load %struct.amvdec_core*, %struct.amvdec_core** %5, align 8
  %59 = load i32, i32* @MDEC_PIC_DC_CTRL, align 4
  %60 = call i32 @BIT(i32 31)
  %61 = call i32 @amvdec_clear_dos_bits(%struct.amvdec_core* %58, i32 %59, i32 %60)
  %62 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %63 = call i32 @vdec_1_stbuf_power_up(%struct.amvdec_session* %62)
  %64 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %65 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %66 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @vdec_1_load_firmware(%struct.amvdec_session* %64, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %27
  br label %111

74:                                               ; preds = %27
  %75 = load %struct.amvdec_codec_ops*, %struct.amvdec_codec_ops** %6, align 8
  %76 = getelementptr inbounds %struct.amvdec_codec_ops, %struct.amvdec_codec_ops* %75, i32 0, i32 0
  %77 = bitcast {}** %76 to i32 (%struct.amvdec_session*)**
  %78 = load i32 (%struct.amvdec_session*)*, i32 (%struct.amvdec_session*)** %77, align 8
  %79 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %80 = call i32 %78(%struct.amvdec_session* %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %111

84:                                               ; preds = %74
  %85 = load %struct.amvdec_core*, %struct.amvdec_core** %5, align 8
  %86 = load i32, i32* @ASSIST_MBOX1_CLR_REG, align 4
  %87 = call i32 @amvdec_write_dos(%struct.amvdec_core* %85, i32 %86, i32 1)
  %88 = load %struct.amvdec_core*, %struct.amvdec_core** %5, align 8
  %89 = load i32, i32* @ASSIST_MBOX1_MASK, align 4
  %90 = call i32 @amvdec_write_dos(%struct.amvdec_core* %88, i32 %89, i32 1)
  %91 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %92 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @V4L2_PIX_FMT_NV12M, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %84
  %97 = load %struct.amvdec_core*, %struct.amvdec_core** %5, align 8
  %98 = load i32, i32* @MDEC_PIC_DC_CTRL, align 4
  %99 = call i32 @BIT(i32 17)
  %100 = call i32 @amvdec_write_dos_bits(%struct.amvdec_core* %97, i32 %98, i32 %99)
  br label %106

101:                                              ; preds = %84
  %102 = load %struct.amvdec_core*, %struct.amvdec_core** %5, align 8
  %103 = load i32, i32* @MDEC_PIC_DC_CTRL, align 4
  %104 = call i32 @BIT(i32 17)
  %105 = call i32 @amvdec_clear_dos_bits(%struct.amvdec_core* %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %96
  %107 = load %struct.amvdec_core*, %struct.amvdec_core** %5, align 8
  %108 = load i32, i32* @MPSR, align 4
  %109 = call i32 @amvdec_write_dos(%struct.amvdec_core* %107, i32 %108, i32 1)
  %110 = call i32 @usleep_range(i32 10, i32 20)
  store i32 0, i32* %2, align 4
  br label %115

111:                                              ; preds = %83, %73
  %112 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %113 = call i32 @vdec_1_stop(%struct.amvdec_session* %112)
  %114 = load i32, i32* %4, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %111, %106, %25
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @amvdec_write_dos(%struct.amvdec_core*, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @amvdec_clear_dos_bits(%struct.amvdec_core*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @vdec_1_stbuf_power_up(%struct.amvdec_session*) #1

declare dso_local i32 @vdec_1_load_firmware(%struct.amvdec_session*, i32) #1

declare dso_local i32 @amvdec_write_dos_bits(%struct.amvdec_core*, i32, i32) #1

declare dso_local i32 @vdec_1_stop(%struct.amvdec_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
