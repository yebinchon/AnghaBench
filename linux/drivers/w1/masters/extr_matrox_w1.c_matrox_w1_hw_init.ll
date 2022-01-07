; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_matrox_w1.c_matrox_w1_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_matrox_w1.c_matrox_w1_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_device = type { i32 }

@MATROX_GET_DATA = common dso_local global i32 0, align 4
@MATROX_GET_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.matrox_device*)* @matrox_w1_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matrox_w1_hw_init(%struct.matrox_device* %0) #0 {
  %2 = alloca %struct.matrox_device*, align 8
  store %struct.matrox_device* %0, %struct.matrox_device** %2, align 8
  %3 = load %struct.matrox_device*, %struct.matrox_device** %2, align 8
  %4 = load i32, i32* @MATROX_GET_DATA, align 4
  %5 = call i32 @matrox_w1_write_reg(%struct.matrox_device* %3, i32 %4, i32 255)
  %6 = load %struct.matrox_device*, %struct.matrox_device** %2, align 8
  %7 = load i32, i32* @MATROX_GET_CONTROL, align 4
  %8 = call i32 @matrox_w1_write_reg(%struct.matrox_device* %6, i32 %7, i32 0)
  ret void
}

declare dso_local i32 @matrox_w1_write_reg(%struct.matrox_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
