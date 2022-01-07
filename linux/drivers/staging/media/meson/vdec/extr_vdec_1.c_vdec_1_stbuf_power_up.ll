; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec_1.c_vdec_1_stbuf_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec_1.c_vdec_1_stbuf_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amvdec_session = type { i64, i64, %struct.amvdec_core* }
%struct.amvdec_core = type { i32 }

@VLD_MEM_VIFIFO_CONTROL = common dso_local global i32 0, align 4
@VLD_MEM_VIFIFO_WRAP_COUNT = common dso_local global i32 0, align 4
@POWER_CTL_VLD = common dso_local global i32 0, align 4
@VLD_MEM_VIFIFO_START_PTR = common dso_local global i32 0, align 4
@VLD_MEM_VIFIFO_CURR_PTR = common dso_local global i32 0, align 4
@VLD_MEM_VIFIFO_END_PTR = common dso_local global i32 0, align 4
@VLD_MEM_VIFIFO_BUF_CNTL = common dso_local global i32 0, align 4
@MEM_BUFCTRL_MANUAL = common dso_local global i64 0, align 8
@VLD_MEM_VIFIFO_WP = common dso_local global i32 0, align 4
@MEM_FIFO_CNT_BIT = common dso_local global i32 0, align 4
@MEM_FILL_ON_LEVEL = common dso_local global i32 0, align 4
@MEM_CTRL_FILL_EN = common dso_local global i32 0, align 4
@MEM_CTRL_EMPTY_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amvdec_session*)* @vdec_1_stbuf_power_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_1_stbuf_power_up(%struct.amvdec_session* %0) #0 {
  %2 = alloca %struct.amvdec_session*, align 8
  %3 = alloca %struct.amvdec_core*, align 8
  store %struct.amvdec_session* %0, %struct.amvdec_session** %2, align 8
  %4 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %5 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %4, i32 0, i32 2
  %6 = load %struct.amvdec_core*, %struct.amvdec_core** %5, align 8
  store %struct.amvdec_core* %6, %struct.amvdec_core** %3, align 8
  %7 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %8 = load i32, i32* @VLD_MEM_VIFIFO_CONTROL, align 4
  %9 = call i32 @amvdec_write_dos(%struct.amvdec_core* %7, i32 %8, i64 0)
  %10 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %11 = load i32, i32* @VLD_MEM_VIFIFO_WRAP_COUNT, align 4
  %12 = call i32 @amvdec_write_dos(%struct.amvdec_core* %10, i32 %11, i64 0)
  %13 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %14 = load i32, i32* @POWER_CTL_VLD, align 4
  %15 = call i64 @BIT(i32 4)
  %16 = call i32 @amvdec_write_dos(%struct.amvdec_core* %13, i32 %14, i64 %15)
  %17 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %18 = load i32, i32* @VLD_MEM_VIFIFO_START_PTR, align 4
  %19 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %20 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @amvdec_write_dos(%struct.amvdec_core* %17, i32 %18, i64 %21)
  %23 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %24 = load i32, i32* @VLD_MEM_VIFIFO_CURR_PTR, align 4
  %25 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %26 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @amvdec_write_dos(%struct.amvdec_core* %23, i32 %24, i64 %27)
  %29 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %30 = load i32, i32* @VLD_MEM_VIFIFO_END_PTR, align 4
  %31 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %32 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %35 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = sub nsw i64 %37, 8
  %39 = call i32 @amvdec_write_dos(%struct.amvdec_core* %29, i32 %30, i64 %38)
  %40 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %41 = load i32, i32* @VLD_MEM_VIFIFO_CONTROL, align 4
  %42 = call i32 @amvdec_write_dos_bits(%struct.amvdec_core* %40, i32 %41, i32 1)
  %43 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %44 = load i32, i32* @VLD_MEM_VIFIFO_CONTROL, align 4
  %45 = call i32 @amvdec_clear_dos_bits(%struct.amvdec_core* %43, i32 %44, i32 1)
  %46 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %47 = load i32, i32* @VLD_MEM_VIFIFO_BUF_CNTL, align 4
  %48 = load i64, i64* @MEM_BUFCTRL_MANUAL, align 8
  %49 = call i32 @amvdec_write_dos(%struct.amvdec_core* %46, i32 %47, i64 %48)
  %50 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %51 = load i32, i32* @VLD_MEM_VIFIFO_WP, align 4
  %52 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %53 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @amvdec_write_dos(%struct.amvdec_core* %50, i32 %51, i64 %54)
  %56 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %57 = load i32, i32* @VLD_MEM_VIFIFO_BUF_CNTL, align 4
  %58 = call i32 @amvdec_write_dos_bits(%struct.amvdec_core* %56, i32 %57, i32 1)
  %59 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %60 = load i32, i32* @VLD_MEM_VIFIFO_BUF_CNTL, align 4
  %61 = call i32 @amvdec_clear_dos_bits(%struct.amvdec_core* %59, i32 %60, i32 1)
  %62 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %63 = load i32, i32* @VLD_MEM_VIFIFO_CONTROL, align 4
  %64 = load i32, i32* @MEM_FIFO_CNT_BIT, align 4
  %65 = shl i32 17, %64
  %66 = load i32, i32* @MEM_FILL_ON_LEVEL, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @MEM_CTRL_FILL_EN, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @MEM_CTRL_EMPTY_EN, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @amvdec_write_dos_bits(%struct.amvdec_core* %62, i32 %63, i32 %71)
  ret i32 0
}

declare dso_local i32 @amvdec_write_dos(%struct.amvdec_core*, i32, i64) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @amvdec_write_dos_bits(%struct.amvdec_core*, i32, i32) #1

declare dso_local i32 @amvdec_clear_dos_bits(%struct.amvdec_core*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
