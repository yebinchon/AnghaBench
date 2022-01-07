; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ao_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ao_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.pci230_private* }
%struct.pci230_private = type { i32, i16, i64, i64 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i32, i32, i32, i32* }

@TRIG_TIMER = common dso_local global i64 0, align 8
@RES_Z2CT1 = common dso_local global i32 0, align 4
@OWNER_AOCMD = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PCI230_DAC_OR_BIP = common dso_local global i16 0, align 2
@PCI230_DAC_OR_UNI = common dso_local global i16 0, align 2
@PCI230P2_DACEN = common dso_local global i64 0, align 8
@PCI230P2_DAC_FIFO_EN = common dso_local global i16 0, align 2
@PCI230P2_DAC_FIFO_RESET = common dso_local global i16 0, align 2
@PCI230P2_DAC_FIFO_UNDERRUN_CLEAR = common dso_local global i16 0, align 2
@PCI230P2_DAC_TRIG_NONE = common dso_local global i16 0, align 2
@PCI230P2_DAC_INT_FIFO_NHALF = common dso_local global i16 0, align 2
@PCI230_DACCON = common dso_local global i64 0, align 8
@GAT_GND = common dso_local global i32 0, align 4
@PCI230_ZGAT_SCE = common dso_local global i64 0, align 8
@I8254_MODE3 = common dso_local global i32 0, align 4
@pci230_ao_inttrig_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci230_ao_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci230_ao_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.pci230_private*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca %struct.comedi_cmd*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load %struct.pci230_private*, %struct.pci230_private** %13, align 8
  store %struct.pci230_private* %14, %struct.pci230_private** %6, align 8
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store %struct.comedi_cmd* %18, %struct.comedi_cmd** %9, align 8
  %19 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %20 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TRIG_TIMER, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %26 = load i32, i32* @RES_Z2CT1, align 4
  %27 = load i32, i32* @OWNER_AOCMD, align 4
  %28 = call i32 @pci230_claim_shared(%struct.comedi_device* %25, i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %162

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %36 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @CR_RANGE(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @comedi_range_is_bipolar(%struct.comedi_subdevice* %41, i32 %42)
  %44 = load %struct.pci230_private*, %struct.pci230_private** %6, align 8
  %45 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %44, i32 0, i32 3
  store i64 %43, i64* %45, align 8
  %46 = load %struct.pci230_private*, %struct.pci230_private** %6, align 8
  %47 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %34
  %51 = load i16, i16* @PCI230_DAC_OR_BIP, align 2
  %52 = zext i16 %51 to i32
  br label %56

53:                                               ; preds = %34
  %54 = load i16, i16* @PCI230_DAC_OR_UNI, align 2
  %55 = zext i16 %54 to i32
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i32 [ %52, %50 ], [ %55, %53 ]
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %7, align 2
  %59 = load %struct.pci230_private*, %struct.pci230_private** %6, align 8
  %60 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sge i32 %61, 2
  br i1 %62, label %63, label %113

63:                                               ; preds = %56
  store i16 0, i16* %10, align 2
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %84, %63
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %67 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp ult i32 %65, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %64
  %71 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %72 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @CR_CHAN(i32 %77)
  %79 = shl i32 1, %78
  %80 = load i16, i16* %10, align 2
  %81 = zext i16 %80 to i32
  %82 = or i32 %81, %79
  %83 = trunc i32 %82 to i16
  store i16 %83, i16* %10, align 2
  br label %84

84:                                               ; preds = %70
  %85 = load i32, i32* %11, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %64

87:                                               ; preds = %64
  %88 = load i16, i16* %10, align 2
  %89 = load %struct.pci230_private*, %struct.pci230_private** %6, align 8
  %90 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PCI230P2_DACEN, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @outw(i16 zeroext %88, i64 %93)
  %95 = load i16, i16* @PCI230P2_DAC_FIFO_EN, align 2
  %96 = zext i16 %95 to i32
  %97 = load i16, i16* @PCI230P2_DAC_FIFO_RESET, align 2
  %98 = zext i16 %97 to i32
  %99 = or i32 %96, %98
  %100 = load i16, i16* @PCI230P2_DAC_FIFO_UNDERRUN_CLEAR, align 2
  %101 = zext i16 %100 to i32
  %102 = or i32 %99, %101
  %103 = load i16, i16* @PCI230P2_DAC_TRIG_NONE, align 2
  %104 = zext i16 %103 to i32
  %105 = or i32 %102, %104
  %106 = load i16, i16* @PCI230P2_DAC_INT_FIFO_NHALF, align 2
  %107 = zext i16 %106 to i32
  %108 = or i32 %105, %107
  %109 = load i16, i16* %7, align 2
  %110 = zext i16 %109 to i32
  %111 = or i32 %110, %108
  %112 = trunc i32 %111 to i16
  store i16 %112, i16* %7, align 2
  br label %113

113:                                              ; preds = %87, %56
  %114 = load i16, i16* %7, align 2
  %115 = load %struct.pci230_private*, %struct.pci230_private** %6, align 8
  %116 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @PCI230_DACCON, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @outw(i16 zeroext %114, i64 %119)
  %121 = load i16, i16* %7, align 2
  %122 = zext i16 %121 to i32
  %123 = load i16, i16* @PCI230P2_DAC_FIFO_RESET, align 2
  %124 = zext i16 %123 to i32
  %125 = load i16, i16* @PCI230P2_DAC_FIFO_UNDERRUN_CLEAR, align 2
  %126 = zext i16 %125 to i32
  %127 = or i32 %124, %126
  %128 = xor i32 %127, -1
  %129 = and i32 %122, %128
  %130 = trunc i32 %129 to i16
  %131 = load %struct.pci230_private*, %struct.pci230_private** %6, align 8
  %132 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %131, i32 0, i32 1
  store i16 %130, i16* %132, align 4
  %133 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %134 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @TRIG_TIMER, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %156

138:                                              ; preds = %113
  %139 = load i32, i32* @GAT_GND, align 4
  %140 = call i32 @pci230_gat_config(i32 1, i32 %139)
  %141 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %142 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @PCI230_ZGAT_SCE, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @outb(i32 %140, i64 %145)
  %147 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %148 = load i32, i32* @I8254_MODE3, align 4
  %149 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %150 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %153 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @pci230_ct_setup_ns_mode(%struct.comedi_device* %147, i32 1, i32 %148, i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %138, %113
  %157 = load i32, i32* @pci230_ao_inttrig_start, align 4
  %158 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %159 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %158, i32 0, i32 0
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  store i32 %157, i32* %161, align 8
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %156, %30
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @pci230_claim_shared(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i64 @comedi_range_is_bipolar(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @pci230_gat_config(i32, i32) #1

declare dso_local i32 @pci230_ct_setup_ns_mode(%struct.comedi_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
