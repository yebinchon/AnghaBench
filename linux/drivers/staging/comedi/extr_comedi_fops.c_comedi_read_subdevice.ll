; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_read_subdevice.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_read_subdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { i32 }
%struct.comedi_device = type { %struct.comedi_subdevice*, i32 }

@COMEDI_NUM_BOARD_MINORS = common dso_local global i32 0, align 4
@SDF_CMD_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.comedi_subdevice* (%struct.comedi_device*, i32)* @comedi_read_subdevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.comedi_subdevice* @comedi_read_subdevice(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_subdevice*, align 8
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 1
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @COMEDI_NUM_BOARD_MINORS, align 4
  %12 = icmp uge i32 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.comedi_subdevice* @comedi_subdevice_from_minor(%struct.comedi_device* %14, i32 %15)
  store %struct.comedi_subdevice* %16, %struct.comedi_subdevice** %6, align 8
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %18 = icmp ne %struct.comedi_subdevice* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %21 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SDF_CMD_READ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19, %13
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_subdevice* %27, %struct.comedi_subdevice** %3, align 8
  br label %33

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %31, align 8
  store %struct.comedi_subdevice* %32, %struct.comedi_subdevice** %3, align 8
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  ret %struct.comedi_subdevice* %34
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.comedi_subdevice* @comedi_subdevice_from_minor(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
