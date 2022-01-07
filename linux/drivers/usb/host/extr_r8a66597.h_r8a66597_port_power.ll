; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597.h_r8a66597_port_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597.h_r8a66597_port_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@VBOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, i32, i32)* @r8a66597_port_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8a66597_port_power(%struct.r8a66597* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.r8a66597*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @get_dvstctr_reg(i32 %8)
  store i64 %9, i64* %7, align 8
  %10 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %11 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (i32, i32)*, i32 (i32, i32)** %13, align 8
  %15 = icmp ne i32 (i32, i32)* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %18 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (i32, i32)*, i32 (i32, i32)** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 %21(i32 %22, i32 %23)
  br label %39

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %30 = load i32, i32* @VBOUT, align 4
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @r8a66597_bset(%struct.r8a66597* %29, i32 %30, i64 %31)
  br label %38

33:                                               ; preds = %25
  %34 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %35 = load i32, i32* @VBOUT, align 4
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @r8a66597_bclr(%struct.r8a66597* %34, i32 %35, i64 %36)
  br label %38

38:                                               ; preds = %33, %28
  br label %39

39:                                               ; preds = %38, %16
  ret void
}

declare dso_local i64 @get_dvstctr_reg(i32) #1

declare dso_local i32 @r8a66597_bset(%struct.r8a66597*, i32, i64) #1

declare dso_local i32 @r8a66597_bclr(%struct.r8a66597*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
