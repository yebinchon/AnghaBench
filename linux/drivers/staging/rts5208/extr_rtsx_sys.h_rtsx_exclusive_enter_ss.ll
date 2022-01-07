; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_sys.h_rtsx_exclusive_enter_ss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_sys.h_rtsx_exclusive_enter_ss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.rtsx_dev* }
%struct.rtsx_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_chip*)* @rtsx_exclusive_enter_ss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsx_exclusive_enter_ss(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  %3 = alloca %struct.rtsx_dev*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %4 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %5 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %4, i32 0, i32 0
  %6 = load %struct.rtsx_dev*, %struct.rtsx_dev** %5, align 8
  store %struct.rtsx_dev* %6, %struct.rtsx_dev** %3, align 8
  %7 = load %struct.rtsx_dev*, %struct.rtsx_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %11 = call i32 @rtsx_enter_ss(%struct.rtsx_chip* %10)
  %12 = load %struct.rtsx_dev*, %struct.rtsx_dev** %3, align 8
  %13 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %12, i32 0, i32 0
  %14 = call i32 @spin_unlock(i32* %13)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rtsx_enter_ss(%struct.rtsx_chip*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
