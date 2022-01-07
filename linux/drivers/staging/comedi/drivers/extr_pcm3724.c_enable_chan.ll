; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcm3724.c_enable_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcm3724.c_enable_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.comedi_subdevice*, %struct.priv_pcm3724* }
%struct.priv_pcm3724 = type { i32, i32 }
%struct.comedi_subdevice = type { i32 }

@PCM3724_GATE_CTRL_C0_ENA = common dso_local global i32 0, align 4
@PCM3724_GATE_CTRL_B0_ENA = common dso_local global i32 0, align 4
@PCM3724_GATE_CTRL_A0_ENA = common dso_local global i32 0, align 4
@PCM3724_GATE_CTRL_C1_ENA = common dso_local global i32 0, align 4
@PCM3724_GATE_CTRL_B1_ENA = common dso_local global i32 0, align 4
@PCM3724_GATE_CTRL_A1_ENA = common dso_local global i32 0, align 4
@PCM3724_GATE_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @enable_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_chan(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.priv_pcm3724*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 2
  %13 = load %struct.priv_pcm3724*, %struct.priv_pcm3724** %12, align 8
  store %struct.priv_pcm3724* %13, %struct.priv_pcm3724** %7, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 1
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i64 0
  store %struct.comedi_subdevice* %17, %struct.comedi_subdevice** %8, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @CR_CHAN(i32 %18)
  %20 = shl i32 1, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %23 = icmp eq %struct.comedi_subdevice* %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.priv_pcm3724*, %struct.priv_pcm3724** %7, align 8
  %27 = getelementptr inbounds %struct.priv_pcm3724, %struct.priv_pcm3724* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %36

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.priv_pcm3724*, %struct.priv_pcm3724** %7, align 8
  %33 = getelementptr inbounds %struct.priv_pcm3724, %struct.priv_pcm3724* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.priv_pcm3724*, %struct.priv_pcm3724** %7, align 8
  %38 = getelementptr inbounds %struct.priv_pcm3724, %struct.priv_pcm3724* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 16711680
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* @PCM3724_GATE_CTRL_C0_ENA, align 4
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %42, %36
  %47 = load %struct.priv_pcm3724*, %struct.priv_pcm3724** %7, align 8
  %48 = getelementptr inbounds %struct.priv_pcm3724, %struct.priv_pcm3724* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 65280
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* @PCM3724_GATE_CTRL_B0_ENA, align 4
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %52, %46
  %57 = load %struct.priv_pcm3724*, %struct.priv_pcm3724** %7, align 8
  %58 = getelementptr inbounds %struct.priv_pcm3724, %struct.priv_pcm3724* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 255
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* @PCM3724_GATE_CTRL_A0_ENA, align 4
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %62, %56
  %67 = load %struct.priv_pcm3724*, %struct.priv_pcm3724** %7, align 8
  %68 = getelementptr inbounds %struct.priv_pcm3724, %struct.priv_pcm3724* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 16711680
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32, i32* @PCM3724_GATE_CTRL_C1_ENA, align 4
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %72, %66
  %77 = load %struct.priv_pcm3724*, %struct.priv_pcm3724** %7, align 8
  %78 = getelementptr inbounds %struct.priv_pcm3724, %struct.priv_pcm3724* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 65280
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, i32* @PCM3724_GATE_CTRL_B1_ENA, align 4
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %82, %76
  %87 = load %struct.priv_pcm3724*, %struct.priv_pcm3724** %7, align 8
  %88 = getelementptr inbounds %struct.priv_pcm3724, %struct.priv_pcm3724* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 255
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i32, i32* @PCM3724_GATE_CTRL_A1_ENA, align 4
  %94 = load i32, i32* %10, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %92, %86
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %99 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @PCM3724_GATE_CTRL_REG, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @outb(i32 %97, i64 %102)
  ret void
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
