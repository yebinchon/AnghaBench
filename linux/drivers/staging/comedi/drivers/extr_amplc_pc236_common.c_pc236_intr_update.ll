; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pc236_common.c_pc236_intr_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pc236_common.c_pc236_intr_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pc236_private*, %struct.pc236_board* }
%struct.pc236_private = type { i32 }
%struct.pc236_board = type { i32 (%struct.comedi_device.0*, i32)* }
%struct.comedi_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32)* @pc236_intr_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pc236_intr_update(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pc236_board*, align 8
  %6 = alloca %struct.pc236_private*, align 8
  %7 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 2
  %10 = load %struct.pc236_board*, %struct.pc236_board** %9, align 8
  store %struct.pc236_board* %10, %struct.pc236_board** %5, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 1
  %13 = load %struct.pc236_private*, %struct.pc236_private** %12, align 8
  store %struct.pc236_private* %13, %struct.pc236_private** %6, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.pc236_private*, %struct.pc236_private** %6, align 8
  %20 = getelementptr inbounds %struct.pc236_private, %struct.pc236_private* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.pc236_board*, %struct.pc236_board** %5, align 8
  %22 = getelementptr inbounds %struct.pc236_board, %struct.pc236_board* %21, i32 0, i32 0
  %23 = load i32 (%struct.comedi_device.0*, i32)*, i32 (%struct.comedi_device.0*, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.comedi_device.0*, i32)* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.pc236_board*, %struct.pc236_board** %5, align 8
  %27 = getelementptr inbounds %struct.pc236_board, %struct.pc236_board* %26, i32 0, i32 0
  %28 = load i32 (%struct.comedi_device.0*, i32)*, i32 (%struct.comedi_device.0*, i32)** %27, align 8
  %29 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %30 = bitcast %struct.comedi_device* %29 to %struct.comedi_device.0*
  %31 = load i32, i32* %4, align 4
  %32 = call i32 %28(%struct.comedi_device.0* %30, i32 %31)
  br label %33

33:                                               ; preds = %25, %2
  %34 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 0
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
