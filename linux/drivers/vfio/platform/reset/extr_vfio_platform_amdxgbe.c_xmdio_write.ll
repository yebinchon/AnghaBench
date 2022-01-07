; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/platform/reset/extr_vfio_platform_amdxgbe.c_xmdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/platform/reset/extr_vfio_platform_amdxgbe.c_xmdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCS_MMD_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @xmdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmdio_write(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = shl i32 %10, 16
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, 65535
  %14 = or i32 %11, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = lshr i32 %15, 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @PCS_MMD_SELECT, align 4
  %19 = shl i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = getelementptr i8, i8* %17, i64 %20
  %22 = call i32 @iowrite32(i32 %16, i8* %21)
  %23 = load i32, i32* %8, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, 255
  %27 = shl i32 %26, 2
  %28 = zext i32 %27 to i64
  %29 = getelementptr i8, i8* %24, i64 %28
  %30 = call i32 @iowrite32(i32 %23, i8* %29)
  ret void
}

declare dso_local i32 @iowrite32(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
