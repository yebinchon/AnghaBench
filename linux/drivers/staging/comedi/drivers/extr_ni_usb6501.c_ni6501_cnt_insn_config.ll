; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_usb6501.c_ni6501_cnt_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_usb6501.c_ni6501_cnt_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@START_COUNTER = common dso_local global i32 0, align 4
@STOP_COUNTER = common dso_local global i32 0, align 4
@WRITE_COUNTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni6501_cnt_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni6501_cnt_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %9, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %34 [
    i32 130, label %15
    i32 129, label %19
    i32 128, label %23
  ]

15:                                               ; preds = %4
  %16 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %17 = load i32, i32* @START_COUNTER, align 4
  %18 = call i32 @ni6501_counter_command(%struct.comedi_device* %16, i32 %17, i32* null)
  store i32 %18, i32* %10, align 4
  br label %37

19:                                               ; preds = %4
  %20 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %21 = load i32, i32* @STOP_COUNTER, align 4
  %22 = call i32 @ni6501_counter_command(%struct.comedi_device* %20, i32 %21, i32* null)
  store i32 %22, i32* %10, align 4
  br label %37

23:                                               ; preds = %4
  %24 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %25 = load i32, i32* @STOP_COUNTER, align 4
  %26 = call i32 @ni6501_counter_command(%struct.comedi_device* %24, i32 %25, i32* null)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %37

30:                                               ; preds = %23
  %31 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %32 = load i32, i32* @WRITE_COUNTER, align 4
  %33 = call i32 @ni6501_counter_command(%struct.comedi_device* %31, i32 %32, i32* %11)
  store i32 %33, i32* %10, align 4
  br label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %48

37:                                               ; preds = %30, %29, %19, %15
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  br label %46

42:                                               ; preds = %37
  %43 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %44 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  br label %46

46:                                               ; preds = %42, %40
  %47 = phi i32 [ %41, %40 ], [ %45, %42 ]
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %34
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @ni6501_counter_command(%struct.comedi_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
