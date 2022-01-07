; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s526.c_s526_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s526.c_s526_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.s526_private* }
%struct.s526_private = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@S526_AI_CTRL_START = common dso_local global i32 0, align 4
@S526_AI_CTRL_DELAY = common dso_local global i32 0, align 4
@S526_AI_CTRL_REG = common dso_local global i64 0, align 8
@s526_eoc = common dso_local global i32 0, align 4
@S526_INT_AI = common dso_local global i32 0, align 4
@S526_AI_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @s526_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s526_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.s526_private*, align 8
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
  %18 = load %struct.s526_private*, %struct.s526_private** %17, align 8
  store %struct.s526_private* %18, %struct.s526_private** %10, align 8
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %20 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CR_CHAN(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @S526_AI_CTRL_CONV(i32 %23)
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @S526_AI_CTRL_READ(i32 %25)
  %27 = or i32 %24, %26
  %28 = load i32, i32* @S526_AI_CTRL_START, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.s526_private*, %struct.s526_private** %10, align 8
  %32 = getelementptr inbounds %struct.s526_private, %struct.s526_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %4
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.s526_private*, %struct.s526_private** %10, align 8
  %38 = getelementptr inbounds %struct.s526_private, %struct.s526_private* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @S526_AI_CTRL_DELAY, align 4
  %40 = load i32, i32* %12, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %35, %4
  store i32 0, i32* %15, align 4
  br label %43

43:                                               ; preds = %85, %42
  %44 = load i32, i32* %15, align 4
  %45 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %46 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %88

49:                                               ; preds = %43
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @S526_AI_CTRL_REG, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @outw(i32 %50, i64 %55)
  %57 = load i32, i32* @S526_AI_CTRL_DELAY, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %12, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %63 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %64 = load i32, i32* @s526_eoc, align 4
  %65 = load i32, i32* @S526_INT_AI, align 4
  %66 = call i32 @comedi_timeout(%struct.comedi_device* %61, %struct.comedi_subdevice* %62, %struct.comedi_insn* %63, i32 %64, i32 %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %49
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %5, align 4
  br label %92

71:                                               ; preds = %49
  %72 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %73 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @S526_AI_REG, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @inw(i64 %76)
  store i32 %77, i32* %13, align 4
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %78, i32 %79)
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %80, i32* %84, align 4
  br label %85

85:                                               ; preds = %71
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %15, align 4
  br label %43

88:                                               ; preds = %43
  %89 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %90 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %88, %69
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @S526_AI_CTRL_CONV(i32) #1

declare dso_local i32 @S526_AI_CTRL_READ(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @comedi_offset_munge(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
