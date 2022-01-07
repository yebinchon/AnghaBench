; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_tridentfb_ddc_setsda.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_tridentfb_ddc_setsda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tridentfb_par = type { i32 }

@I2C = common dso_local global i32 0, align 4
@DDC_MASK = common dso_local global i8 0, align 1
@DDC_SDA_OUT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @tridentfb_ddc_setsda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tridentfb_ddc_setsda(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tridentfb_par*, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.tridentfb_par*
  store %struct.tridentfb_par* %8, %struct.tridentfb_par** %5, align 8
  %9 = load %struct.tridentfb_par*, %struct.tridentfb_par** %5, align 8
  %10 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2C, align 4
  %13 = call zeroext i8 @vga_mm_rcrt(i32 %11, i32 %12)
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* @DDC_MASK, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %14, %16
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %6, align 1
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load i8, i8* @DDC_SDA_OUT, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* %6, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %25, %23
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %6, align 1
  br label %36

28:                                               ; preds = %2
  %29 = load i8, i8* @DDC_SDA_OUT, align 1
  %30 = zext i8 %29 to i32
  %31 = xor i32 %30, -1
  %32 = load i8, i8* %6, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, %31
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %6, align 1
  br label %36

36:                                               ; preds = %28, %21
  %37 = load %struct.tridentfb_par*, %struct.tridentfb_par** %5, align 8
  %38 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @I2C, align 4
  %41 = load i8, i8* %6, align 1
  %42 = call i32 @vga_mm_wcrt(i32 %39, i32 %40, i8 zeroext %41)
  ret void
}

declare dso_local zeroext i8 @vga_mm_rcrt(i32, i32) #1

declare dso_local i32 @vga_mm_wcrt(i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
