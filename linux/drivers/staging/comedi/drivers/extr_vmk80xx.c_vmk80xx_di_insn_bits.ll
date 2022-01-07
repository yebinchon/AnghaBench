; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_di_insn_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_di_insn_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.vmk80xx_private* }
%struct.vmk80xx_private = type { i8*, i64, i32, i32* }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@VMK8061_MODEL = common dso_local global i64 0, align 8
@VMK8061_DI_REG = common dso_local global i32 0, align 4
@VMK8061_CMD_RD_DI = common dso_local global i32 0, align 4
@VMK8055_DI_REG = common dso_local global i32 0, align 4
@VMK8055_MODEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @vmk80xx_di_insn_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmk80xx_di_insn_bits(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vmk80xx_private*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
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
  %19 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %20 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %10, align 8
  %22 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %23 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VMK8061_MODEL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %4
  %28 = load i32, i32* @VMK8061_DI_REG, align 4
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @VMK8061_CMD_RD_DI, align 4
  %30 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %31 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %29, i32* %33, align 4
  br label %36

34:                                               ; preds = %4
  %35 = load i32, i32* @VMK8055_DI_REG, align 4
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %34, %27
  %37 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %38 = call i32 @vmk80xx_read_packet(%struct.comedi_device* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %86, label %41

41:                                               ; preds = %36
  %42 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %43 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @VMK8055_MODEL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %41
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = ashr i32 %53, 4
  %55 = and i32 %54, 3
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl i32 %61, 2
  %63 = and i32 %62, 4
  %64 = or i32 %55, %63
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = ashr i32 %70, 3
  %72 = and i32 %71, 24
  %73 = or i32 %64, %72
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 %73, i32* %75, align 4
  br label %85

76:                                               ; preds = %41
  %77 = load i8*, i8** %10, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %76, %47
  store i32 2, i32* %12, align 4
  br label %86

86:                                               ; preds = %85, %36
  %87 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %88 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %87, i32 0, i32 2
  %89 = call i32 @up(i32* %88)
  %90 = load i32, i32* %12, align 4
  ret i32 %90
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @vmk80xx_read_packet(%struct.comedi_device*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
