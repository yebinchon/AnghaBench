; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_spiflash_wait_for_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_spiflash_wait_for_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.broadsheetfb_par = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Timed out waiting for spiflash status\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.broadsheetfb_par*, i32)* @broadsheet_spiflash_wait_for_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @broadsheet_spiflash_wait_for_status(%struct.broadsheetfb_par* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.broadsheetfb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.broadsheetfb_par* %0, %struct.broadsheetfb_par** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %8

8:                                                ; preds = %31, %2
  %9 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %10 = call i32 @broadsheet_write_reg(%struct.broadsheetfb_par* %9, i32 520, i32 1)
  %11 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %12 = call i32 @broadsheet_spiflash_write_byte(%struct.broadsheetfb_par* %11, i32 5)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %44

16:                                               ; preds = %8
  %17 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %18 = call i32 @broadsheet_spiflash_read_byte(%struct.broadsheetfb_par* %17, i32* %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %44

22:                                               ; preds = %16
  %23 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %24 = call i32 @broadsheet_write_reg(%struct.broadsheetfb_par* %23, i32 520, i32 0)
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %48

29:                                               ; preds = %22
  %30 = call i32 @mdelay(i32 5)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %5, align 4
  %34 = icmp ne i32 %32, 0
  br i1 %34, label %8, label %35

35:                                               ; preds = %31
  %36 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %37 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ETIMEDOUT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %48

44:                                               ; preds = %21, %15
  %45 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %46 = call i32 @broadsheet_write_reg(%struct.broadsheetfb_par* %45, i32 520, i32 0)
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %35, %28
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @broadsheet_write_reg(%struct.broadsheetfb_par*, i32, i32) #1

declare dso_local i32 @broadsheet_spiflash_write_byte(%struct.broadsheetfb_par*, i32) #1

declare dso_local i32 @broadsheet_spiflash_read_byte(%struct.broadsheetfb_par*, i32*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
