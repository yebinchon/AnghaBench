; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_usc_set_sync_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_usc_set_sync_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mgsl_struct*)* @usc_set_sync_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usc_set_sync_mode(%struct.mgsl_struct* %0) #0 {
  %2 = alloca %struct.mgsl_struct*, align 8
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %2, align 8
  %3 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %4 = call i32 @usc_loopback_frame(%struct.mgsl_struct* %3)
  %5 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %6 = call i32 @usc_set_sdlc_mode(%struct.mgsl_struct* %5)
  %7 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %8 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %9 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @usc_enable_aux_clock(%struct.mgsl_struct* %7, i32 %11)
  %13 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %14 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %20 = call i32 @usc_enable_loopback(%struct.mgsl_struct* %19, i32 1)
  br label %21

21:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @usc_loopback_frame(%struct.mgsl_struct*) #1

declare dso_local i32 @usc_set_sdlc_mode(%struct.mgsl_struct*) #1

declare dso_local i32 @usc_enable_aux_clock(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_enable_loopback(%struct.mgsl_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
