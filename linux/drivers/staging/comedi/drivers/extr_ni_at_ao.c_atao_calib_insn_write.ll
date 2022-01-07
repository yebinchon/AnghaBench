; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_at_ao.c_atao_calib_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_at_ao.c_atao_calib_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32* }
%struct.comedi_insn = type { i32, i32 }

@ATAO_CFG2_SDATA = common dso_local global i32 0, align 4
@ATAO_CFG2_REG = common dso_local global i64 0, align 8
@ATAO_CFG2_SCLK = common dso_local global i32 0, align 4
@ATAO_CFG2_CALLD_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @atao_calib_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atao_calib_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %15 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @CR_CHAN(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %19 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %92

22:                                               ; preds = %4
  %23 = load i32*, i32** %8, align 8
  %24 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %25 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %23, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 7
  %33 = shl i32 %32, 8
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %11, align 4
  %36 = call i32 @BIT(i32 10)
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %66, %22
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %37
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @ATAO_CFG2_SDATA, align 4
  br label %48

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ATAO_CFG2_REG, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @outw(i32 %50, i64 %55)
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @ATAO_CFG2_SCLK, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ATAO_CFG2_REG, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @outw(i32 %59, i64 %64)
  br label %66

66:                                               ; preds = %48
  %67 = load i32, i32* %13, align 4
  %68 = ashr i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %37

69:                                               ; preds = %37
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @ATAO_CFG2_CALLD(i32 %70)
  %72 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %73 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ATAO_CFG2_REG, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @outw(i32 %71, i64 %76)
  %78 = load i32, i32* @ATAO_CFG2_CALLD_NOP, align 4
  %79 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %80 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ATAO_CFG2_REG, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @outw(i32 %78, i64 %83)
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %87 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  br label %92

92:                                               ; preds = %69, %4
  %93 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %94 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  ret i32 %95
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @ATAO_CFG2_CALLD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
