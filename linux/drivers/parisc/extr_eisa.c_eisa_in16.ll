; ModuleID = '/home/carl/AnghaBench/linux/drivers/parisc/extr_eisa.c_eisa_in16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parisc/extr_eisa.c_eisa_in16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EISA_bus = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @eisa_in16(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  %4 = load i64, i64* @EISA_bus, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i16, i16* %3, align 2
  %8 = call i32 @eisa_permute(i16 zeroext %7)
  %9 = call i32 @gsc_readw(i32 %8)
  %10 = call zeroext i16 @le16_to_cpu(i32 %9)
  store i16 %10, i16* %2, align 2
  br label %12

11:                                               ; preds = %1
  store i16 -1, i16* %2, align 2
  br label %12

12:                                               ; preds = %11, %6
  %13 = load i16, i16* %2, align 2
  ret i16 %13
}

declare dso_local zeroext i16 @le16_to_cpu(i32) #1

declare dso_local i32 @gsc_readw(i32) #1

declare dso_local i32 @eisa_permute(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
