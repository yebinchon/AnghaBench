; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_bond.c_bonding_dio_insn_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_bond.c_bonding_dio_insn_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_bond_private* }
%struct.comedi_bond_private = type { i32, %struct.bonded_device** }
%struct.bonded_device = type { i32, i32, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @bonding_dio_insn_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bonding_dio_insn_bits(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.comedi_bond_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bonded_device**, align 8
  %17 = alloca %struct.bonded_device*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %23 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 0
  %25 = load %struct.comedi_bond_private*, %struct.comedi_bond_private** %24, align 8
  store %struct.comedi_bond_private* %25, %struct.comedi_bond_private** %10, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %14, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %15, align 4
  %32 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %33 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @CR_CHAN(i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load %struct.comedi_bond_private*, %struct.comedi_bond_private** %10, align 8
  %37 = getelementptr inbounds %struct.comedi_bond_private, %struct.comedi_bond_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sub i32 %38, %39
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ugt i32 %41, 32
  br i1 %42, label %43, label %44

43:                                               ; preds = %4
  store i32 32, i32* %11, align 4
  br label %44

44:                                               ; preds = %43, %4
  store i32 0, i32* %12, align 4
  %45 = load %struct.comedi_bond_private*, %struct.comedi_bond_private** %10, align 8
  %46 = getelementptr inbounds %struct.comedi_bond_private, %struct.comedi_bond_private* %45, i32 0, i32 1
  %47 = load %struct.bonded_device**, %struct.bonded_device*** %46, align 8
  store %struct.bonded_device** %47, %struct.bonded_device*** %16, align 8
  br label %48

48:                                               ; preds = %132, %44
  %49 = load %struct.bonded_device**, %struct.bonded_device*** %16, align 8
  %50 = getelementptr inbounds %struct.bonded_device*, %struct.bonded_device** %49, i32 1
  store %struct.bonded_device** %50, %struct.bonded_device*** %16, align 8
  %51 = load %struct.bonded_device*, %struct.bonded_device** %49, align 8
  store %struct.bonded_device* %51, %struct.bonded_device** %17, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.bonded_device*, %struct.bonded_device** %17, align 8
  %54 = getelementptr inbounds %struct.bonded_device, %struct.bonded_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ult i32 %52, %55
  br i1 %56, label %57, label %125

57:                                               ; preds = %48
  %58 = load %struct.bonded_device*, %struct.bonded_device** %17, align 8
  %59 = getelementptr inbounds %struct.bonded_device, %struct.bonded_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %13, align 4
  %62 = sub i32 %60, %61
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ugt i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %18, align 4
  br label %68

68:                                               ; preds = %66, %57
  %69 = load i32, i32* %18, align 4
  %70 = icmp ult i32 %69, 32
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* %18, align 4
  %73 = shl i32 1, %72
  %74 = sub nsw i32 %73, 1
  br label %76

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %71
  %77 = phi i32 [ %74, %71 ], [ -1, %75 ]
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %12, align 4
  %80 = lshr i32 %78, %79
  %81 = load i32, i32* %19, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %20, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %12, align 4
  %85 = lshr i32 %83, %84
  %86 = load i32, i32* %19, align 4
  %87 = and i32 %85, %86
  store i32 %87, i32* %21, align 4
  %88 = load %struct.bonded_device*, %struct.bonded_device** %17, align 8
  %89 = getelementptr inbounds %struct.bonded_device, %struct.bonded_device* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.bonded_device*, %struct.bonded_device** %17, align 8
  %92 = getelementptr inbounds %struct.bonded_device, %struct.bonded_device* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @comedi_dio_bitfield2(i32 %90, i32 %93, i32 %94, i32* %21, i32 %95)
  store i32 %96, i32* %22, align 4
  %97 = load i32, i32* %22, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %76
  %100 = load i32, i32* %22, align 4
  store i32 %100, i32* %5, align 4
  br label %139

101:                                              ; preds = %76
  %102 = load i32, i32* %19, align 4
  %103 = load i32, i32* %12, align 4
  %104 = shl i32 %102, %103
  %105 = xor i32 %104, -1
  %106 = load i32*, i32** %9, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 4
  %110 = load i32, i32* %21, align 4
  %111 = load i32, i32* %19, align 4
  %112 = and i32 %110, %111
  %113 = load i32, i32* %12, align 4
  %114 = shl i32 %112, %113
  %115 = load i32*, i32** %9, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  store i32 0, i32* %13, align 4
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* %12, align 4
  %121 = add i32 %120, %119
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* %11, align 4
  %124 = sub i32 %123, %122
  store i32 %124, i32* %11, align 4
  br label %131

125:                                              ; preds = %48
  %126 = load %struct.bonded_device*, %struct.bonded_device** %17, align 8
  %127 = getelementptr inbounds %struct.bonded_device, %struct.bonded_device* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %13, align 4
  %130 = sub i32 %129, %128
  store i32 %130, i32* %13, align 4
  br label %131

131:                                              ; preds = %125, %101
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %48, label %135

135:                                              ; preds = %132
  %136 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %137 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %135, %99
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_dio_bitfield2(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
