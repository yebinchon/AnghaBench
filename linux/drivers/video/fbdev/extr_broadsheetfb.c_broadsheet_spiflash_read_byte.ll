; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_spiflash_read_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_spiflash_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.broadsheetfb_par = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.broadsheetfb_par*, i32*)* @broadsheet_spiflash_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @broadsheet_spiflash_read_byte(%struct.broadsheetfb_par* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.broadsheetfb_par*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.broadsheetfb_par* %0, %struct.broadsheetfb_par** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %9 = call i32 @broadsheet_write_reg(%struct.broadsheetfb_par* %8, i32 514, i32 0)
  %10 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %11 = call i32 @broadsheet_spiflash_wait_for_bit(%struct.broadsheetfb_par* %10, i32 518, i32 3, i32 0, i32 100)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %18 = call i32 @broadsheet_read_reg(%struct.broadsheetfb_par* %17, i32 512)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 255
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %16, %14
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @broadsheet_write_reg(%struct.broadsheetfb_par*, i32, i32) #1

declare dso_local i32 @broadsheet_spiflash_wait_for_bit(%struct.broadsheetfb_par*, i32, i32, i32, i32) #1

declare dso_local i32 @broadsheet_read_reg(%struct.broadsheetfb_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
