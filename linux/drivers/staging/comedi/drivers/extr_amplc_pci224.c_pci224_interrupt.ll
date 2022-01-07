; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice*, %struct.pci224_private* }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64 }
%struct.pci224_private = type { i8, i32, i32, i64, i32 }

@PCI224_INT_SCE = common dso_local global i64 0, align 8
@THISCPU = common dso_local global i32 0, align 4
@PCI224_INTR_EXT = common dso_local global i8 0, align 1
@TRIG_EXT = common dso_local global i64 0, align 8
@PCI224_INTR_DAC = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pci224_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci224_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.pci224_private*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_cmd*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.comedi_device*
  store %struct.comedi_device* %15, %struct.comedi_device** %5, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 1
  %18 = load %struct.pci224_private*, %struct.pci224_private** %17, align 8
  store %struct.pci224_private* %18, %struct.pci224_private** %6, align 8
  %19 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 0
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %20, align 8
  store %struct.comedi_subdevice* %21, %struct.comedi_subdevice** %7, align 8
  store i32 0, i32* %12, align 4
  %22 = load %struct.pci224_private*, %struct.pci224_private** %6, align 8
  %23 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PCI224_INT_SCE, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @inb(i64 %26)
  %28 = and i32 %27, 63
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %9, align 1
  %30 = load i8, i8* %9, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %155

32:                                               ; preds = %2
  store i32 1, i32* %12, align 4
  %33 = load %struct.pci224_private*, %struct.pci224_private** %6, align 8
  %34 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %33, i32 0, i32 2
  %35 = load i64, i64* %13, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.pci224_private*, %struct.pci224_private** %6, align 8
  %38 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %37, i32 0, i32 0
  %39 = load i8, i8* %38, align 8
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* %9, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %40, %42
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %10, align 1
  %45 = load %struct.pci224_private*, %struct.pci224_private** %6, align 8
  %46 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %45, i32 0, i32 0
  %47 = load i8, i8* %46, align 8
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %9, align 1
  %50 = zext i8 %49 to i32
  %51 = xor i32 %50, -1
  %52 = and i32 %48, %51
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %11, align 1
  %54 = load i8, i8* %11, align 1
  %55 = load %struct.pci224_private*, %struct.pci224_private** %6, align 8
  %56 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PCI224_INT_SCE, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @outb(i8 zeroext %54, i64 %59)
  %61 = load %struct.pci224_private*, %struct.pci224_private** %6, align 8
  %62 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  %63 = load i32, i32* @THISCPU, align 4
  %64 = load %struct.pci224_private*, %struct.pci224_private** %6, align 8
  %65 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.pci224_private*, %struct.pci224_private** %6, align 8
  %67 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %66, i32 0, i32 2
  %68 = load i64, i64* %13, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i8, i8* %10, align 1
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %72, label %126

72:                                               ; preds = %32
  %73 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %74 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store %struct.comedi_cmd* %76, %struct.comedi_cmd** %8, align 8
  %77 = load i8, i8* %10, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* @PCI224_INTR_EXT, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %114

83:                                               ; preds = %72
  %84 = load i8, i8* @PCI224_INTR_EXT, align 1
  %85 = zext i8 %84 to i32
  %86 = xor i32 %85, -1
  %87 = load %struct.pci224_private*, %struct.pci224_private** %6, align 8
  %88 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %87, i32 0, i32 0
  %89 = load i8, i8* %88, align 8
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, %86
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %88, align 8
  %93 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %94 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @TRIG_EXT, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %83
  %99 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %100 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %101 = call i32 @pci224_ao_start(%struct.comedi_device* %99, %struct.comedi_subdevice* %100)
  br label %113

102:                                              ; preds = %83
  %103 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %104 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @TRIG_EXT, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %110 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %111 = call i32 @pci224_ao_stop(%struct.comedi_device* %109, %struct.comedi_subdevice* %110)
  br label %112

112:                                              ; preds = %108, %102
  br label %113

113:                                              ; preds = %112, %98
  br label %114

114:                                              ; preds = %113, %72
  %115 = load i8, i8* %10, align 1
  %116 = zext i8 %115 to i32
  %117 = load i8, i8* @PCI224_INTR_DAC, align 1
  %118 = zext i8 %117 to i32
  %119 = and i32 %116, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %123 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %124 = call i32 @pci224_ao_handle_fifo(%struct.comedi_device* %122, %struct.comedi_subdevice* %123)
  br label %125

125:                                              ; preds = %121, %114
  br label %126

126:                                              ; preds = %125, %32
  %127 = load %struct.pci224_private*, %struct.pci224_private** %6, align 8
  %128 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %127, i32 0, i32 2
  %129 = load i64, i64* %13, align 8
  %130 = call i32 @spin_lock_irqsave(i32* %128, i64 %129)
  %131 = load i8, i8* %11, align 1
  %132 = zext i8 %131 to i32
  %133 = load %struct.pci224_private*, %struct.pci224_private** %6, align 8
  %134 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %133, i32 0, i32 0
  %135 = load i8, i8* %134, align 8
  %136 = zext i8 %135 to i32
  %137 = icmp ne i32 %132, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %126
  %139 = load %struct.pci224_private*, %struct.pci224_private** %6, align 8
  %140 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %139, i32 0, i32 0
  %141 = load i8, i8* %140, align 8
  %142 = load %struct.pci224_private*, %struct.pci224_private** %6, align 8
  %143 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @PCI224_INT_SCE, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @outb(i8 zeroext %141, i64 %146)
  br label %148

148:                                              ; preds = %138, %126
  %149 = load %struct.pci224_private*, %struct.pci224_private** %6, align 8
  %150 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %149, i32 0, i32 1
  store i32 0, i32* %150, align 4
  %151 = load %struct.pci224_private*, %struct.pci224_private** %6, align 8
  %152 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %151, i32 0, i32 2
  %153 = load i64, i64* %13, align 8
  %154 = call i32 @spin_unlock_irqrestore(i32* %152, i64 %153)
  br label %155

155:                                              ; preds = %148, %2
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @IRQ_RETVAL(i32 %156)
  ret i32 %157
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pci224_ao_start(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @pci224_ao_stop(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @pci224_ao_handle_fifo(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
