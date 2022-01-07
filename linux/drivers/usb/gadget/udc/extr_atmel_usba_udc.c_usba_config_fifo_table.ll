; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_config_fifo_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_config_fifo_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usba_udc = type { i32* }

@fifo_mode = common dso_local global i32 0, align 4
@mode_1_cfg = common dso_local global i8* null, align 8
@mode_2_cfg = common dso_local global i8* null, align 8
@mode_3_cfg = common dso_local global i8* null, align 8
@mode_4_cfg = common dso_local global i8* null, align 8
@DBG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Setup fifo_mode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usba_udc*)* @usba_config_fifo_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usba_config_fifo_table(%struct.usba_udc* %0) #0 {
  %2 = alloca %struct.usba_udc*, align 8
  %3 = alloca i32, align 4
  store %struct.usba_udc* %0, %struct.usba_udc** %2, align 8
  %4 = load i32, i32* @fifo_mode, align 4
  switch i32 %4, label %5 [
    i32 0, label %6
    i32 1, label %9
    i32 2, label %16
    i32 3, label %23
    i32 4, label %30
  ]

5:                                                ; preds = %1
  store i32 0, i32* @fifo_mode, align 4
  br label %6

6:                                                ; preds = %1, %5
  %7 = load %struct.usba_udc*, %struct.usba_udc** %2, align 8
  %8 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %7, i32 0, i32 0
  store i32* null, i32** %8, align 8
  store i32 0, i32* %3, align 4
  br label %37

9:                                                ; preds = %1
  %10 = load i8*, i8** @mode_1_cfg, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load %struct.usba_udc*, %struct.usba_udc** %2, align 8
  %13 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %12, i32 0, i32 0
  store i32* %11, i32** %13, align 8
  %14 = load i8*, i8** @mode_1_cfg, align 8
  %15 = call i32 @ARRAY_SIZE(i8* %14)
  store i32 %15, i32* %3, align 4
  br label %37

16:                                               ; preds = %1
  %17 = load i8*, i8** @mode_2_cfg, align 8
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.usba_udc*, %struct.usba_udc** %2, align 8
  %20 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %19, i32 0, i32 0
  store i32* %18, i32** %20, align 8
  %21 = load i8*, i8** @mode_2_cfg, align 8
  %22 = call i32 @ARRAY_SIZE(i8* %21)
  store i32 %22, i32* %3, align 4
  br label %37

23:                                               ; preds = %1
  %24 = load i8*, i8** @mode_3_cfg, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.usba_udc*, %struct.usba_udc** %2, align 8
  %27 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load i8*, i8** @mode_3_cfg, align 8
  %29 = call i32 @ARRAY_SIZE(i8* %28)
  store i32 %29, i32* %3, align 4
  br label %37

30:                                               ; preds = %1
  %31 = load i8*, i8** @mode_4_cfg, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.usba_udc*, %struct.usba_udc** %2, align 8
  %34 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load i8*, i8** @mode_4_cfg, align 8
  %36 = call i32 @ARRAY_SIZE(i8* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %30, %23, %16, %9, %6
  %38 = load i32, i32* @DBG_HW, align 4
  %39 = load i32, i32* @fifo_mode, align 4
  %40 = call i32 @DBG(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @DBG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
