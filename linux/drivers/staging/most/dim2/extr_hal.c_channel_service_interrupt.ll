; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_channel_service_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_channel_service_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim_channel = type { i32, %struct.int_ch_state }
%struct.int_ch_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dim_channel*)* @channel_service_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @channel_service_interrupt(%struct.dim_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dim_channel*, align 8
  %4 = alloca %struct.int_ch_state*, align 8
  store %struct.dim_channel* %0, %struct.dim_channel** %3, align 8
  %5 = load %struct.dim_channel*, %struct.dim_channel** %3, align 8
  %6 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %5, i32 0, i32 1
  store %struct.int_ch_state* %6, %struct.int_ch_state** %4, align 8
  %7 = load %struct.dim_channel*, %struct.dim_channel** %3, align 8
  %8 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.int_ch_state*, %struct.int_ch_state** %4, align 8
  %11 = getelementptr inbounds %struct.int_ch_state, %struct.int_ch_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @service_channel(i32 %9, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

16:                                               ; preds = %1
  %17 = load %struct.int_ch_state*, %struct.int_ch_state** %4, align 8
  %18 = getelementptr inbounds %struct.int_ch_state, %struct.int_ch_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.int_ch_state*, %struct.int_ch_state** %4, align 8
  %22 = getelementptr inbounds %struct.int_ch_state, %struct.int_ch_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  store i32 1, i32* %2, align 4
  br label %25

25:                                               ; preds = %16, %15
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @service_channel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
