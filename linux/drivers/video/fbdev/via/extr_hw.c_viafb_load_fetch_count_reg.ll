; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_viafb_load_fetch_count_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_viafb_load_fetch_count_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32, %struct.io_register* }
%struct.io_register = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.io_register* }

@fetch_count_reg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@VIASR = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_load_fetch_count_reg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.io_register*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.io_register* null, %struct.io_register** %9, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %33 [
    i32 129, label %11
    i32 128, label %22
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @IGA1_FETCH_COUNT_FORMULA(i32 %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fetch_count_reg, i32 0, i32 1, i32 0), align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fetch_count_reg, i32 0, i32 1, i32 1), align 8
  store %struct.io_register* %16, %struct.io_register** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.io_register*, %struct.io_register** %9, align 8
  %20 = load i32, i32* @VIASR, align 4
  %21 = call i32 @viafb_load_reg(i32 %17, i32 %18, %struct.io_register* %19, i32 %20)
  br label %33

22:                                               ; preds = %3
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @IGA2_FETCH_COUNT_FORMULA(i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fetch_count_reg, i32 0, i32 0, i32 0), align 8
  store i32 %26, i32* %8, align 4
  %27 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fetch_count_reg, i32 0, i32 0, i32 1), align 8
  store %struct.io_register* %27, %struct.io_register** %9, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.io_register*, %struct.io_register** %9, align 8
  %31 = load i32, i32* @VIACR, align 4
  %32 = call i32 @viafb_load_reg(i32 %28, i32 %29, %struct.io_register* %30, i32 %31)
  br label %33

33:                                               ; preds = %3, %22, %11
  ret void
}

declare dso_local i32 @IGA1_FETCH_COUNT_FORMULA(i32, i32) #1

declare dso_local i32 @viafb_load_reg(i32, i32, %struct.io_register*, i32) #1

declare dso_local i32 @IGA2_FETCH_COUNT_FORMULA(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
