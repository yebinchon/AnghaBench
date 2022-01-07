; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_prom_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_prom_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCL = common dso_local global i32 0, align 4
@SDA = common dso_local global i32 0, align 4
@ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @nsp32_prom_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsp32_prom_start(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @SCL, align 4
  %5 = call i32 @nsp32_prom_set(i32* %3, i32 %4, i32 1)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @SDA, align 4
  %8 = call i32 @nsp32_prom_set(i32* %6, i32 %7, i32 1)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @ENA, align 4
  %11 = call i32 @nsp32_prom_set(i32* %9, i32 %10, i32 1)
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @SDA, align 4
  %14 = call i32 @nsp32_prom_set(i32* %12, i32 %13, i32 0)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @SCL, align 4
  %17 = call i32 @nsp32_prom_set(i32* %15, i32 %16, i32 0)
  ret void
}

declare dso_local i32 @nsp32_prom_set(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
