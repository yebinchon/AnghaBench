; ModuleID = '/home/carl/AnghaBench/linux/drivers/parisc/extr_eisa.c_eisa_in8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parisc/extr_eisa.c_eisa_in8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EISA_bus = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @eisa_in8(i16 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  %4 = load i64, i64* @EISA_bus, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i16, i16* %3, align 2
  %8 = call i32 @eisa_permute(i16 zeroext %7)
  %9 = call zeroext i8 @gsc_readb(i32 %8)
  store i8 %9, i8* %2, align 1
  br label %11

10:                                               ; preds = %1
  store i8 -1, i8* %2, align 1
  br label %11

11:                                               ; preds = %10, %6
  %12 = load i8, i8* %2, align 1
  ret i8 %12
}

declare dso_local zeroext i8 @gsc_readb(i32) #1

declare dso_local i32 @eisa_permute(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
