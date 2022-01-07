; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das08.c_das08_do_insn_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das08.c_das08_do_insn_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64, %struct.das08_private_struct* }
%struct.das08_private_struct = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@DAS08_CONTROL_DO_MASK = common dso_local global i32 0, align 4
@DAS08_CONTROL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @das08_do_insn_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das08_do_insn_bits(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.das08_private_struct*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 2
  %12 = load %struct.das08_private_struct*, %struct.das08_private_struct** %11, align 8
  store %struct.das08_private_struct* %12, %struct.das08_private_struct** %9, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i64 @comedi_dio_update_state(%struct.comedi_subdevice* %13, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %4
  %18 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load i32, i32* @DAS08_CONTROL_DO_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.das08_private_struct*, %struct.das08_private_struct** %9, align 8
  %24 = getelementptr inbounds %struct.das08_private_struct, %struct.das08_private_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %28 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @DAS08_CONTROL_DO(i32 %29)
  %31 = load %struct.das08_private_struct*, %struct.das08_private_struct** %9, align 8
  %32 = getelementptr inbounds %struct.das08_private_struct, %struct.das08_private_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.das08_private_struct*, %struct.das08_private_struct** %9, align 8
  %36 = getelementptr inbounds %struct.das08_private_struct, %struct.das08_private_struct* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DAS08_CONTROL_REG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outb(i32 %37, i64 %42)
  %44 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock(i32* %45)
  br label %47

47:                                               ; preds = %17, %4
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %54 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  ret i32 %55
}

declare dso_local i64 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @DAS08_CONTROL_DO(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
