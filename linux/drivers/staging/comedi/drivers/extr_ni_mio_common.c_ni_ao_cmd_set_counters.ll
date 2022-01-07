; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_cmd_set_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_cmd_set_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i64, i32, i32 }
%struct.comedi_cmd = type { i32 }

@NISTC_RESET_AO_CFG_START = common dso_local global i32 0, align 4
@NISTC_RESET_REG = common dso_local global i32 0, align 4
@NISTC_AO_MODE1_REG = common dso_local global i32 0, align 4
@NISTC_AO_MODE2_BC_INIT_LOAD_SRC = common dso_local global i32 0, align 4
@NISTC_AO_MODE2_REG = common dso_local global i32 0, align 4
@NISTC_AO_BC_LOADA_REG = common dso_local global i32 0, align 4
@NISTC_AO_CMD1_BC_LOAD = common dso_local global i32 0, align 4
@NISTC_AO_CMD1_REG = common dso_local global i32 0, align 4
@NISTC_AO_MODE2_UC_INIT_LOAD_SRC = common dso_local global i32 0, align 4
@NISTC_AO_UC_LOADA_REG = common dso_local global i32 0, align 4
@NISTC_AO_CMD1_UC_LOAD = common dso_local global i32 0, align 4
@NISTC_RESET_AO_CFG_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_cmd*)* @ni_ao_cmd_set_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_ao_cmd_set_counters(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_cmd*, align 8
  %5 = alloca %struct.ni_private*, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %4, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 0
  %9 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  store %struct.ni_private* %9, %struct.ni_private** %5, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = load i32, i32* @NISTC_RESET_AO_CFG_START, align 4
  %12 = load i32, i32* @NISTC_RESET_REG, align 4
  %13 = call i32 @ni_stc_writew(%struct.comedi_device* %10, i32 %11, i32 %12)
  %14 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %15 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %16 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NISTC_AO_MODE1_REG, align 4
  %19 = call i32 @ni_stc_writew(%struct.comedi_device* %14, i32 %17, i32 %18)
  %20 = load i32, i32* @NISTC_AO_MODE2_BC_INIT_LOAD_SRC, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %23 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %27 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %28 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @NISTC_AO_MODE2_REG, align 4
  %31 = call i32 @ni_stc_writew(%struct.comedi_device* %26, i32 %29, i32 %30)
  %32 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %33 = load i32, i32* @NISTC_AO_BC_LOADA_REG, align 4
  %34 = call i32 @ni_stc_writel(%struct.comedi_device* %32, i32 0, i32 %33)
  %35 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %36 = load i32, i32* @NISTC_AO_CMD1_BC_LOAD, align 4
  %37 = load i32, i32* @NISTC_AO_CMD1_REG, align 4
  %38 = call i32 @ni_stc_writew(%struct.comedi_device* %35, i32 %36, i32 %37)
  %39 = load i32, i32* @NISTC_AO_MODE2_UC_INIT_LOAD_SRC, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %42 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %46 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %47 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @NISTC_AO_MODE2_REG, align 4
  %50 = call i32 @ni_stc_writew(%struct.comedi_device* %45, i32 %48, i32 %49)
  %51 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %52 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %2
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %57 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 16777215
  br label %61

60:                                               ; preds = %2
  br label %61

61:                                               ; preds = %60, %55
  %62 = phi i32 [ %59, %55 ], [ 16777215, %60 ]
  store i32 %62, i32* %6, align 4
  %63 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %64 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sub i32 %69, 1
  %71 = load i32, i32* @NISTC_AO_UC_LOADA_REG, align 4
  %72 = call i32 @ni_stc_writel(%struct.comedi_device* %68, i32 %70, i32 %71)
  %73 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %74 = load i32, i32* @NISTC_AO_CMD1_UC_LOAD, align 4
  %75 = load i32, i32* @NISTC_AO_CMD1_REG, align 4
  %76 = call i32 @ni_stc_writew(%struct.comedi_device* %73, i32 %74, i32 %75)
  br label %91

77:                                               ; preds = %61
  %78 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @NISTC_AO_UC_LOADA_REG, align 4
  %81 = call i32 @ni_stc_writel(%struct.comedi_device* %78, i32 %79, i32 %80)
  %82 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %83 = load i32, i32* @NISTC_AO_CMD1_UC_LOAD, align 4
  %84 = load i32, i32* @NISTC_AO_CMD1_REG, align 4
  %85 = call i32 @ni_stc_writew(%struct.comedi_device* %82, i32 %83, i32 %84)
  %86 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sub i32 %87, 1
  %89 = load i32, i32* @NISTC_AO_UC_LOADA_REG, align 4
  %90 = call i32 @ni_stc_writel(%struct.comedi_device* %86, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %77, %67
  %92 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %93 = load i32, i32* @NISTC_RESET_AO_CFG_END, align 4
  %94 = load i32, i32* @NISTC_RESET_REG, align 4
  %95 = call i32 @ni_stc_writew(%struct.comedi_device* %92, i32 %93, i32 %94)
  ret void
}

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_stc_writel(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
