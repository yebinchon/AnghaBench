; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_pwm_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_pwm_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.vmk80xx_private* }
%struct.vmk80xx_private = type { i8*, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@VMK8061_PWM_REG1 = common dso_local global i32 0, align 4
@VMK8061_PWM_REG2 = common dso_local global i32 0, align 4
@VMK8061_CMD_OUT_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @vmk80xx_pwm_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmk80xx_pwm_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vmk80xx_private*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [2 x i32], align 4
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
  %17 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %18 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %17, i32 0, i32 1
  %19 = call i32 @down(i32* %18)
  %20 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %21 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %10, align 8
  %23 = load i32, i32* @VMK8061_PWM_REG1, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @VMK8061_PWM_REG2, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @VMK8061_CMD_OUT_PWM, align 4
  store i32 %27, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %68, %4
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %31 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %28
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 3
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  store i8 %41, i8* %46, align 1
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = lshr i32 %51, 2
  %53 = trunc i32 %52 to i8
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 255
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  store i8 %56, i8* %61, align 1
  %62 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i64 @vmk80xx_write_packet(%struct.comedi_device* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %34
  br label %71

67:                                               ; preds = %34
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %28

71:                                               ; preds = %66, %28
  %72 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %73 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %72, i32 0, i32 1
  %74 = call i32 @up(i32* %73)
  %75 = load i32, i32* %13, align 4
  ret i32 %75
}

declare dso_local i32 @down(i32*) #1

declare dso_local i64 @vmk80xx_write_packet(%struct.comedi_device*, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
