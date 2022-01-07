; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb_driver.c_savage_disable_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb_driver.c_savage_disable_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.savagefb_par = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"savage_disable_mmio\0A\00", align 1
@S3_SAVAGE4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.savagefb_par*)* @savage_disable_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @savage_disable_mmio(%struct.savagefb_par* %0) #0 {
  %2 = alloca %struct.savagefb_par*, align 8
  %3 = alloca i8, align 1
  store %struct.savagefb_par* %0, %struct.savagefb_par** %2, align 8
  %4 = call i32 @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.savagefb_par*, %struct.savagefb_par** %2, align 8
  %6 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @S3_SAVAGE4, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.savagefb_par*, %struct.savagefb_par** %2, align 8
  %12 = call i32 @vga_out8(i32 980, i8 zeroext 64, %struct.savagefb_par* %11)
  %13 = load %struct.savagefb_par*, %struct.savagefb_par** %2, align 8
  %14 = call zeroext i8 @vga_in8(i32 981, %struct.savagefb_par* %13)
  store i8 %14, i8* %3, align 1
  %15 = load i8, i8* %3, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %16, 1
  %18 = trunc i32 %17 to i8
  %19 = load %struct.savagefb_par*, %struct.savagefb_par** %2, align 8
  %20 = call i32 @vga_out8(i32 981, i8 zeroext %18, %struct.savagefb_par* %19)
  br label %21

21:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @vga_out8(i32, i8 zeroext, %struct.savagefb_par*) #1

declare dso_local zeroext i8 @vga_in8(i32, %struct.savagefb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
