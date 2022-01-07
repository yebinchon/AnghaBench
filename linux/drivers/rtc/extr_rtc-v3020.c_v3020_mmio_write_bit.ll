; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-v3020.c_v3020_mmio_write_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-v3020.c_v3020_mmio_write_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3020 = type { i8, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v3020*, i8)* @v3020_mmio_write_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v3020_mmio_write_bit(%struct.v3020* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.v3020*, align 8
  %4 = alloca i8, align 1
  store %struct.v3020* %0, %struct.v3020** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = load %struct.v3020*, %struct.v3020** %3, align 8
  %8 = getelementptr inbounds %struct.v3020, %struct.v3020* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 4
  %10 = zext i8 %9 to i32
  %11 = shl i32 %6, %10
  %12 = trunc i32 %11 to i8
  %13 = load %struct.v3020*, %struct.v3020** %3, align 8
  %14 = getelementptr inbounds %struct.v3020, %struct.v3020* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @writel(i8 zeroext %12, i32 %15)
  ret void
}

declare dso_local i32 @writel(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
