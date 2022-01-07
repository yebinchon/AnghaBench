; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/hw/extr_mmp_spi.c_lcd_spi_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/hw/extr_mmp_spi.c_lcd_spi_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmphw_ctrl = type { i32, i8* }
%struct.spi_master = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"unable to allocate SPI master\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@lcd_spi_setup = common dso_local global i32 0, align 4
@lcd_spi_one_transfer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to register SPI master\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"registered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lcd_spi_register(%struct.mmphw_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmphw_ctrl*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store %struct.mmphw_ctrl* %0, %struct.mmphw_ctrl** %3, align 8
  %7 = load %struct.mmphw_ctrl*, %struct.mmphw_ctrl** %3, align 8
  %8 = getelementptr inbounds %struct.mmphw_ctrl, %struct.mmphw_ctrl* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.spi_master* @spi_alloc_master(i32 %9, i32 8)
  store %struct.spi_master* %10, %struct.spi_master** %4, align 8
  %11 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %12 = icmp ne %struct.spi_master* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.mmphw_ctrl*, %struct.mmphw_ctrl** %3, align 8
  %15 = getelementptr inbounds %struct.mmphw_ctrl, %struct.mmphw_ctrl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %53

20:                                               ; preds = %1
  %21 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %22 = call i8** @spi_master_get_devdata(%struct.spi_master* %21)
  store i8** %22, i8*** %5, align 8
  %23 = load %struct.mmphw_ctrl*, %struct.mmphw_ctrl** %3, align 8
  %24 = getelementptr inbounds %struct.mmphw_ctrl, %struct.mmphw_ctrl* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i8**, i8*** %5, align 8
  store i8* %25, i8** %26, align 8
  %27 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %28 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %27, i32 0, i32 0
  store i32 5, i32* %28, align 4
  %29 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %30 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load i32, i32* @lcd_spi_setup, align 4
  %32 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %33 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @lcd_spi_one_transfer, align 4
  %35 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %36 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %38 = call i32 @spi_register_master(%struct.spi_master* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %20
  %42 = load %struct.mmphw_ctrl*, %struct.mmphw_ctrl** %3, align 8
  %43 = getelementptr inbounds %struct.mmphw_ctrl, %struct.mmphw_ctrl* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %47 = call i32 @spi_master_put(%struct.spi_master* %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %53

49:                                               ; preds = %20
  %50 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %51 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %50, i32 0, i32 2
  %52 = call i32 @dev_info(i32* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %49, %41, %13
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.spi_master* @spi_alloc_master(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i8** @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @spi_register_master(%struct.spi_master*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
