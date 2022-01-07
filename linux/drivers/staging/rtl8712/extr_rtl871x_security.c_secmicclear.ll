; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_security.c_secmicclear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_security.c_secmicclear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_data = type { i64, i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mic_data*)* @secmicclear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @secmicclear(%struct.mic_data* %0) #0 {
  %2 = alloca %struct.mic_data*, align 8
  store %struct.mic_data* %0, %struct.mic_data** %2, align 8
  %3 = load %struct.mic_data*, %struct.mic_data** %2, align 8
  %4 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.mic_data*, %struct.mic_data** %2, align 8
  %7 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %6, i32 0, i32 5
  store i32 %5, i32* %7, align 4
  %8 = load %struct.mic_data*, %struct.mic_data** %2, align 8
  %9 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.mic_data*, %struct.mic_data** %2, align 8
  %12 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load %struct.mic_data*, %struct.mic_data** %2, align 8
  %14 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.mic_data*, %struct.mic_data** %2, align 8
  %16 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
