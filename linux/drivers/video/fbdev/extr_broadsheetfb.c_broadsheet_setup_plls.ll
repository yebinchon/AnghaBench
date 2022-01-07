; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_setup_plls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_setup_plls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.broadsheetfb_par = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.broadsheetfb_par*)* @broadsheet_setup_plls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @broadsheet_setup_plls(%struct.broadsheetfb_par* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.broadsheetfb_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.broadsheetfb_par* %0, %struct.broadsheetfb_par** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %3, align 8
  %7 = call i32 @broadsheet_write_reg(%struct.broadsheetfb_par* %6, i32 6, i32 0)
  %8 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %3, align 8
  %9 = call i32 @broadsheet_write_reg(%struct.broadsheetfb_par* %8, i32 16, i32 4)
  %10 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %3, align 8
  %11 = call i32 @broadsheet_write_reg(%struct.broadsheetfb_par* %10, i32 18, i32 22857)
  %12 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %3, align 8
  %13 = call i32 @broadsheet_write_reg(%struct.broadsheetfb_par* %12, i32 20, i32 64)
  %14 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %3, align 8
  %15 = call i32 @broadsheet_write_reg(%struct.broadsheetfb_par* %14, i32 22, i32 0)
  br label %16

16:                                               ; preds = %25, %1
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  %19 = icmp sgt i32 %17, 100
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @ETIMEDOUT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %38

23:                                               ; preds = %16
  %24 = call i32 @mdelay(i32 1)
  br label %25

25:                                               ; preds = %23
  %26 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %3, align 8
  %27 = call i32 @is_broadsheet_pll_locked(%struct.broadsheetfb_par* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %16, label %30

30:                                               ; preds = %25
  %31 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %3, align 8
  %32 = call i32 @broadsheet_read_reg(%struct.broadsheetfb_par* %31, i32 6)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, -2
  store i32 %34, i32* %5, align 4
  %35 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @broadsheet_write_reg(%struct.broadsheetfb_par* %35, i32 6, i32 %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %30, %20
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @broadsheet_write_reg(%struct.broadsheetfb_par*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @is_broadsheet_pll_locked(%struct.broadsheetfb_par*) #1

declare dso_local i32 @broadsheet_read_reg(%struct.broadsheetfb_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
