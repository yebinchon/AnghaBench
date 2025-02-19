; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_at_ao.c_atao_dio_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_at_ao.c_atao_dio_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.atao_private* }
%struct.atao_private = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@ATAO_CFG3_DOUTEN1 = common dso_local global i32 0, align 4
@ATAO_CFG3_DOUTEN2 = common dso_local global i32 0, align 4
@ATAO_CFG3_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @atao_dio_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atao_dio_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.atao_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 1
  %16 = load %struct.atao_private*, %struct.atao_private** %15, align 8
  store %struct.atao_private* %16, %struct.atao_private** %10, align 8
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CR_CHAN(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ult i32 %21, 4
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 15, i32* %12, align 4
  br label %25

24:                                               ; preds = %4
  store i32 240, i32* %12, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %28 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @comedi_dio_insn_config(%struct.comedi_device* %26, %struct.comedi_subdevice* %27, %struct.comedi_insn* %28, i32* %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %5, align 4
  br label %87

36:                                               ; preds = %25
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %38 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 15
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i32, i32* @ATAO_CFG3_DOUTEN1, align 4
  %44 = load %struct.atao_private*, %struct.atao_private** %10, align 8
  %45 = getelementptr inbounds %struct.atao_private, %struct.atao_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %55

48:                                               ; preds = %36
  %49 = load i32, i32* @ATAO_CFG3_DOUTEN1, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.atao_private*, %struct.atao_private** %10, align 8
  %52 = getelementptr inbounds %struct.atao_private, %struct.atao_private* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %48, %42
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 240
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i32, i32* @ATAO_CFG3_DOUTEN2, align 4
  %63 = load %struct.atao_private*, %struct.atao_private** %10, align 8
  %64 = getelementptr inbounds %struct.atao_private, %struct.atao_private* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %74

67:                                               ; preds = %55
  %68 = load i32, i32* @ATAO_CFG3_DOUTEN2, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.atao_private*, %struct.atao_private** %10, align 8
  %71 = getelementptr inbounds %struct.atao_private, %struct.atao_private* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %67, %61
  %75 = load %struct.atao_private*, %struct.atao_private** %10, align 8
  %76 = getelementptr inbounds %struct.atao_private, %struct.atao_private* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %79 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ATAO_CFG3_REG, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @outw(i32 %77, i64 %82)
  %84 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %85 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %74, %34
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_dio_insn_config(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
