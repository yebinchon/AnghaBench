; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_bond.c_bonding_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_bond.c_bonding_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.TYPE_2__*, i32, %struct.comedi_subdevice* }
%struct.TYPE_2__ = type { i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32*, i32, i32 }
%struct.comedi_devconfig = type { i32 }
%struct.comedi_bond_private = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@COMEDI_SUBD_DIO = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@range_digital = common dso_local global i32 0, align 4
@bonding_dio_insn_bits = common dso_local global i32 0, align 4
@bonding_dio_insn_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%s: %s attached, %u channels from %u devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @bonding_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bonding_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.comedi_bond_private*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = call %struct.comedi_bond_private* @comedi_alloc_devpriv(%struct.comedi_device* %9, i32 12)
  store %struct.comedi_bond_private* %10, %struct.comedi_bond_private** %6, align 8
  %11 = load %struct.comedi_bond_private*, %struct.comedi_bond_private** %6, align 8
  %12 = icmp ne %struct.comedi_bond_private* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %82

16:                                               ; preds = %2
  %17 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %18 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %19 = call i32 @do_dev_config(%struct.comedi_device* %17, %struct.comedi_devconfig* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %82

24:                                               ; preds = %16
  %25 = load %struct.comedi_bond_private*, %struct.comedi_bond_private** %6, align 8
  %26 = getelementptr inbounds %struct.comedi_bond_private, %struct.comedi_bond_private* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %31 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %30, i32 1)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %82

36:                                               ; preds = %24
  %37 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 3
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %38, align 8
  %40 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i64 0
  store %struct.comedi_subdevice* %40, %struct.comedi_subdevice** %7, align 8
  %41 = load i32, i32* @COMEDI_SUBD_DIO, align 4
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %43 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @SDF_READABLE, align 4
  %45 = load i32, i32* @SDF_WRITABLE, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %48 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.comedi_bond_private*, %struct.comedi_bond_private** %6, align 8
  %50 = getelementptr inbounds %struct.comedi_bond_private, %struct.comedi_bond_private* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %53 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %55 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i32 0, i32 4
  store i32* @range_digital, i32** %57, align 8
  %58 = load i32, i32* @bonding_dio_insn_bits, align 4
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %60 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @bonding_dio_insn_config, align 4
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %73 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.comedi_bond_private*, %struct.comedi_bond_private** %6, align 8
  %76 = getelementptr inbounds %struct.comedi_bond_private, %struct.comedi_bond_private* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.comedi_bond_private*, %struct.comedi_bond_private** %6, align 8
  %79 = getelementptr inbounds %struct.comedi_bond_private, %struct.comedi_bond_private* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_info(i32 %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %74, i32 %77, i32 %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %36, %34, %22, %13
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.comedi_bond_private* @comedi_alloc_devpriv(%struct.comedi_device*, i32) #1

declare dso_local i32 @do_dev_config(%struct.comedi_device*, %struct.comedi_devconfig*) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
