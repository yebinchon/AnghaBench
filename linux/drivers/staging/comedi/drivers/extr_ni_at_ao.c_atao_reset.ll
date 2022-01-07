; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_at_ao.c_atao_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_at_ao.c_atao_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.atao_private* }
%struct.atao_private = type { i64, i64 }

@ATAO_CFG1_REG = common dso_local global i64 0, align 8
@I8254_MODE4 = common dso_local global i32 0, align 4
@I8254_BINARY = common dso_local global i32 0, align 4
@ATAO_CFG2_CALLD_NOP = common dso_local global i64 0, align 8
@ATAO_CFG2_REG = common dso_local global i64 0, align 8
@ATAO_CFG3_REG = common dso_local global i64 0, align 8
@ATAO_FIFO_CLEAR_REG = common dso_local global i64 0, align 8
@ATAO_2_INT1CLR_REG = common dso_local global i64 0, align 8
@ATAO_2_INT2CLR_REG = common dso_local global i64 0, align 8
@ATAO_2_DMATCCLR_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @atao_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atao_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.atao_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 2
  %6 = load %struct.atao_private*, %struct.atao_private** %5, align 8
  store %struct.atao_private* %6, %struct.atao_private** %3, align 8
  %7 = load %struct.atao_private*, %struct.atao_private** %3, align 8
  %8 = getelementptr inbounds %struct.atao_private, %struct.atao_private* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.atao_private*, %struct.atao_private** %3, align 8
  %10 = getelementptr inbounds %struct.atao_private, %struct.atao_private* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ATAO_CFG1_REG, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @outw(i64 %11, i64 %16)
  %18 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @I8254_MODE4, align 4
  %22 = load i32, i32* @I8254_BINARY, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @comedi_8254_set_mode(i32 %20, i32 0, i32 %23)
  %25 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @I8254_MODE4, align 4
  %29 = load i32, i32* @I8254_BINARY, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @comedi_8254_set_mode(i32 %27, i32 1, i32 %30)
  %32 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @comedi_8254_write(i32 %34, i32 0, i32 3)
  %36 = load i64, i64* @ATAO_CFG2_CALLD_NOP, align 8
  %37 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ATAO_CFG2_REG, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outw(i64 %36, i64 %41)
  %43 = load %struct.atao_private*, %struct.atao_private** %3, align 8
  %44 = getelementptr inbounds %struct.atao_private, %struct.atao_private* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.atao_private*, %struct.atao_private** %3, align 8
  %46 = getelementptr inbounds %struct.atao_private, %struct.atao_private* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %49 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ATAO_CFG3_REG, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @outw(i64 %47, i64 %52)
  %54 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %55 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ATAO_FIFO_CLEAR_REG, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @inw(i64 %58)
  %60 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %61 = call i32 @atao_select_reg_group(%struct.comedi_device* %60, i32 1)
  %62 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %63 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ATAO_2_INT1CLR_REG, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @outw(i64 0, i64 %66)
  %68 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ATAO_2_INT2CLR_REG, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @outw(i64 0, i64 %72)
  %74 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ATAO_2_DMATCCLR_REG, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @outw(i64 0, i64 %78)
  %80 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %81 = call i32 @atao_select_reg_group(%struct.comedi_device* %80, i32 0)
  ret void
}

declare dso_local i32 @outw(i64, i64) #1

declare dso_local i32 @comedi_8254_set_mode(i32, i32, i32) #1

declare dso_local i32 @comedi_8254_write(i32, i32, i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @atao_select_reg_group(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
