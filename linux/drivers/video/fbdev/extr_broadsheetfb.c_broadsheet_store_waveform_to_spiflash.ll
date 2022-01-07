; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_store_waveform_to_spiflash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_store_waveform_to_spiflash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.broadsheetfb_par = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.broadsheetfb_par*, i32*, i64)* @broadsheet_store_waveform_to_spiflash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @broadsheet_store_waveform_to_spiflash(%struct.broadsheetfb_par* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.broadsheetfb_par*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.broadsheetfb_par* %0, %struct.broadsheetfb_par** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %11 = call i32 @broadsheet_setup_for_wfm_write(%struct.broadsheetfb_par* %10, i32* %8, i32* %9)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %21

15:                                               ; preds = %3
  %16 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @broadsheet_write_spiflash(%struct.broadsheetfb_par* %16, i32 2182, i32* %17, i64 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %15, %14
  %22 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @broadsheet_write_reg(%struct.broadsheetfb_par* %22, i32 516, i32 %23)
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

declare dso_local i32 @broadsheet_setup_for_wfm_write(%struct.broadsheetfb_par*, i32*, i32*) #1

declare dso_local i32 @broadsheet_write_spiflash(%struct.broadsheetfb_par*, i32, i32*, i64, i32) #1

declare dso_local i32 @broadsheet_write_reg(%struct.broadsheetfb_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
