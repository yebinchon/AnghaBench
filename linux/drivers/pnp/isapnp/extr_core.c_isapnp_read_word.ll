; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/isapnp/extr_core.c_isapnp_read_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/isapnp/extr_core.c_isapnp_read_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i8)* @isapnp_read_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @isapnp_read_word(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = call zeroext i16 @isapnp_read_byte(i8 zeroext %4)
  store i16 %5, i16* %3, align 2
  %6 = load i16, i16* %3, align 2
  %7 = zext i16 %6 to i32
  %8 = shl i32 %7, 8
  %9 = load i8, i8* %2, align 1
  %10 = zext i8 %9 to i32
  %11 = add nsw i32 %10, 1
  %12 = trunc i32 %11 to i8
  %13 = call zeroext i16 @isapnp_read_byte(i8 zeroext %12)
  %14 = zext i16 %13 to i32
  %15 = add nsw i32 %8, %14
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* %3, align 2
  %17 = load i16, i16* %3, align 2
  ret i16 %17
}

declare dso_local zeroext i16 @isapnp_read_byte(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
