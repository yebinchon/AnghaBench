; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_icp_multi.c_icp_multi_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_icp_multi.c_icp_multi_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@AREF_DIFF = common dso_local global i32 0, align 4
@ICP_MULTI_ADC_CSR_DI = common dso_local global i32 0, align 4
@range_codes_analog = common dso_local global i32* null, align 8
@ICP_MULTI_ADC_CSR = common dso_local global i64 0, align 8
@ICP_MULTI_ADC_CSR_ST = common dso_local global i32 0, align 4
@icp_multi_ai_eoc = common dso_local global i32 0, align 4
@ICP_MULTI_AI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @icp_multi_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icp_multi_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %16 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CR_CHAN(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CR_RANGE(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %24 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @CR_AREF(i32 %25)
  store i32 %26, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @AREF_DIFF, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @ICP_MULTI_ADC_CSR_DI_CHAN(i32 %31)
  %33 = load i32, i32* @ICP_MULTI_ADC_CSR_DI, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %12, align 4
  br label %38

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @ICP_MULTI_ADC_CSR_SE_CHAN(i32 %36)
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32*, i32** @range_codes_analog, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %12, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %48 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ICP_MULTI_ADC_CSR, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writew(i32 %46, i64 %51)
  store i32 0, i32* %14, align 4
  br label %53

53:                                               ; preds = %91, %38
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %56 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %94

59:                                               ; preds = %53
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @ICP_MULTI_ADC_CSR_ST, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ICP_MULTI_ADC_CSR, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writew(i32 %62, i64 %67)
  %69 = call i32 @udelay(i32 1)
  %70 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %71 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %72 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %73 = load i32, i32* @icp_multi_ai_eoc, align 4
  %74 = call i32 @comedi_timeout(%struct.comedi_device* %70, %struct.comedi_subdevice* %71, %struct.comedi_insn* %72, i32 %73, i32 0)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %59
  br label %94

78:                                               ; preds = %59
  %79 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %80 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ICP_MULTI_AI, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @readw(i64 %83)
  %85 = ashr i32 %84, 4
  %86 = and i32 %85, 4095
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %86, i32* %90, align 4
  br label %91

91:                                               ; preds = %78
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %53

94:                                               ; preds = %77, %53
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* %13, align 4
  br label %101

99:                                               ; preds = %94
  %100 = load i32, i32* %14, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  ret i32 %102
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @ICP_MULTI_ADC_CSR_DI_CHAN(i32) #1

declare dso_local i32 @ICP_MULTI_ADC_CSR_SE_CHAN(i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @readw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
