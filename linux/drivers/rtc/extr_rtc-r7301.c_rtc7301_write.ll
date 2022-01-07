; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-r7301.c_rtc7301_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-r7301.c_rtc7301_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc7301_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtc7301_priv*, i32, i32)* @rtc7301_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtc7301_write(%struct.rtc7301_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtc7301_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtc7301_priv* %0, %struct.rtc7301_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %9 = getelementptr inbounds %struct.rtc7301_priv, %struct.rtc7301_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @regmap_get_reg_stride(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %4, align 8
  %13 = getelementptr inbounds %struct.rtc7301_priv, %struct.rtc7301_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = mul i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @regmap_write(i32 %14, i32 %17, i32 %18)
  ret void
}

declare dso_local i32 @regmap_get_reg_stride(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
