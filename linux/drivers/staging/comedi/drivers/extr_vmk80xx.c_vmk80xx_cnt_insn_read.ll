; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_cnt_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_cnt_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.vmk80xx_private* }
%struct.vmk80xx_private = type { i32, i32*, i32, i32* }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@VMK8055_CNT1_REG = common dso_local global i32 0, align 4
@VMK8055_CNT2_REG = common dso_local global i32 0, align 4
@VMK8061_CNT_REG = common dso_local global i32 0, align 4
@VMK8061_CMD_RD_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @vmk80xx_cnt_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmk80xx_cnt_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %17 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %16, i32 0, i32 2
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
  %30 = load i32, i32* @VMK8055_CNT1_REG, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %30, i32* %31, align 4
  br label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @VMK8055_CNT2_REG, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %29
  br label %47

36:                                               ; preds = %4
  br label %37

37:                                               ; preds = %4, %36
  %38 = load i32, i32* @VMK8061_CNT_REG, align 4
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @VMK8061_CNT_REG, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @VMK8061_CMD_RD_CNT, align 4
  %43 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %44 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %37, %35
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %107, %47
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %51 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %110

54:                                               ; preds = %48
  %55 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %56 = call i64 @vmk80xx_read_packet(%struct.comedi_device* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %110

59:                                               ; preds = %54
  %60 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %61 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 129
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %66 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %72, i32* %76, align 4
  br label %106

77:                                               ; preds = %59
  %78 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %79 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  %85 = mul nsw i32 %82, %84
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %80, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %91 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %94, 2
  %96 = add nsw i32 %95, 2
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %92, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = mul i32 256, %99
  %101 = add i32 %89, %100
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  br label %106

106:                                              ; preds = %77, %64
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %48

110:                                              ; preds = %58, %48
  %111 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %112 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %111, i32 0, i32 2
  %113 = call i32 @up(i32* %112)
  %114 = load i32, i32* %12, align 4
  ret i32 %114
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
