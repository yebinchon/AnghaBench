; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_time_stamp_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_time_stamp_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32 }

@vnt_time_stampoff = common dso_local global i32** null, align 8
@MAX_RATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_private*, i64)* @vnt_time_stamp_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_time_stamp_off(%struct.vnt_private* %0, i64 %1) #0 {
  %3 = alloca %struct.vnt_private*, align 8
  %4 = alloca i64, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32**, i32*** @vnt_time_stampoff, align 8
  %6 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %7 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = srem i32 %8, 2
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32*, i32** %5, i64 %10
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @MAX_RATE, align 8
  %15 = urem i64 %13, %14
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cpu_to_le16(i32 %17)
  ret i32 %18
}

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
