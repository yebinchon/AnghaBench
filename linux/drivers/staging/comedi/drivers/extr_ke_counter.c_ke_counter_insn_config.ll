; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ke_counter.c_ke_counter_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ke_counter.c_ke_counter_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@KE_OSC_SEL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ke_counter_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ke_counter_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %63 [
    i32 134, label %14
    i32 136, label %32
    i32 135, label %60
  ]

14:                                               ; preds = %4
  %15 = load i32*, i32** %9, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %21 [
    i32 133, label %18
    i32 132, label %19
    i32 131, label %20
  ]

18:                                               ; preds = %14
  store i8 -126, i8* %10, align 1
  br label %24

19:                                               ; preds = %14
  store i8 -127, i8* %10, align 1
  br label %24

20:                                               ; preds = %14
  store i8 -128, i8* %10, align 1
  br label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %70

24:                                               ; preds = %20, %19, %18
  %25 = load i8, i8* %10, align 1
  %26 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @KE_OSC_SEL_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @outb(i8 zeroext %25, i64 %30)
  br label %66

32:                                               ; preds = %4
  %33 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @KE_OSC_SEL_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call zeroext i8 @inb(i64 %37)
  store i8 %38, i8* %10, align 1
  %39 = load i8, i8* %10, align 1
  %40 = zext i8 %39 to i32
  switch i32 %40, label %56 [
    i32 130, label %41
    i32 129, label %46
    i32 128, label %51
  ]

41:                                               ; preds = %32
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 133, i32* %43, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32 50, i32* %45, align 4
  br label %59

46:                                               ; preds = %32
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 132, i32* %48, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 250, i32* %50, align 4
  br label %59

51:                                               ; preds = %32
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 131, i32* %53, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 0, i32* %55, align 4
  br label %59

56:                                               ; preds = %32
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %70

59:                                               ; preds = %51, %46, %41
  br label %66

60:                                               ; preds = %4
  %61 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %62 = call i32 @ke_counter_reset(%struct.comedi_device* %61)
  br label %66

63:                                               ; preds = %4
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %70

66:                                               ; preds = %60, %59, %24
  %67 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %68 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %66, %63, %56, %21
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @ke_counter_reset(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
