; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_card.c_CARDvSetLoopbackMode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_card.c_CARDvSetLoopbackMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CARDvSetLoopbackMode(%struct.vnt_private* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.vnt_private*, align 8
  %4 = alloca i16, align 2
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %4, align 2
  %6 = zext i16 %5 to i32
  switch i32 %6, label %8 [
    i32 129, label %7
    i32 130, label %7
    i32 128, label %7
  ]

7:                                                ; preds = %2, %2, %2
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %7
  %10 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %11 = load i16, i16* %4, align 2
  %12 = call i32 @LOBYTE(i16 zeroext %11)
  %13 = call i32 @MACvSetLoopbackMode(%struct.vnt_private* %10, i32 %12)
  ret void
}

declare dso_local i32 @MACvSetLoopbackMode(%struct.vnt_private*, i32) #1

declare dso_local i32 @LOBYTE(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
