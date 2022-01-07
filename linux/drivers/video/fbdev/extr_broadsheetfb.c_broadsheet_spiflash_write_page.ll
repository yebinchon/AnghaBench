; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_spiflash_write_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_spiflash_write_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.broadsheetfb_par = type { i32 }

@BS_SPIFLASH_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.broadsheetfb_par*, i32, i8*)* @broadsheet_spiflash_write_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @broadsheet_spiflash_write_page(%struct.broadsheetfb_par* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.broadsheetfb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.broadsheetfb_par* %0, %struct.broadsheetfb_par** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %10 = call i32 @broadsheet_spiflash_write_control(%struct.broadsheetfb_par* %9, i32 1)
  %11 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @broadsheet_spiflash_op_on_address(%struct.broadsheetfb_par* %11, i32 2, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %42

17:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %34, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @BS_SPIFLASH_PAGE_SIZE, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @broadsheet_spiflash_write_byte(%struct.broadsheetfb_par* %23, i8 signext %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %42

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %18

37:                                               ; preds = %18
  %38 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %39 = call i32 @broadsheet_write_reg(%struct.broadsheetfb_par* %38, i32 520, i32 0)
  %40 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %41 = call i32 @broadsheet_spiflash_wait_for_status(%struct.broadsheetfb_par* %40, i32 100)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %37, %32, %16
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @broadsheet_spiflash_write_control(%struct.broadsheetfb_par*, i32) #1

declare dso_local i32 @broadsheet_spiflash_op_on_address(%struct.broadsheetfb_par*, i32, i32) #1

declare dso_local i32 @broadsheet_spiflash_write_byte(%struct.broadsheetfb_par*, i8 signext) #1

declare dso_local i32 @broadsheet_write_reg(%struct.broadsheetfb_par*, i32, i32) #1

declare dso_local i32 @broadsheet_spiflash_wait_for_status(%struct.broadsheetfb_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
