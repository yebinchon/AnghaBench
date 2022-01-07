; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_get_rate_sctn_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_get_rate_sctn_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"Wrong rate 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_rate_sctn_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rate_sctn_idx(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %15 [
    i32 208, label %5
    i32 206, label %5
    i32 202, label %5
    i32 211, label %5
    i32 201, label %6
    i32 200, label %6
    i32 210, label %6
    i32 209, label %6
    i32 207, label %6
    i32 205, label %6
    i32 204, label %6
    i32 203, label %6
    i32 199, label %7
    i32 198, label %7
    i32 187, label %7
    i32 176, label %7
    i32 173, label %7
    i32 172, label %7
    i32 171, label %7
    i32 170, label %7
    i32 169, label %8
    i32 168, label %8
    i32 197, label %8
    i32 196, label %8
    i32 195, label %8
    i32 194, label %8
    i32 193, label %8
    i32 192, label %8
    i32 191, label %9
    i32 190, label %9
    i32 189, label %9
    i32 188, label %9
    i32 186, label %9
    i32 185, label %9
    i32 184, label %9
    i32 183, label %9
    i32 182, label %10
    i32 181, label %10
    i32 180, label %10
    i32 179, label %10
    i32 178, label %10
    i32 177, label %10
    i32 175, label %10
    i32 174, label %10
    i32 167, label %11
    i32 166, label %11
    i32 165, label %11
    i32 164, label %11
    i32 163, label %11
    i32 162, label %11
    i32 161, label %11
    i32 160, label %11
    i32 159, label %11
    i32 158, label %11
    i32 157, label %12
    i32 156, label %12
    i32 155, label %12
    i32 154, label %12
    i32 153, label %12
    i32 152, label %12
    i32 151, label %12
    i32 150, label %12
    i32 149, label %12
    i32 148, label %12
    i32 147, label %13
    i32 146, label %13
    i32 145, label %13
    i32 144, label %13
    i32 143, label %13
    i32 142, label %13
    i32 141, label %13
    i32 140, label %13
    i32 139, label %13
    i32 138, label %13
    i32 137, label %14
    i32 136, label %14
    i32 135, label %14
    i32 134, label %14
    i32 133, label %14
    i32 132, label %14
    i32 131, label %14
    i32 130, label %14
    i32 129, label %14
    i32 128, label %14
  ]

5:                                                ; preds = %1, %1, %1, %1
  store i32 0, i32* %2, align 4
  br label %18

6:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  store i32 1, i32* %2, align 4
  br label %18

7:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  store i32 2, i32* %2, align 4
  br label %18

8:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  store i32 3, i32* %2, align 4
  br label %18

9:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  store i32 4, i32* %2, align 4
  br label %18

10:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  store i32 5, i32* %2, align 4
  br label %18

11:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 6, i32* %2, align 4
  br label %18

12:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 7, i32* %2, align 4
  br label %18

13:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 8, i32* %2, align 4
  br label %18

14:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 9, i32* %2, align 4
  br label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @DBG_871X(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 -1, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @DBG_871X(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
