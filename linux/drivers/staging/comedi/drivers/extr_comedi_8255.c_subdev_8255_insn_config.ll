; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8255.c_subdev_8255_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8255.c_subdev_8255_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @subdev_8255_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subdev_8255_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %14 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CR_CHAN(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ult i32 %17, 8
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 255, i32* %11, align 4
  br label %31

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ult i32 %21, 16
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 65280, i32* %11, align 4
  br label %30

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  %26 = icmp ult i32 %25, 20
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 983040, i32* %11, align 4
  br label %29

28:                                               ; preds = %24
  store i32 15728640, i32* %11, align 4
  br label %29

29:                                               ; preds = %28, %27
  br label %30

30:                                               ; preds = %29, %23
  br label %31

31:                                               ; preds = %30, %19
  %32 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %34 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @comedi_dio_insn_config(%struct.comedi_device* %32, %struct.comedi_subdevice* %33, %struct.comedi_insn* %34, i32* %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %5, align 4
  br label %49

42:                                               ; preds = %31
  %43 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %45 = call i32 @subdev_8255_do_config(%struct.comedi_device* %43, %struct.comedi_subdevice* %44)
  %46 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %47 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %42, %40
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_dio_insn_config(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*, i32) #1

declare dso_local i32 @subdev_8255_do_config(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
