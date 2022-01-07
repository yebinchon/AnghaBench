; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_bond.c_bonding_dio_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_bond.c_bonding_dio_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_bond_private* }
%struct.comedi_bond_private = type { %struct.bonded_device** }
%struct.bonded_device = type { i32, i32, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @bonding_dio_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bonding_dio_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.comedi_bond_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bonded_device*, align 8
  %13 = alloca %struct.bonded_device**, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load %struct.comedi_bond_private*, %struct.comedi_bond_private** %15, align 8
  store %struct.comedi_bond_private* %16, %struct.comedi_bond_private** %9, align 8
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CR_CHAN(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.comedi_bond_private*, %struct.comedi_bond_private** %9, align 8
  %22 = getelementptr inbounds %struct.comedi_bond_private, %struct.comedi_bond_private* %21, i32 0, i32 0
  %23 = load %struct.bonded_device**, %struct.bonded_device*** %22, align 8
  store %struct.bonded_device** %23, %struct.bonded_device*** %13, align 8
  %24 = load %struct.bonded_device**, %struct.bonded_device*** %13, align 8
  %25 = getelementptr inbounds %struct.bonded_device*, %struct.bonded_device** %24, i32 1
  store %struct.bonded_device** %25, %struct.bonded_device*** %13, align 8
  %26 = load %struct.bonded_device*, %struct.bonded_device** %24, align 8
  store %struct.bonded_device* %26, %struct.bonded_device** %12, align 8
  br label %27

27:                                               ; preds = %39, %4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.bonded_device*, %struct.bonded_device** %12, align 8
  %30 = getelementptr inbounds %struct.bonded_device, %struct.bonded_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp uge i32 %28, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.bonded_device*, %struct.bonded_device** %12, align 8
  %35 = getelementptr inbounds %struct.bonded_device, %struct.bonded_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = sub i32 %37, %36
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %33
  %40 = load %struct.bonded_device**, %struct.bonded_device*** %13, align 8
  %41 = getelementptr inbounds %struct.bonded_device*, %struct.bonded_device** %40, i32 1
  store %struct.bonded_device** %41, %struct.bonded_device*** %13, align 8
  %42 = load %struct.bonded_device*, %struct.bonded_device** %40, align 8
  store %struct.bonded_device* %42, %struct.bonded_device** %12, align 8
  br label %27

43:                                               ; preds = %27
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %70 [
    i32 129, label %47
    i32 130, label %47
    i32 128, label %59
  ]

47:                                               ; preds = %43, %43
  %48 = load %struct.bonded_device*, %struct.bonded_device** %12, align 8
  %49 = getelementptr inbounds %struct.bonded_device, %struct.bonded_device* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.bonded_device*, %struct.bonded_device** %12, align 8
  %52 = getelementptr inbounds %struct.bonded_device, %struct.bonded_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @comedi_dio_config(i32 %50, i32 %53, i32 %54, i32 %57)
  store i32 %58, i32* %11, align 4
  br label %73

59:                                               ; preds = %43
  %60 = load %struct.bonded_device*, %struct.bonded_device** %12, align 8
  %61 = getelementptr inbounds %struct.bonded_device, %struct.bonded_device* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.bonded_device*, %struct.bonded_device** %12, align 8
  %64 = getelementptr inbounds %struct.bonded_device, %struct.bonded_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = call i32 @comedi_dio_get_config(i32 %62, i32 %65, i32 %66, i32* %68)
  store i32 %69, i32* %11, align 4
  br label %73

70:                                               ; preds = %43
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %70, %59, %47
  %74 = load i32, i32* %11, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %78 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i32, i32* %11, align 4
  ret i32 %81
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_dio_config(i32, i32, i32, i32) #1

declare dso_local i32 @comedi_dio_get_config(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
