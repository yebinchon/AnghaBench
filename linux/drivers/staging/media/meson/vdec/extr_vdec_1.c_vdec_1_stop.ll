; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec_1.c_vdec_1_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec_1.c_vdec_1_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amvdec_session = type { i64, %struct.TYPE_2__*, %struct.amvdec_core* }
%struct.TYPE_2__ = type { %struct.amvdec_codec_ops* }
%struct.amvdec_codec_ops = type { {}* }
%struct.amvdec_core = type { i32, i32 }

@MPSR = common dso_local global i32 0, align 4
@CPSR = common dso_local global i32 0, align 4
@ASSIST_MBOX1_MASK = common dso_local global i32 0, align 4
@DOS_SW_RESET0 = common dso_local global i32 0, align 4
@AO_RTI_GEN_PWR_ISO0 = common dso_local global i32 0, align 4
@DOS_MEM_PD_VDEC = common dso_local global i32 0, align 4
@AO_RTI_GEN_PWR_SLEEP0 = common dso_local global i32 0, align 4
@GEN_PWR_VDEC_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amvdec_session*)* @vdec_1_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_1_stop(%struct.amvdec_session* %0) #0 {
  %2 = alloca %struct.amvdec_session*, align 8
  %3 = alloca %struct.amvdec_core*, align 8
  %4 = alloca %struct.amvdec_codec_ops*, align 8
  store %struct.amvdec_session* %0, %struct.amvdec_session** %2, align 8
  %5 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %6 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %5, i32 0, i32 2
  %7 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  store %struct.amvdec_core* %7, %struct.amvdec_core** %3, align 8
  %8 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %9 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.amvdec_codec_ops*, %struct.amvdec_codec_ops** %11, align 8
  store %struct.amvdec_codec_ops* %12, %struct.amvdec_codec_ops** %4, align 8
  %13 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %14 = load i32, i32* @MPSR, align 4
  %15 = call i32 @amvdec_write_dos(%struct.amvdec_core* %13, i32 %14, i32 0)
  %16 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %17 = load i32, i32* @CPSR, align 4
  %18 = call i32 @amvdec_write_dos(%struct.amvdec_core* %16, i32 %17, i32 0)
  %19 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %20 = load i32, i32* @ASSIST_MBOX1_MASK, align 4
  %21 = call i32 @amvdec_write_dos(%struct.amvdec_core* %19, i32 %20, i32 0)
  %22 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %23 = load i32, i32* @DOS_SW_RESET0, align 4
  %24 = call i32 @BIT(i32 12)
  %25 = call i32 @BIT(i32 11)
  %26 = or i32 %24, %25
  %27 = call i32 @amvdec_write_dos(%struct.amvdec_core* %22, i32 %23, i32 %26)
  %28 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %29 = load i32, i32* @DOS_SW_RESET0, align 4
  %30 = call i32 @amvdec_write_dos(%struct.amvdec_core* %28, i32 %29, i32 0)
  %31 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %32 = load i32, i32* @DOS_SW_RESET0, align 4
  %33 = call i32 @amvdec_read_dos(%struct.amvdec_core* %31, i32 %32)
  %34 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %35 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AO_RTI_GEN_PWR_ISO0, align 4
  %38 = call i32 @regmap_write(i32 %36, i32 %37, i32 192)
  %39 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %40 = load i32, i32* @DOS_MEM_PD_VDEC, align 4
  %41 = call i32 @amvdec_write_dos(%struct.amvdec_core* %39, i32 %40, i32 -1)
  %42 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %43 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @AO_RTI_GEN_PWR_SLEEP0, align 4
  %46 = load i32, i32* @GEN_PWR_VDEC_1, align 4
  %47 = load i32, i32* @GEN_PWR_VDEC_1, align 4
  %48 = call i32 @regmap_update_bits(i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %50 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @clk_disable_unprepare(i32 %51)
  %53 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %54 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %1
  %58 = load %struct.amvdec_codec_ops*, %struct.amvdec_codec_ops** %4, align 8
  %59 = getelementptr inbounds %struct.amvdec_codec_ops, %struct.amvdec_codec_ops* %58, i32 0, i32 0
  %60 = bitcast {}** %59 to i32 (%struct.amvdec_session*)**
  %61 = load i32 (%struct.amvdec_session*)*, i32 (%struct.amvdec_session*)** %60, align 8
  %62 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %63 = call i32 %61(%struct.amvdec_session* %62)
  br label %64

64:                                               ; preds = %57, %1
  ret i32 0
}

declare dso_local i32 @amvdec_write_dos(%struct.amvdec_core*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @amvdec_read_dos(%struct.amvdec_core*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
