; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_cnt_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_cnt_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.vmk80xx_private* }
%struct.vmk80xx_private = type { i32*, i32, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@VMK8055_MODEL = common dso_local global i32 0, align 4
@VMK8055_CMD_RST_CNT1 = common dso_local global i32 0, align 4
@VMK8055_CNT1_REG = common dso_local global i32 0, align 4
@VMK8055_CMD_RST_CNT2 = common dso_local global i32 0, align 4
@VMK8055_CNT2_REG = common dso_local global i32 0, align 4
@VMK8061_CMD_RST_CNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @vmk80xx_cnt_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmk80xx_cnt_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vmk80xx_private*, align 8
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
  %16 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %15, align 8
  store %struct.vmk80xx_private* %16, %struct.vmk80xx_private** %9, align 8
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CR_CHAN(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %22 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %21, i32 0, i32 1
  %23 = call i32 @down(i32* %22)
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %55 [
    i32 128, label %27
  ]

27:                                               ; preds = %4
  %28 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %29 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @VMK8055_MODEL, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @VMK8055_CMD_RST_CNT1, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* @VMK8055_CNT1_REG, align 4
  store i32 %38, i32* %12, align 4
  br label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @VMK8055_CMD_RST_CNT2, align 4
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* @VMK8055_CNT2_REG, align 4
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %44 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 0, i32* %48, align 4
  br label %51

49:                                               ; preds = %27
  %50 = load i32, i32* @VMK8061_CMD_RST_CNT, align 4
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %49, %42
  %52 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @vmk80xx_write_packet(%struct.comedi_device* %52, i32 %53)
  store i32 %54, i32* %13, align 4
  br label %58

55:                                               ; preds = %4
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %55, %51
  %59 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %60 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %59, i32 0, i32 1
  %61 = call i32 @up(i32* %60)
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %13, align 4
  br label %70

66:                                               ; preds = %58
  %67 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %68 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  br label %70

70:                                               ; preds = %66, %64
  %71 = phi i32 [ %65, %64 ], [ %69, %66 ]
  ret i32 %71
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @vmk80xx_write_packet(%struct.comedi_device*, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
