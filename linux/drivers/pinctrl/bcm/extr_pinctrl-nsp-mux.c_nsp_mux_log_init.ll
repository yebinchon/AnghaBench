; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-nsp-mux.c_nsp_mux_log_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-nsp-mux.c_nsp_mux_log_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.nsp_pinctrl = type { %struct.nsp_mux_log*, i32 }
%struct.nsp_mux_log = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32 }

@nsp_pin_groups = common dso_local global %struct.TYPE_7__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nsp_pinctrl*)* @nsp_mux_log_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp_mux_log_init(%struct.nsp_pinctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nsp_pinctrl*, align 8
  %4 = alloca %struct.nsp_mux_log*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nsp_pinctrl* %0, %struct.nsp_pinctrl** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @nsp_pin_groups, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.nsp_pinctrl*, %struct.nsp_pinctrl** %3, align 8
  %10 = getelementptr inbounds %struct.nsp_pinctrl, %struct.nsp_pinctrl* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.nsp_mux_log* @devm_kcalloc(i32 %11, i32 %12, i32 24, i32 %13)
  %15 = load %struct.nsp_pinctrl*, %struct.nsp_pinctrl** %3, align 8
  %16 = getelementptr inbounds %struct.nsp_pinctrl, %struct.nsp_pinctrl* %15, i32 0, i32 0
  store %struct.nsp_mux_log* %14, %struct.nsp_mux_log** %16, align 8
  %17 = load %struct.nsp_pinctrl*, %struct.nsp_pinctrl** %3, align 8
  %18 = getelementptr inbounds %struct.nsp_pinctrl, %struct.nsp_pinctrl* %17, i32 0, i32 0
  %19 = load %struct.nsp_mux_log*, %struct.nsp_mux_log** %18, align 8
  %20 = icmp ne %struct.nsp_mux_log* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %65

24:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %61, %24
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %64

29:                                               ; preds = %25
  %30 = load %struct.nsp_pinctrl*, %struct.nsp_pinctrl** %3, align 8
  %31 = getelementptr inbounds %struct.nsp_pinctrl, %struct.nsp_pinctrl* %30, i32 0, i32 0
  %32 = load %struct.nsp_mux_log*, %struct.nsp_mux_log** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.nsp_mux_log, %struct.nsp_mux_log* %32, i64 %34
  store %struct.nsp_mux_log* %35, %struct.nsp_mux_log** %4, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @nsp_pin_groups, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nsp_mux_log*, %struct.nsp_mux_log** %4, align 8
  %44 = getelementptr inbounds %struct.nsp_mux_log, %struct.nsp_mux_log* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** @nsp_pin_groups, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nsp_mux_log*, %struct.nsp_mux_log** %4, align 8
  %54 = getelementptr inbounds %struct.nsp_mux_log, %struct.nsp_mux_log* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 8
  %56 = load %struct.nsp_mux_log*, %struct.nsp_mux_log** %4, align 8
  %57 = getelementptr inbounds %struct.nsp_mux_log, %struct.nsp_mux_log* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.nsp_mux_log*, %struct.nsp_mux_log** %4, align 8
  %60 = getelementptr inbounds %struct.nsp_mux_log, %struct.nsp_mux_log* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %61

61:                                               ; preds = %29
  %62 = load i32, i32* %5, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %25

64:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %21
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local %struct.nsp_mux_log* @devm_kcalloc(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
