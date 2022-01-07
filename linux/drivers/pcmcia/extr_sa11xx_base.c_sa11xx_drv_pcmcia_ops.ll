; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_sa11xx_base.c_sa11xx_drv_pcmcia_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_sa11xx_base.c_sa11xx_drv_pcmcia_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_low_level = type { i32, i32, i32, i64 }

@sa1100_pcmcia_default_mecr_timing = common dso_local global i64 0, align 8
@sa1100_pcmcia_set_timing = common dso_local global i32 0, align 4
@sa1100_pcmcia_show_timing = common dso_local global i32 0, align 4
@sa1100_pcmcia_frequency_change = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sa11xx_drv_pcmcia_ops(%struct.pcmcia_low_level* %0) #0 {
  %2 = alloca %struct.pcmcia_low_level*, align 8
  store %struct.pcmcia_low_level* %0, %struct.pcmcia_low_level** %2, align 8
  %3 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %2, align 8
  %4 = getelementptr inbounds %struct.pcmcia_low_level, %struct.pcmcia_low_level* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @sa1100_pcmcia_default_mecr_timing, align 8
  %9 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %2, align 8
  %10 = getelementptr inbounds %struct.pcmcia_low_level, %struct.pcmcia_low_level* %9, i32 0, i32 3
  store i64 %8, i64* %10, align 8
  br label %11

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @sa1100_pcmcia_set_timing, align 4
  %13 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %2, align 8
  %14 = getelementptr inbounds %struct.pcmcia_low_level, %struct.pcmcia_low_level* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @sa1100_pcmcia_show_timing, align 4
  %16 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %2, align 8
  %17 = getelementptr inbounds %struct.pcmcia_low_level, %struct.pcmcia_low_level* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
