; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ppa.c_ppa_d_pulse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ppa.c_ppa_d_pulse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, i8)* @ppa_d_pulse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppa_d_pulse(i16 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  store i16 %0, i16* %3, align 2
  store i8 %1, i8* %4, align 1
  %5 = load i16, i16* %3, align 2
  %6 = load i8, i8* %4, align 1
  %7 = call i32 @w_dtr(i16 zeroext %5, i8 zeroext %6)
  %8 = load i16, i16* %3, align 2
  %9 = call i32 @w_ctr(i16 zeroext %8, i32 12)
  %10 = load i16, i16* %3, align 2
  %11 = call i32 @w_ctr(i16 zeroext %10, i32 14)
  %12 = load i16, i16* %3, align 2
  %13 = call i32 @w_ctr(i16 zeroext %12, i32 12)
  %14 = load i16, i16* %3, align 2
  %15 = call i32 @w_ctr(i16 zeroext %14, i32 4)
  %16 = load i16, i16* %3, align 2
  %17 = call i32 @w_ctr(i16 zeroext %16, i32 12)
  ret void
}

declare dso_local i32 @w_dtr(i16 zeroext, i8 zeroext) #1

declare dso_local i32 @w_ctr(i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
