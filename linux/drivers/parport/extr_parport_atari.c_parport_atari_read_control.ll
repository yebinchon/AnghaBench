; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_atari.c_parport_atari_read_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_atari.c_parport_atari_read_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.parport = type { i32 }

@sound_ym = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PARPORT_CONTROL_STROBE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.parport*)* @parport_atari_read_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @parport_atari_read_control(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  store %struct.parport* %0, %struct.parport** %2, align 8
  store i8 0, i8* %4, align 1
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @local_irq_save(i64 %5)
  store i32 14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sound_ym, i32 0, i32 0), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sound_ym, i32 0, i32 0), align 4
  %8 = and i32 %7, 32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i8, i8* @PARPORT_CONTROL_STROBE, align 1
  store i8 %11, i8* %4, align 1
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @local_irq_restore(i64 %13)
  %15 = load i8, i8* %4, align 1
  ret i8 %15
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
