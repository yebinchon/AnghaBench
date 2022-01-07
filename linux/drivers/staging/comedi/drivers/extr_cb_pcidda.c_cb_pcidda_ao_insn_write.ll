; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidda.c_cb_pcidda_ao_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidda.c_cb_pcidda_ao_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.cb_pcidda_private* }
%struct.cb_pcidda_private = type { i32*, i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@CB_DDA_DA_CTRL_EN = common dso_local global i32 0, align 4
@CB_DDA_DA_CTRL_RANGE10V = common dso_local global i32 0, align 4
@CB_DDA_DA_CTRL_RANGE5V = common dso_local global i32 0, align 4
@CB_DDA_DA_CTRL_RANGE2V5 = common dso_local global i32 0, align 4
@CB_DDA_DA_CTRL_UNIP = common dso_local global i32 0, align 4
@CB_DDA_DA_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @cb_pcidda_ao_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidda_ao_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.cb_pcidda_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load %struct.cb_pcidda_private*, %struct.cb_pcidda_private** %15, align 8
  store %struct.cb_pcidda_private* %16, %struct.cb_pcidda_private** %9, align 8
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CR_CHAN(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @CR_RANGE(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.cb_pcidda_private*, %struct.cb_pcidda_private** %9, align 8
  %27 = getelementptr inbounds %struct.cb_pcidda_private, %struct.cb_pcidda_private* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %25, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %4
  %35 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @cb_pcidda_calibrate(%struct.comedi_device* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %4
  %40 = load i32, i32* @CB_DDA_DA_CTRL_EN, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @CB_DDA_DA_CTRL_DAC(i32 %41)
  %43 = or i32 %40, %42
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  switch i32 %44, label %57 [
    i32 0, label %45
    i32 3, label %45
    i32 1, label %49
    i32 4, label %49
    i32 2, label %53
    i32 5, label %53
  ]

45:                                               ; preds = %39, %39
  %46 = load i32, i32* @CB_DDA_DA_CTRL_RANGE10V, align 4
  %47 = load i32, i32* %12, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %12, align 4
  br label %57

49:                                               ; preds = %39, %39
  %50 = load i32, i32* @CB_DDA_DA_CTRL_RANGE5V, align 4
  %51 = load i32, i32* %12, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %12, align 4
  br label %57

53:                                               ; preds = %39, %39
  %54 = load i32, i32* @CB_DDA_DA_CTRL_RANGE2V5, align 4
  %55 = load i32, i32* %12, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %39, %53, %49, %45
  %58 = load i32, i32* %11, align 4
  %59 = icmp ugt i32 %58, 2
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* @CB_DDA_DA_CTRL_UNIP, align 4
  %62 = load i32, i32* %12, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.cb_pcidda_private*, %struct.cb_pcidda_private** %9, align 8
  %67 = getelementptr inbounds %struct.cb_pcidda_private, %struct.cb_pcidda_private* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CB_DDA_DA_CTRL_REG, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @outw(i32 %65, i64 %70)
  store i32 0, i32* %13, align 4
  br label %72

72:                                               ; preds = %91, %64
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %75 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ult i32 %73, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %72
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %13, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.cb_pcidda_private*, %struct.cb_pcidda_private** %9, align 8
  %85 = getelementptr inbounds %struct.cb_pcidda_private, %struct.cb_pcidda_private* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i64 @CB_DDA_DA_DATA_REG(i32 %87)
  %89 = add nsw i64 %86, %88
  %90 = call i32 @outw(i32 %83, i64 %89)
  br label %91

91:                                               ; preds = %78
  %92 = load i32, i32* %13, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %72

94:                                               ; preds = %72
  %95 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %96 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  ret i32 %97
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @cb_pcidda_calibrate(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @CB_DDA_DA_CTRL_DAC(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i64 @CB_DDA_DA_DATA_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
