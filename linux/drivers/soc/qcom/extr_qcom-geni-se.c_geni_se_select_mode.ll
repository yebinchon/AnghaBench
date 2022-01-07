; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom-geni-se.c_geni_se_select_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom-geni-se.c_geni_se_select_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geni_se = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @geni_se_select_mode(%struct.geni_se* %0, i32 %1) #0 {
  %3 = alloca %struct.geni_se*, align 8
  %4 = alloca i32, align 4
  store %struct.geni_se* %0, %struct.geni_se** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 129
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 130
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i1 [ false, %2 ], [ %9, %7 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %22 [
    i32 129, label %15
    i32 130, label %18
    i32 128, label %21
  ]

15:                                               ; preds = %10
  %16 = load %struct.geni_se*, %struct.geni_se** %3, align 8
  %17 = call i32 @geni_se_select_fifo_mode(%struct.geni_se* %16)
  br label %23

18:                                               ; preds = %10
  %19 = load %struct.geni_se*, %struct.geni_se** %3, align 8
  %20 = call i32 @geni_se_select_dma_mode(%struct.geni_se* %19)
  br label %23

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %10, %21
  br label %23

23:                                               ; preds = %22, %18, %15
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @geni_se_select_fifo_mode(%struct.geni_se*) #1

declare dso_local i32 @geni_se_select_dma_mode(%struct.geni_se*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
