; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_metronomefb.c_metronome_init_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_metronomefb.c_metronome_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metronomefb_par = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.metronomefb_par*)* @metronome_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @metronome_init_regs(%struct.metronomefb_par* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.metronomefb_par*, align 8
  %4 = alloca i32, align 4
  store %struct.metronomefb_par* %0, %struct.metronomefb_par** %3, align 8
  %5 = load %struct.metronomefb_par*, %struct.metronomefb_par** %3, align 8
  %6 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to i32 (%struct.metronomefb_par*)**
  %10 = load i32 (%struct.metronomefb_par*)*, i32 (%struct.metronomefb_par*)** %9, align 8
  %11 = load %struct.metronomefb_par*, %struct.metronomefb_par** %3, align 8
  %12 = call i32 %10(%struct.metronomefb_par* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %35

17:                                               ; preds = %1
  %18 = load %struct.metronomefb_par*, %struct.metronomefb_par** %3, align 8
  %19 = call i32 @metronome_powerup_cmd(%struct.metronomefb_par* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %35

24:                                               ; preds = %17
  %25 = load %struct.metronomefb_par*, %struct.metronomefb_par** %3, align 8
  %26 = call i32 @metronome_config_cmd(%struct.metronomefb_par* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %35

31:                                               ; preds = %24
  %32 = load %struct.metronomefb_par*, %struct.metronomefb_par** %3, align 8
  %33 = call i32 @metronome_init_cmd(%struct.metronomefb_par* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %31, %29, %22, %15
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @metronome_powerup_cmd(%struct.metronomefb_par*) #1

declare dso_local i32 @metronome_config_cmd(%struct.metronomefb_par*) #1

declare dso_local i32 @metronome_init_cmd(%struct.metronomefb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
