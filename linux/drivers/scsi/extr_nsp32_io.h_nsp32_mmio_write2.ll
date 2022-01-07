; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32_io.h_nsp32_mmio_write2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32_io.h_nsp32_mmio_write2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NSP32_MMIO_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i16)* @nsp32_mmio_write2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsp32_mmio_write2(i64 %0, i32 %1, i16 zeroext %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i16 %2, i16* %6, align 2
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @NSP32_MMIO_OFFSET, align 8
  %10 = add i64 %8, %9
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = add i64 %10, %12
  %14 = inttoptr i64 %13 to i16*
  store i16* %14, i16** %7, align 8
  %15 = load i16, i16* %6, align 2
  %16 = call i32 @cpu_to_le16(i16 zeroext %15)
  %17 = load i16*, i16** %7, align 8
  %18 = call i32 @writew(i32 %16, i16* %17)
  ret void
}

declare dso_local i32 @writew(i32, i16*) #1

declare dso_local i32 @cpu_to_le16(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
