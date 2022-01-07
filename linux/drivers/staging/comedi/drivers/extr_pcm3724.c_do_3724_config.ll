; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcm3724.c_do_3724_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcm3724.c_do_3724_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32 }

@I8255_CTRL_CW = common dso_local global i32 0, align 4
@I8255_CTRL_A_IO = common dso_local global i32 0, align 4
@I8255_CTRL_B_IO = common dso_local global i32 0, align 4
@I8255_CTRL_C_HI_IO = common dso_local global i32 0, align 4
@I8255_CTRL_C_LO_IO = common dso_local global i32 0, align 4
@I8255_CTRL_REG = common dso_local global i64 0, align 8
@I8255_SIZE = common dso_local global i64 0, align 8
@PCM3724_DIO_DIR_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @do_3724_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_3724_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %13, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i64 0
  store %struct.comedi_subdevice* %15, %struct.comedi_subdevice** %7, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 1
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %17, align 8
  %19 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i64 1
  store %struct.comedi_subdevice* %19, %struct.comedi_subdevice** %8, align 8
  %20 = load i32, i32* @I8255_CTRL_CW, align 4
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %22 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 255
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @I8255_CTRL_A_IO, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %26, %3
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %32 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 65280
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @I8255_CTRL_B_IO, align 4
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %36, %30
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %42 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 16711680
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @I8255_CTRL_C_HI_IO, align 4
  %48 = load i32, i32* @I8255_CTRL_C_LO_IO, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %46, %40
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %54 = call i32 @compute_buffer(i32 0, i32 0, %struct.comedi_subdevice* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %57 = call i32 @compute_buffer(i32 %55, i32 1, %struct.comedi_subdevice* %56)
  store i32 %57, i32* %10, align 4
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %60 = icmp eq %struct.comedi_subdevice* %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %52
  %62 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %63 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @I8255_CTRL_REG, align 8
  %66 = add i64 %64, %65
  store i64 %66, i64* %11, align 8
  br label %75

67:                                               ; preds = %52
  %68 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @I8255_SIZE, align 8
  %72 = add i64 %70, %71
  %73 = load i64, i64* @I8255_CTRL_REG, align 8
  %74 = add i64 %72, %73
  store i64 %74, i64* %11, align 8
  br label %75

75:                                               ; preds = %67, %61
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %78 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PCM3724_DIO_DIR_REG, align 8
  %81 = add i64 %79, %80
  %82 = call i32 @outb(i32 %76, i64 %81)
  %83 = load i32, i32* %9, align 4
  %84 = load i64, i64* %11, align 8
  %85 = call i32 @outb(i32 %83, i64 %84)
  ret void
}

declare dso_local i32 @compute_buffer(i32, i32, %struct.comedi_subdevice*) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
