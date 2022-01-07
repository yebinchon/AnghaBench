; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_setup_for_wfm_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_setup_for_wfm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.broadsheetfb_par = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.broadsheetfb_par*, i32*, i32*)* @broadsheet_setup_for_wfm_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @broadsheet_setup_for_wfm_write(%struct.broadsheetfb_par* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.broadsheetfb_par*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.broadsheetfb_par* %0, %struct.broadsheetfb_par** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %5, align 8
  %10 = call i32 @broadsheet_setup_plls(%struct.broadsheetfb_par* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %4, align 4
  br label %36

15:                                               ; preds = %3
  %16 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %5, align 8
  %17 = call i32 @broadsheet_write_reg(%struct.broadsheetfb_par* %16, i32 262, i32 515)
  %18 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %5, align 8
  %19 = call i32 @broadsheet_setup_spi(%struct.broadsheetfb_par* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %36

24:                                               ; preds = %15
  %25 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @broadsheet_setup_spiflash(%struct.broadsheetfb_par* %25, i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %36

32:                                               ; preds = %24
  %33 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %5, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @broadsheet_verify_spiflash(%struct.broadsheetfb_par* %33, i32* %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %30, %22, %13
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @broadsheet_setup_plls(%struct.broadsheetfb_par*) #1

declare dso_local i32 @broadsheet_write_reg(%struct.broadsheetfb_par*, i32, i32) #1

declare dso_local i32 @broadsheet_setup_spi(%struct.broadsheetfb_par*) #1

declare dso_local i32 @broadsheet_setup_spiflash(%struct.broadsheetfb_par*, i32*) #1

declare dso_local i32 @broadsheet_verify_spiflash(%struct.broadsheetfb_par*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
