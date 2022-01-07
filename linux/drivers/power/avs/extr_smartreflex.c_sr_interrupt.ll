; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/avs/extr_smartreflex.c_sr_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/avs/extr_smartreflex.c_sr_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.omap_sr*, i32)* }
%struct.omap_sr = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ERRCONFIG_V1 = common dso_local global i32 0, align 4
@IRQSTATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"UNKNOWN IP type %d\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@sr_class = common dso_local global %struct.TYPE_4__* null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sr_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.omap_sr*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.omap_sr*
  store %struct.omap_sr* %9, %struct.omap_sr** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.omap_sr*, %struct.omap_sr** %6, align 8
  %11 = getelementptr inbounds %struct.omap_sr, %struct.omap_sr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %29 [
    i32 129, label %13
    i32 128, label %21
  ]

13:                                               ; preds = %2
  %14 = load %struct.omap_sr*, %struct.omap_sr** %6, align 8
  %15 = load i32, i32* @ERRCONFIG_V1, align 4
  %16 = call i32 @sr_read_reg(%struct.omap_sr* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.omap_sr*, %struct.omap_sr** %6, align 8
  %18 = load i32, i32* @ERRCONFIG_V1, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @sr_write_reg(%struct.omap_sr* %17, i32 %18, i32 %19)
  br label %39

21:                                               ; preds = %2
  %22 = load %struct.omap_sr*, %struct.omap_sr** %6, align 8
  %23 = load i32, i32* @IRQSTATUS, align 4
  %24 = call i32 @sr_read_reg(%struct.omap_sr* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.omap_sr*, %struct.omap_sr** %6, align 8
  %26 = load i32, i32* @IRQSTATUS, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @sr_write_reg(%struct.omap_sr* %25, i32 %26, i32 %27)
  br label %39

29:                                               ; preds = %2
  %30 = load %struct.omap_sr*, %struct.omap_sr** %6, align 8
  %31 = getelementptr inbounds %struct.omap_sr, %struct.omap_sr* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.omap_sr*, %struct.omap_sr** %6, align 8
  %35 = getelementptr inbounds %struct.omap_sr, %struct.omap_sr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @IRQ_NONE, align 4
  store i32 %38, i32* %3, align 4
  br label %53

39:                                               ; preds = %21, %13
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sr_class, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (%struct.omap_sr*, i32)*, i32 (%struct.omap_sr*, i32)** %41, align 8
  %43 = icmp ne i32 (%struct.omap_sr*, i32)* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sr_class, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32 (%struct.omap_sr*, i32)*, i32 (%struct.omap_sr*, i32)** %46, align 8
  %48 = load %struct.omap_sr*, %struct.omap_sr** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 %47(%struct.omap_sr* %48, i32 %49)
  br label %51

51:                                               ; preds = %44, %39
  %52 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %29
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @sr_read_reg(%struct.omap_sr*, i32) #1

declare dso_local i32 @sr_write_reg(%struct.omap_sr*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
