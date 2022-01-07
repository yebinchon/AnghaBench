; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec.c_nvec_toggle_global_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec.c_nvec_toggle_global_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvec_chip = type { i32 }

@NVEC_SLEEP = common dso_local global i32 0, align 4
@GLOBAL_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvec_chip*, i32)* @nvec_toggle_global_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvec_toggle_global_events(%struct.nvec_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nvec_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i8], align 1
  store %struct.nvec_chip* %0, %struct.nvec_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %7 = load i32, i32* @NVEC_SLEEP, align 4
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* %6, align 1
  %9 = getelementptr inbounds i8, i8* %6, i64 1
  %10 = load i32, i32* @GLOBAL_EVENTS, align 4
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %9, align 1
  %12 = getelementptr inbounds i8, i8* %9, i64 1
  %13 = load i32, i32* %4, align 4
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %12, align 1
  %15 = load %struct.nvec_chip*, %struct.nvec_chip** %3, align 8
  %16 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %17 = call i32 @nvec_write_async(%struct.nvec_chip* %15, i8* %16, i32 3)
  ret void
}

declare dso_local i32 @nvec_write_async(%struct.nvec_chip*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
