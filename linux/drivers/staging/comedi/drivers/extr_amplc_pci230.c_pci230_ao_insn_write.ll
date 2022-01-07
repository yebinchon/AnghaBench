; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ao_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ao_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pci230_private* }
%struct.pci230_private = type { i64, i32 }
%struct.comedi_subdevice = type { i32* }
%struct.comedi_insn = type { i32, i32 }

@PCI230_DACCON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pci230_ao_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci230_ao_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pci230_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load %struct.pci230_private*, %struct.pci230_private** %15, align 8
  store %struct.pci230_private* %16, %struct.pci230_private** %9, align 8
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CR_CHAN(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @CR_RANGE(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %26 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @comedi_range_is_bipolar(%struct.comedi_subdevice* %32, i32 %33)
  %35 = load %struct.pci230_private*, %struct.pci230_private** %9, align 8
  %36 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.pci230_private*, %struct.pci230_private** %9, align 8
  %39 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PCI230_DACCON, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outw(i32 %37, i64 %42)
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %60, %4
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %47 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %12, align 4
  %56 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @pci230_ao_write_nofifo(%struct.comedi_device* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  br label %44

63:                                               ; preds = %44
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %66 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  %71 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %72 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  ret i32 %73
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @comedi_range_is_bipolar(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @pci230_ao_write_nofifo(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
