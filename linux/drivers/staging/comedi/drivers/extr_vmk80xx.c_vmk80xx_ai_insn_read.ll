; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.vmk80xx_private* }
%struct.vmk80xx_private = type { i32, i32*, i32*, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@VMK8055_AI1_REG = common dso_local global i32 0, align 4
@VMK8055_AI2_REG = common dso_local global i32 0, align 4
@VMK8061_AI_REG1 = common dso_local global i32 0, align 4
@VMK8061_AI_REG2 = common dso_local global i32 0, align 4
@VMK8061_CMD_RD_AI = common dso_local global i32 0, align 4
@VMK8061_CH_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @vmk80xx_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmk80xx_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vmk80xx_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %14, align 8
  store %struct.vmk80xx_private* %15, %struct.vmk80xx_private** %9, align 8
  %16 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %17 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %16, i32 0, i32 3
  %18 = call i32 @down(i32* %17)
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CR_CHAN(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %24 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %37 [
    i32 129, label %26
    i32 128, label %36
  ]

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @VMK8055_AI1_REG, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %30, i32* %31, align 4
  br label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @VMK8055_AI2_REG, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %29
  br label %53

36:                                               ; preds = %4
  br label %37

37:                                               ; preds = %4, %36
  %38 = load i32, i32* @VMK8061_AI_REG1, align 4
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @VMK8061_AI_REG2, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @VMK8061_CMD_RD_AI, align 4
  %43 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %44 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %49 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @VMK8061_CH_REG, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 %47, i32* %52, align 4
  br label %53

53:                                               ; preds = %37, %35
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %106, %53
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %109

60:                                               ; preds = %54
  %61 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %62 = call i64 @vmk80xx_read_packet(%struct.comedi_device* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %109

65:                                               ; preds = %60
  %66 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %67 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 129
  br i1 %69, label %70, label %83

70:                                               ; preds = %65
  %71 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %72 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %78, i32* %82, align 4
  br label %106

83:                                               ; preds = %65
  %84 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %85 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %93 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = mul i32 256, %99
  %101 = add i32 %91, %100
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  br label %106

106:                                              ; preds = %83, %70
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %54

109:                                              ; preds = %64, %54
  %110 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %111 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %110, i32 0, i32 3
  %112 = call i32 @up(i32* %111)
  %113 = load i32, i32* %12, align 4
  ret i32 %113
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i64 @vmk80xx_read_packet(%struct.comedi_device*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
