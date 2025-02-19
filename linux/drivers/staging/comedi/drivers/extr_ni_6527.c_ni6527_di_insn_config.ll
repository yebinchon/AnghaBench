; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_6527.c_ni6527_di_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_6527.c_ni6527_di_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni6527_private* }
%struct.ni6527_private = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni6527_di_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni6527_di_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ni6527_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.ni6527_private*, %struct.ni6527_private** %14, align 8
  store %struct.ni6527_private* %15, %struct.ni6527_private** %10, align 8
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CR_CHAN(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %59 [
    i32 128, label %23
  ]

23:                                               ; preds = %4
  %24 = load i32*, i32** %9, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = add i32 %26, 100
  %28 = udiv i32 %27, 200
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = mul i32 %29, 200
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %23
  %36 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @ni6527_set_filter_interval(%struct.comedi_device* %36, i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = shl i32 1, %39
  %41 = load %struct.ni6527_private*, %struct.ni6527_private** %10, align 8
  %42 = getelementptr inbounds %struct.ni6527_private, %struct.ni6527_private* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %53

45:                                               ; preds = %23
  %46 = load i32, i32* %11, align 4
  %47 = shl i32 1, %46
  %48 = xor i32 %47, -1
  %49 = load %struct.ni6527_private*, %struct.ni6527_private** %10, align 8
  %50 = getelementptr inbounds %struct.ni6527_private, %struct.ni6527_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %45, %35
  %54 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %55 = load %struct.ni6527_private*, %struct.ni6527_private** %10, align 8
  %56 = getelementptr inbounds %struct.ni6527_private, %struct.ni6527_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ni6527_set_filter_enable(%struct.comedi_device* %54, i32 %57)
  br label %62

59:                                               ; preds = %4
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %66

62:                                               ; preds = %53
  %63 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %64 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @ni6527_set_filter_interval(%struct.comedi_device*, i32) #1

declare dso_local i32 @ni6527_set_filter_enable(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
