; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_msgtype6.c_speed_idx_cca.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_msgtype6.c_speed_idx_cca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOW = common dso_local global i32 0, align 4
@HIGH = common dso_local global i32 0, align 4
@MEDIUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @speed_idx_cca(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %9 [
    i32 16706, label %5
    i32 16713, label %5
    i32 16717, label %5
    i32 17217, label %5
    i32 17220, label %5
    i32 17236, label %5
    i32 17240, label %5
    i32 17483, label %5
    i32 17752, label %5
    i32 17987, label %5
    i32 18001, label %5
    i32 19527, label %5
    i32 19531, label %5
    i32 19537, label %5
    i32 20296, label %5
    i32 20559, label %5
    i32 20563, label %5
    i32 20568, label %5
    i32 21315, label %5
    i32 21316, label %5
    i32 21317, label %5
    i32 21328, label %5
    i32 16715, label %7
    i32 17221, label %7
    i32 17225, label %7
    i32 17229, label %7
    i32 18503, label %7
    i32 18505, label %7
    i32 18509, label %7
    i32 18512, label %7
    i32 18513, label %7
    i32 18772, label %7
    i32 18776, label %7
    i32 19267, label %7
    i32 19268, label %7
    i32 19269, label %7
    i32 19271, label %7
    i32 19272, label %7
    i32 19273, label %7
    i32 19278, label %7
    i32 19280, label %7
    i32 19282, label %7
    i32 19284, label %7
    i32 19288, label %7
    i32 19792, label %7
    i32 19795, label %7
    i32 19798, label %7
    i32 19800, label %7
    i32 20548, label %7
    i32 20549, label %7
    i32 20550, label %7
    i32 20551, label %7
    i32 20553, label %7
    i32 20555, label %7
    i32 20557, label %7
    i32 21076, label %7
    i32 21319, label %7
    i32 21321, label %7
    i32 21323, label %7
    i32 21325, label %7
    i32 21334, label %7
    i32 21336, label %7
    i32 21571, label %7
    i32 21579, label %7
    i32 22087, label %7
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* @LOW, align 4
  store i32 %6, i32* %2, align 4
  br label %11

7:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %8 = load i32, i32* @HIGH, align 4
  store i32 %8, i32* %2, align 4
  br label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @MEDIUM, align 4
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %9, %7, %5
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
