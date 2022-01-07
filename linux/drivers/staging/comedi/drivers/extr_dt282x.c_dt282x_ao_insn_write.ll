; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_ao_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_ao_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.dt282x_private* }
%struct.dt282x_private = type { i32, i32 }
%struct.comedi_subdevice = type { i32* }
%struct.comedi_insn = type { i32, i32 }

@DT2821_DACSR_SSEL = common dso_local global i32 0, align 4
@DT2821_DACSR_REG = common dso_local global i64 0, align 8
@DT2821_DADAT_REG = common dso_local global i64 0, align 8
@DT2821_SUPCSR_DACON = common dso_local global i32 0, align 4
@DT2821_SUPCSR_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dt282x_ao_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt282x_ao_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dt282x_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 1
  %16 = load %struct.dt282x_private*, %struct.dt282x_private** %15, align 8
  store %struct.dt282x_private* %16, %struct.dt282x_private** %9, align 8
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
  %25 = load i32, i32* @DT2821_DACSR_SSEL, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @DT2821_DACSR_YSEL(i32 %26)
  %28 = or i32 %25, %27
  %29 = load %struct.dt282x_private*, %struct.dt282x_private** %9, align 8
  %30 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %88, %4
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %36 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %91

39:                                               ; preds = %33
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %47 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i64 @comedi_range_is_bipolar(%struct.comedi_subdevice* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %39
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %57, i32 %58)
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %56, %39
  %61 = load %struct.dt282x_private*, %struct.dt282x_private** %9, align 8
  %62 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DT2821_DACSR_REG, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @outw(i32 %63, i64 %68)
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %72 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @DT2821_DADAT_REG, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @outw(i32 %70, i64 %75)
  %77 = load %struct.dt282x_private*, %struct.dt282x_private** %9, align 8
  %78 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DT2821_SUPCSR_DACON, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %83 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @DT2821_SUPCSR_REG, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @outw(i32 %81, i64 %86)
  br label %88

88:                                               ; preds = %60
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %33

91:                                               ; preds = %33
  %92 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %93 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  ret i32 %94
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @DT2821_DACSR_YSEL(i32) #1

declare dso_local i64 @comedi_range_is_bipolar(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_offset_munge(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
