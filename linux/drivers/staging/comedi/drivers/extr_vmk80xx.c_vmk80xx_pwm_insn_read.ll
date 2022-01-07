; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_pwm_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_pwm_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.vmk80xx_private* }
%struct.vmk80xx_private = type { i8*, i8*, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@VMK8061_PWM_REG1 = common dso_local global i32 0, align 4
@VMK8061_PWM_REG2 = common dso_local global i32 0, align 4
@VMK8061_CMD_RD_PWM = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @vmk80xx_pwm_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmk80xx_pwm_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vmk80xx_private*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [2 x i32], align 4
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
  %18 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %17, i32 0, i32 2
  %19 = call i32 @down(i32* %18)
  %20 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %21 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %10, align 8
  %23 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %24 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %11, align 8
  %26 = load i32, i32* @VMK8061_PWM_REG1, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @VMK8061_PWM_REG2, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %28, i32* %29, align 4
  %30 = load i8, i8* @VMK8061_CMD_RD_PWM, align 1
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 %30, i8* %32, align 1
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %65, %4
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %36 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %33
  %40 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %41 = call i64 @vmk80xx_read_packet(%struct.comedi_device* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %68

44:                                               ; preds = %39
  %45 = load i8*, i8** %11, align 8
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = mul nsw i32 4, %58
  %60 = add nsw i32 %51, %59
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
  br label %65

65:                                               ; preds = %44
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %33

68:                                               ; preds = %43, %33
  %69 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %70 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %69, i32 0, i32 2
  %71 = call i32 @up(i32* %70)
  %72 = load i32, i32* %13, align 4
  ret i32 %72
}

declare dso_local i32 @down(i32*) #1

declare dso_local i64 @vmk80xx_read_packet(%struct.comedi_device*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
