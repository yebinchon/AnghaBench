; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_channel_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_channel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim_channel = type { i64, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dim_channel*, i32)* @channel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_init(%struct.dim_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.dim_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.dim_channel* %0, %struct.dim_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.dim_channel*, %struct.dim_channel** %3, align 8
  %6 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %5, i32 0, i32 4
  %7 = call i32 @state_init(i32* %6)
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.dim_channel*, %struct.dim_channel** %3, align 8
  %10 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load %struct.dim_channel*, %struct.dim_channel** %3, align 8
  %12 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.dim_channel*, %struct.dim_channel** %3, align 8
  %14 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.dim_channel*, %struct.dim_channel** %3, align 8
  %16 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  ret void
}

declare dso_local i32 @state_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
