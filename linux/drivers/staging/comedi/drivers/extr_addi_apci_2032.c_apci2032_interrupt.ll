; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_2032.c_apci2032_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_2032.c_apci2032_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.TYPE_2__*, %struct.apci2032_int_private* }
%struct.TYPE_2__ = type { i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64, i64, i32* }
%struct.apci2032_int_private = type { i32, i32, i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@APCI2032_STATUS_REG = common dso_local global i64 0, align 8
@APCI2032_STATUS_IRQ = common dso_local global i32 0, align 4
@APCI2032_INT_STATUS_REG = common dso_local global i64 0, align 8
@APCI2032_INT_CTRL_REG = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @apci2032_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci2032_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_cmd*, align 8
  %9 = alloca %struct.apci2032_int_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.comedi_device*
  store %struct.comedi_device* %15, %struct.comedi_device** %6, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 2
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %17, align 8
  store %struct.comedi_subdevice* %18, %struct.comedi_subdevice** %7, align 8
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store %struct.comedi_cmd* %22, %struct.comedi_cmd** %8, align 8
  %23 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %143

29:                                               ; preds = %2
  %30 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @APCI2032_STATUS_REG, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @inl(i64 %34)
  %36 = load i32, i32* @APCI2032_STATUS_IRQ, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* @IRQ_NONE, align 4
  store i32 %41, i32* %3, align 4
  br label %143

42:                                               ; preds = %29
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %44 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %43, i32 0, i32 1
  %45 = load %struct.apci2032_int_private*, %struct.apci2032_int_private** %44, align 8
  store %struct.apci2032_int_private* %45, %struct.apci2032_int_private** %9, align 8
  %46 = load %struct.apci2032_int_private*, %struct.apci2032_int_private** %9, align 8
  %47 = getelementptr inbounds %struct.apci2032_int_private, %struct.apci2032_int_private* %46, i32 0, i32 1
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @APCI2032_INT_STATUS_REG, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @inl(i64 %53)
  %55 = and i32 %54, 3
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %57, 3
  %59 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %60 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @APCI2032_INT_CTRL_REG, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @outl(i32 %58, i64 %63)
  %65 = load %struct.apci2032_int_private*, %struct.apci2032_int_private** %9, align 8
  %66 = getelementptr inbounds %struct.apci2032_int_private, %struct.apci2032_int_private* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %135

69:                                               ; preds = %42
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.apci2032_int_private*, %struct.apci2032_int_private** %9, align 8
  %72 = getelementptr inbounds %struct.apci2032_int_private, %struct.apci2032_int_private* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %135

76:                                               ; preds = %69
  store i16 0, i16* %11, align 2
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %105, %76
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %80 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %108

83:                                               ; preds = %77
  %84 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %85 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @CR_CHAN(i32 %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %13, align 4
  %94 = shl i32 1, %93
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %83
  %98 = load i32, i32* %12, align 4
  %99 = shl i32 1, %98
  %100 = load i16, i16* %11, align 2
  %101 = zext i16 %100 to i32
  %102 = or i32 %101, %99
  %103 = trunc i32 %102 to i16
  store i16 %103, i16* %11, align 2
  br label %104

104:                                              ; preds = %97, %83
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %77

108:                                              ; preds = %77
  %109 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %110 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %109, i16* %11, i32 1)
  %111 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %112 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @TRIG_COUNT, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %134

116:                                              ; preds = %108
  %117 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %118 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %123 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp sge i64 %121, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %116
  %127 = load i32, i32* @COMEDI_CB_EOA, align 4
  %128 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %129 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %127
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %126, %116, %108
  br label %135

135:                                              ; preds = %134, %69, %42
  %136 = load %struct.apci2032_int_private*, %struct.apci2032_int_private** %9, align 8
  %137 = getelementptr inbounds %struct.apci2032_int_private, %struct.apci2032_int_private* %136, i32 0, i32 1
  %138 = call i32 @spin_unlock(i32* %137)
  %139 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %140 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %141 = call i32 @comedi_handle_events(%struct.comedi_device* %139, %struct.comedi_subdevice* %140)
  %142 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %135, %40, %27
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i16*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
