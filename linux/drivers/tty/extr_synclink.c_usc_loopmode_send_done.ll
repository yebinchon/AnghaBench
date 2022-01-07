; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_usc_loopmode_send_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_usc_loopmode_send_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i32, i32 }

@BIT13 = common dso_local global i32 0, align 4
@CMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mgsl_struct*)* @usc_loopmode_send_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usc_loopmode_send_done(%struct.mgsl_struct* %0) #0 {
  %2 = alloca %struct.mgsl_struct*, align 8
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %2, align 8
  %3 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %4 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %3, i32 0, i32 0
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @BIT13, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %8 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %12 = load i32, i32* @CMR, align 4
  %13 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %14 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @usc_OutReg(%struct.mgsl_struct* %11, i32 %12, i32 %15)
  ret void
}

declare dso_local i32 @usc_OutReg(%struct.mgsl_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
