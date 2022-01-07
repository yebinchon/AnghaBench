; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_eeprom_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_eeprom_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.cb_pcidas_private* }
%struct.cb_pcidas_private = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@cb_pcidas_eeprom_ready = common dso_local global i32 0, align 4
@MCSR_NV_ENABLE = common dso_local global i32 0, align 4
@MCSR_NV_LOAD_LOW_ADDR = common dso_local global i32 0, align 4
@AMCC_OP_REG_MCSR_NVCMD = common dso_local global i64 0, align 8
@AMCC_OP_REG_MCSR_NVDATA = common dso_local global i64 0, align 8
@MCSR_NV_LOAD_HIGH_ADDR = common dso_local global i32 0, align 4
@MCSR_NV_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @cb_pcidas_eeprom_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidas_eeprom_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.cb_pcidas_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %15, align 8
  store %struct.cb_pcidas_private* %16, %struct.cb_pcidas_private** %10, align 8
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CR_CHAN(i32 %19)
  store i32 %20, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %102, %4
  %22 = load i32, i32* %13, align 4
  %23 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %24 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %105

27:                                               ; preds = %21
  %28 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %30 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %31 = load i32, i32* @cb_pcidas_eeprom_ready, align 4
  %32 = call i32 @comedi_timeout(%struct.comedi_device* %28, %struct.comedi_subdevice* %29, %struct.comedi_insn* %30, i32 %31, i32 0)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %5, align 4
  br label %109

37:                                               ; preds = %27
  %38 = load i32, i32* @MCSR_NV_ENABLE, align 4
  %39 = load i32, i32* @MCSR_NV_LOAD_LOW_ADDR, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %10, align 8
  %42 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AMCC_OP_REG_MCSR_NVCMD, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @outb(i32 %40, i64 %45)
  %47 = load i32, i32* %11, align 4
  %48 = and i32 %47, 255
  %49 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %10, align 8
  %50 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AMCC_OP_REG_MCSR_NVDATA, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @outb(i32 %48, i64 %53)
  %55 = load i32, i32* @MCSR_NV_ENABLE, align 4
  %56 = load i32, i32* @MCSR_NV_LOAD_HIGH_ADDR, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %10, align 8
  %59 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @AMCC_OP_REG_MCSR_NVCMD, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @outb(i32 %57, i64 %62)
  %64 = load i32, i32* %11, align 4
  %65 = lshr i32 %64, 8
  %66 = and i32 %65, 255
  %67 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %10, align 8
  %68 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AMCC_OP_REG_MCSR_NVDATA, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outb(i32 %66, i64 %71)
  %73 = load i32, i32* @MCSR_NV_ENABLE, align 4
  %74 = load i32, i32* @MCSR_NV_READ, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %10, align 8
  %77 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @AMCC_OP_REG_MCSR_NVCMD, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @outb(i32 %75, i64 %80)
  %82 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %83 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %84 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %85 = load i32, i32* @cb_pcidas_eeprom_ready, align 4
  %86 = call i32 @comedi_timeout(%struct.comedi_device* %82, %struct.comedi_subdevice* %83, %struct.comedi_insn* %84, i32 %85, i32 0)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %37
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %5, align 4
  br label %109

91:                                               ; preds = %37
  %92 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %10, align 8
  %93 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @AMCC_OP_REG_MCSR_NVDATA, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @inb(i64 %96)
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %97, i32* %101, align 4
  br label %102

102:                                              ; preds = %91
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %21

105:                                              ; preds = %21
  %106 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %107 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %105, %89, %35
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
