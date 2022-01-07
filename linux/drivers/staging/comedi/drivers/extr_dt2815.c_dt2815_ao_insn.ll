; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt2815.c_dt2815_ao_insn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt2815.c_dt2815_ao_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.dt2815_private* }
%struct.dt2815_private = type { i32* }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@dt2815_ao_status = common dso_local global i32 0, align 4
@DT2815_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dt2815_ao_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt2815_ao_insn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dt2815_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 1
  %18 = load %struct.dt2815_private*, %struct.dt2815_private** %17, align 8
  store %struct.dt2815_private* %18, %struct.dt2815_private** %10, align 8
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %20 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CR_CHAN(i32 %21)
  store i32 %22, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %86, %4
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %26 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %89

29:                                               ; preds = %23
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 15
  %36 = shl i32 %35, 4
  %37 = load i32, i32* %12, align 4
  %38 = shl i32 %37, 1
  %39 = or i32 %36, %38
  %40 = or i32 %39, 1
  store i32 %40, i32* %13, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 4080
  %47 = lshr i32 %46, 4
  store i32 %47, i32* %14, align 4
  %48 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %50 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %51 = load i32, i32* @dt2815_ao_status, align 4
  %52 = call i32 @comedi_timeout(%struct.comedi_device* %48, %struct.comedi_subdevice* %49, %struct.comedi_insn* %50, i32 %51, i32 0)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %29
  %56 = load i32, i32* %15, align 4
  store i32 %56, i32* %5, align 4
  br label %91

57:                                               ; preds = %29
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %60 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DT2815_DATA, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @outb(i32 %58, i64 %63)
  %65 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %67 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %68 = load i32, i32* @dt2815_ao_status, align 4
  %69 = call i32 @comedi_timeout(%struct.comedi_device* %65, %struct.comedi_subdevice* %66, %struct.comedi_insn* %67, i32 %68, i32 16)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %57
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %5, align 4
  br label %91

74:                                               ; preds = %57
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.dt2815_private*, %struct.dt2815_private** %10, align 8
  %81 = getelementptr inbounds %struct.dt2815_private, %struct.dt2815_private* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %79, i32* %85, align 4
  br label %86

86:                                               ; preds = %74
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %23

89:                                               ; preds = %23
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %72, %55
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
