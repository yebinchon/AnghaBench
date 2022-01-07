; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1500.c_z8536_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1500.c_z8536_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64 }

@APCI1500_Z8536_CTRL_REG = common dso_local global i64 0, align 8
@Z8536_CFG_CTRL_REG = common dso_local global i32 0, align 4
@Z8536_PAB_MODE_PTS_BIT = common dso_local global i32 0, align 4
@Z8536_PAB_MODE_SB = common dso_local global i32 0, align 4
@Z8536_PAB_MODE_PMS_DISABLE = common dso_local global i32 0, align 4
@Z8536_PA_MODE_REG = common dso_local global i32 0, align 4
@Z8536_PB_DPP_REG = common dso_local global i32 0, align 4
@Z8536_PA_DD_REG = common dso_local global i32 0, align 4
@Z8536_PB_MODE_REG = common dso_local global i32 0, align 4
@Z8536_PB_DD_REG = common dso_local global i32 0, align 4
@Z8536_PC_DPP_REG = common dso_local global i32 0, align 4
@Z8536_PC_DD_REG = common dso_local global i32 0, align 4
@Z8536_CMD_CLR_IP_IUS = common dso_local global i32 0, align 4
@Z8536_PA_CMDSTAT_REG = common dso_local global i32 0, align 4
@Z8536_CMD_CLR_IE = common dso_local global i32 0, align 4
@Z8536_PB_CMDSTAT_REG = common dso_local global i32 0, align 4
@Z8536_INT_CTRL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @z8536_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @z8536_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @APCI1500_Z8536_CTRL_REG, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @inb(i64 %12)
  %14 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @APCI1500_Z8536_CTRL_REG, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @outb(i32 0, i64 %18)
  %20 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @APCI1500_Z8536_CTRL_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @inb(i64 %24)
  %26 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @APCI1500_Z8536_CTRL_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @outb(i32 0, i64 %30)
  %32 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @APCI1500_Z8536_CTRL_REG, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @outb(i32 1, i64 %36)
  %38 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @APCI1500_Z8536_CTRL_REG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outb(i32 0, i64 %42)
  %44 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 0
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %49 = load i32, i32* @Z8536_CFG_CTRL_REG, align 4
  %50 = call i32 @z8536_write(%struct.comedi_device* %48, i32 0, i32 %49)
  %51 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %52 = load i32, i32* @Z8536_PAB_MODE_PTS_BIT, align 4
  %53 = load i32, i32* @Z8536_PAB_MODE_SB, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @Z8536_PAB_MODE_PMS_DISABLE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @Z8536_PA_MODE_REG, align 4
  %58 = call i32 @z8536_write(%struct.comedi_device* %51, i32 %56, i32 %57)
  %59 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %60 = load i32, i32* @Z8536_PB_DPP_REG, align 4
  %61 = call i32 @z8536_write(%struct.comedi_device* %59, i32 255, i32 %60)
  %62 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %63 = load i32, i32* @Z8536_PA_DD_REG, align 4
  %64 = call i32 @z8536_write(%struct.comedi_device* %62, i32 255, i32 %63)
  %65 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %66 = load i32, i32* @Z8536_PAB_MODE_PTS_BIT, align 4
  %67 = load i32, i32* @Z8536_PAB_MODE_SB, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @Z8536_PAB_MODE_PMS_DISABLE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @Z8536_PB_MODE_REG, align 4
  %72 = call i32 @z8536_write(%struct.comedi_device* %65, i32 %70, i32 %71)
  %73 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %74 = load i32, i32* @Z8536_PB_DPP_REG, align 4
  %75 = call i32 @z8536_write(%struct.comedi_device* %73, i32 127, i32 %74)
  %76 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %77 = load i32, i32* @Z8536_PB_DD_REG, align 4
  %78 = call i32 @z8536_write(%struct.comedi_device* %76, i32 255, i32 %77)
  %79 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %80 = load i32, i32* @Z8536_PC_DPP_REG, align 4
  %81 = call i32 @z8536_write(%struct.comedi_device* %79, i32 9, i32 %80)
  %82 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %83 = load i32, i32* @Z8536_PC_DD_REG, align 4
  %84 = call i32 @z8536_write(%struct.comedi_device* %82, i32 14, i32 %83)
  %85 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %86 = load i32, i32* @Z8536_CMD_CLR_IP_IUS, align 4
  %87 = load i32, i32* @Z8536_PA_CMDSTAT_REG, align 4
  %88 = call i32 @z8536_write(%struct.comedi_device* %85, i32 %86, i32 %87)
  %89 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %90 = load i32, i32* @Z8536_CMD_CLR_IE, align 4
  %91 = load i32, i32* @Z8536_PA_CMDSTAT_REG, align 4
  %92 = call i32 @z8536_write(%struct.comedi_device* %89, i32 %90, i32 %91)
  %93 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %94 = load i32, i32* @Z8536_CMD_CLR_IP_IUS, align 4
  %95 = load i32, i32* @Z8536_PB_CMDSTAT_REG, align 4
  %96 = call i32 @z8536_write(%struct.comedi_device* %93, i32 %94, i32 %95)
  %97 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %98 = load i32, i32* @Z8536_CMD_CLR_IE, align 4
  %99 = load i32, i32* @Z8536_PB_CMDSTAT_REG, align 4
  %100 = call i32 @z8536_write(%struct.comedi_device* %97, i32 %98, i32 %99)
  %101 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %102 = load i32, i32* @Z8536_CMD_CLR_IP_IUS, align 4
  %103 = call i32 @Z8536_CT_CMDSTAT_REG(i32 0)
  %104 = call i32 @z8536_write(%struct.comedi_device* %101, i32 %102, i32 %103)
  %105 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %106 = load i32, i32* @Z8536_CMD_CLR_IE, align 4
  %107 = call i32 @Z8536_CT_CMDSTAT_REG(i32 0)
  %108 = call i32 @z8536_write(%struct.comedi_device* %105, i32 %106, i32 %107)
  %109 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %110 = load i32, i32* @Z8536_CMD_CLR_IP_IUS, align 4
  %111 = call i32 @Z8536_CT_CMDSTAT_REG(i32 1)
  %112 = call i32 @z8536_write(%struct.comedi_device* %109, i32 %110, i32 %111)
  %113 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %114 = load i32, i32* @Z8536_CMD_CLR_IE, align 4
  %115 = call i32 @Z8536_CT_CMDSTAT_REG(i32 1)
  %116 = call i32 @z8536_write(%struct.comedi_device* %113, i32 %114, i32 %115)
  %117 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %118 = load i32, i32* @Z8536_CMD_CLR_IP_IUS, align 4
  %119 = call i32 @Z8536_CT_CMDSTAT_REG(i32 2)
  %120 = call i32 @z8536_write(%struct.comedi_device* %117, i32 %118, i32 %119)
  %121 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %122 = load i32, i32* @Z8536_CMD_CLR_IE, align 4
  %123 = call i32 @Z8536_CT_CMDSTAT_REG(i32 2)
  %124 = call i32 @z8536_write(%struct.comedi_device* %121, i32 %122, i32 %123)
  %125 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %126 = load i32, i32* @Z8536_INT_CTRL_REG, align 4
  %127 = call i32 @z8536_write(%struct.comedi_device* %125, i32 0, i32 %126)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @z8536_write(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @Z8536_CT_CMDSTAT_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
