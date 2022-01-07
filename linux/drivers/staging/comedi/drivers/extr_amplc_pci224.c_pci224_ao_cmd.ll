; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_ao_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_ao_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64, %struct.pci224_private*, %struct.pci224_board* }
%struct.pci224_private = type { i32, i32*, i32, i32, i64, i32 }
%struct.pci224_board = type { i32* }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64, i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@PCI224_DACCEN = common dso_local global i64 0, align 8
@PCI224_DACCON_TRIG_NONE = common dso_local global i32 0, align 4
@PCI224_DACCON_FIFOINTR_NHALF = common dso_local global i32 0, align 4
@PCI224_DACCON_POLAR_MASK = common dso_local global i32 0, align 4
@PCI224_DACCON_VREF_MASK = common dso_local global i32 0, align 4
@PCI224_DACCON_TRIG_MASK = common dso_local global i32 0, align 4
@PCI224_DACCON_FIFOINTR_MASK = common dso_local global i32 0, align 4
@PCI224_DACCON_FIFORESET = common dso_local global i32 0, align 4
@PCI224_DACCON = common dso_local global i64 0, align 8
@TRIG_TIMER = common dso_local global i64 0, align 8
@TRIG_INT = common dso_local global i64 0, align 8
@pci224_ao_inttrig_start = common dso_local global i32 0, align 4
@PCI224_INTR_EXT = common dso_local global i32 0, align 4
@PCI224_INT_SCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci224_ao_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci224_ao_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.pci224_board*, align 8
  %7 = alloca %struct.pci224_private*, align 8
  %8 = alloca %struct.comedi_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 3
  %17 = load %struct.pci224_board*, %struct.pci224_board** %16, align 8
  store %struct.pci224_board* %17, %struct.pci224_board** %6, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 2
  %20 = load %struct.pci224_private*, %struct.pci224_private** %19, align 8
  store %struct.pci224_private* %20, %struct.pci224_private** %7, align 8
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %22 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store %struct.comedi_cmd* %24, %struct.comedi_cmd** %8, align 8
  %25 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %26 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %31 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %196

37:                                               ; preds = %29
  %38 = load %struct.pci224_private*, %struct.pci224_private** %7, align 8
  %39 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %93, %37
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %43 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %96

46:                                               ; preds = %40
  %47 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %48 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @CR_CHAN(i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = shl i32 1, %55
  %57 = load %struct.pci224_private*, %struct.pci224_private** %7, align 8
  %58 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %82, %46
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %64 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ult i32 %62, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %61
  %68 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %69 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @CR_CHAN(i32 %74)
  %76 = load i32, i32* %12, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load i32, i32* %13, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %78, %67
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %11, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %61

85:                                               ; preds = %61
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.pci224_private*, %struct.pci224_private** %7, align 8
  %88 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %13, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  br label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %10, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %40

96:                                               ; preds = %40
  %97 = load %struct.pci224_private*, %struct.pci224_private** %7, align 8
  %98 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %101 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PCI224_DACCEN, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @outw(i32 %99, i64 %104)
  %106 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %107 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @CR_RANGE(i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load %struct.pci224_private*, %struct.pci224_private** %7, align 8
  %113 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.pci224_board*, %struct.pci224_board** %6, align 8
  %116 = getelementptr inbounds %struct.pci224_board, %struct.pci224_board* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @PCI224_DACCON_TRIG_NONE, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @PCI224_DACCON_FIFOINTR_NHALF, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @PCI224_DACCON_POLAR_MASK, align 4
  %127 = load i32, i32* @PCI224_DACCON_VREF_MASK, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @PCI224_DACCON_TRIG_MASK, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @PCI224_DACCON_FIFOINTR_MASK, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @COMBINE(i32 %114, i32 %125, i32 %132)
  %134 = load %struct.pci224_private*, %struct.pci224_private** %7, align 8
  %135 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load %struct.pci224_private*, %struct.pci224_private** %7, align 8
  %137 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @PCI224_DACCON_FIFORESET, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %142 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @PCI224_DACCON, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @outw(i32 %140, i64 %145)
  %147 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %148 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @TRIG_TIMER, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %160

152:                                              ; preds = %96
  %153 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %154 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @comedi_8254_update_divisors(i32 %155)
  %157 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %158 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %159 = call i32 @pci224_ao_start_pacer(%struct.comedi_device* %157, %struct.comedi_subdevice* %158)
  br label %160

160:                                              ; preds = %152, %96
  %161 = load %struct.pci224_private*, %struct.pci224_private** %7, align 8
  %162 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %161, i32 0, i32 3
  %163 = load i64, i64* %14, align 8
  %164 = call i32 @spin_lock_irqsave(i32* %162, i64 %163)
  %165 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %166 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @TRIG_INT, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %160
  %171 = load i32, i32* @pci224_ao_inttrig_start, align 4
  %172 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %173 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %172, i32 0, i32 0
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  store i32 %171, i32* %175, align 8
  br label %191

176:                                              ; preds = %160
  %177 = load i32, i32* @PCI224_INTR_EXT, align 4
  %178 = load %struct.pci224_private*, %struct.pci224_private** %7, align 8
  %179 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 8
  %182 = load %struct.pci224_private*, %struct.pci224_private** %7, align 8
  %183 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.pci224_private*, %struct.pci224_private** %7, align 8
  %186 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @PCI224_INT_SCE, align 8
  %189 = add nsw i64 %187, %188
  %190 = call i32 @outb(i32 %184, i64 %189)
  br label %191

191:                                              ; preds = %176, %170
  %192 = load %struct.pci224_private*, %struct.pci224_private** %7, align 8
  %193 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %192, i32 0, i32 3
  %194 = load i64, i64* %14, align 8
  %195 = call i32 @spin_unlock_irqrestore(i32* %193, i64 %194)
  store i32 0, i32* %3, align 4
  br label %196

196:                                              ; preds = %191, %34
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @COMBINE(i32, i32, i32) #1

declare dso_local i32 @comedi_8254_update_divisors(i32) #1

declare dso_local i32 @pci224_ao_start_pacer(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
