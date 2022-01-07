; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_do_insn_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_do_insn_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.vmk80xx_private* }
%struct.vmk80xx_private = type { i8*, i8*, i64, i32 }
%struct.comedi_subdevice = type { i8 }
%struct.comedi_insn = type { i32 }

@VMK8061_MODEL = common dso_local global i64 0, align 8
@VMK8061_DO_REG = common dso_local global i32 0, align 4
@VMK8061_CMD_DO = common dso_local global i32 0, align 4
@VMK8055_DO_REG = common dso_local global i32 0, align 4
@VMK8055_CMD_WRT_AD = common dso_local global i32 0, align 4
@VMK8061_CMD_RD_DO = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @vmk80xx_do_insn_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmk80xx_do_insn_bits(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vmk80xx_private*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %16, align 8
  store %struct.vmk80xx_private* %17, %struct.vmk80xx_private** %9, align 8
  %18 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %19 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %10, align 8
  %21 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %22 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %11, align 8
  store i32 0, i32* %14, align 4
  %24 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %25 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VMK8061_MODEL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @VMK8061_DO_REG, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* @VMK8061_CMD_DO, align 4
  store i32 %31, i32* %13, align 4
  br label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @VMK8055_DO_REG, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* @VMK8055_CMD_WRT_AD, align 4
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %37 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %36, i32 0, i32 3
  %38 = call i32 @down(i32* %37)
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i64 @comedi_dio_update_state(%struct.comedi_subdevice* %39, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %35
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %45 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 0
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8 %46, i8* %50, align 1
  %51 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @vmk80xx_write_packet(%struct.comedi_device* %51, i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %90

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57, %35
  %59 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %60 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @VMK8061_MODEL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %58
  %65 = load i8, i8* @VMK8061_CMD_RD_DO, align 1
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 %65, i8* %67, align 1
  %68 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %69 = call i32 @vmk80xx_read_packet(%struct.comedi_device* %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %90

73:                                               ; preds = %64
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i32*, i32** %8, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 %79, i32* %81, align 4
  br label %89

82:                                               ; preds = %58
  %83 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %84 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %83, i32 0, i32 0
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %82, %73
  br label %90

90:                                               ; preds = %89, %72, %56
  %91 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %92 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %91, i32 0, i32 3
  %93 = call i32 @up(i32* %92)
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %14, align 4
  br label %102

98:                                               ; preds = %90
  %99 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %100 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  br label %102

102:                                              ; preds = %98, %96
  %103 = phi i32 [ %97, %96 ], [ %101, %98 ]
  ret i32 %103
}

declare dso_local i32 @down(i32*) #1

declare dso_local i64 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

declare dso_local i32 @vmk80xx_write_packet(%struct.comedi_device*, i32) #1

declare dso_local i32 @vmk80xx_read_packet(%struct.comedi_device*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
