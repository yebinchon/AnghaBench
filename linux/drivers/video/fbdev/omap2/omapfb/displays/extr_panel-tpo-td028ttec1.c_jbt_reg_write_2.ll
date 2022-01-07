; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-tpo-td028ttec1.c_jbt_reg_write_2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-tpo-td028ttec1.c_jbt_reg_write_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_drv_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@JBT_COMMAND = common dso_local global i32 0, align 4
@JBT_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"jbt_reg_write_2 spi_write ret %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panel_drv_data*, i32, i32)* @jbt_reg_write_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbt_reg_write_2(%struct.panel_drv_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.panel_drv_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  store %struct.panel_drv_data* %0, %struct.panel_drv_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @JBT_COMMAND, align 4
  %10 = load i32, i32* %5, align 4
  %11 = or i32 %9, %10
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @JBT_DATA, align 4
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %14, 8
  %16 = or i32 %13, %15
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @JBT_DATA, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 255
  %21 = or i32 %18, %20
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %21, i32* %22, align 4
  %23 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %24 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %27 = call i32 @spi_write(%struct.TYPE_2__* %25, i32* %26, i32 12)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %32 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %30, %3
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @spi_write(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
