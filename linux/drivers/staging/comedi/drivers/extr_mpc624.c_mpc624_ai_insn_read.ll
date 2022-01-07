; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mpc624.c_mpc624_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mpc624.c_mpc624_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@MPC624_GNMUXCH = common dso_local global i64 0, align 8
@MPC624_ADSCK = common dso_local global i32 0, align 4
@MPC624_ADC = common dso_local global i64 0, align 8
@MPC624_ADCS = common dso_local global i32 0, align 4
@mpc624_ai_eoc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @mpc624_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc624_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %13 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MPC624_GNMUXCH, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @outb(i32 %14, i64 %19)
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %70, %4
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %24 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %73

27:                                               ; preds = %21
  %28 = load i32, i32* @MPC624_ADSCK, align 4
  %29 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MPC624_ADC, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @outb(i32 %28, i64 %33)
  %35 = call i32 @udelay(i32 1)
  %36 = load i32, i32* @MPC624_ADCS, align 4
  %37 = load i32, i32* @MPC624_ADSCK, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MPC624_ADC, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outb(i32 %38, i64 %43)
  %45 = call i32 @udelay(i32 1)
  %46 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MPC624_ADC, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @outb(i32 0, i64 %50)
  %52 = call i32 @udelay(i32 1)
  %53 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %55 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %56 = load i32, i32* @mpc624_ai_eoc, align 4
  %57 = call i32 @comedi_timeout(%struct.comedi_device* %53, %struct.comedi_subdevice* %54, %struct.comedi_insn* %55, i32 %56, i32 0)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %27
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %5, align 4
  br label %77

62:                                               ; preds = %27
  %63 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %65 = call i32 @mpc624_ai_get_sample(%struct.comedi_device* %63, %struct.comedi_subdevice* %64)
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %21

73:                                               ; preds = %21
  %74 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %75 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %73, %60
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @mpc624_ai_get_sample(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
