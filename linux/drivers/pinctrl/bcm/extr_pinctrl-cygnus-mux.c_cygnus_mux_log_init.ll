; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-cygnus-mux.c_cygnus_mux_log_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-cygnus-mux.c_cygnus_mux_log_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cygnus_pinctrl = type { %struct.cygnus_mux_log*, i32 }
%struct.cygnus_mux_log = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@CYGNUS_NUM_IOMUX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CYGNUS_NUM_IOMUX_REGS = common dso_local global i32 0, align 4
@CYGNUS_NUM_MUX_PER_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cygnus_pinctrl*)* @cygnus_mux_log_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cygnus_mux_log_init(%struct.cygnus_pinctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cygnus_pinctrl*, align 8
  %4 = alloca %struct.cygnus_mux_log*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cygnus_pinctrl* %0, %struct.cygnus_pinctrl** %3, align 8
  %7 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %3, align 8
  %8 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @CYGNUS_NUM_IOMUX, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.cygnus_mux_log* @devm_kcalloc(i32 %9, i32 %10, i32 24, i32 %11)
  %13 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %3, align 8
  %14 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %13, i32 0, i32 0
  store %struct.cygnus_mux_log* %12, %struct.cygnus_mux_log** %14, align 8
  %15 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %3, align 8
  %16 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %15, i32 0, i32 0
  %17 = load %struct.cygnus_mux_log*, %struct.cygnus_mux_log** %16, align 8
  %18 = icmp ne %struct.cygnus_mux_log* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %66

22:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %62, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @CYGNUS_NUM_IOMUX_REGS, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %65

27:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %58, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @CYGNUS_NUM_MUX_PER_REG, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %28
  %33 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %3, align 8
  %34 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %33, i32 0, i32 0
  %35 = load %struct.cygnus_mux_log*, %struct.cygnus_mux_log** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @CYGNUS_NUM_MUX_PER_REG, align 4
  %38 = mul i32 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %38, %39
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.cygnus_mux_log, %struct.cygnus_mux_log* %35, i64 %41
  store %struct.cygnus_mux_log* %42, %struct.cygnus_mux_log** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = mul i32 %43, 4
  %45 = load %struct.cygnus_mux_log*, %struct.cygnus_mux_log** %4, align 8
  %46 = getelementptr inbounds %struct.cygnus_mux_log, %struct.cygnus_mux_log* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = mul i32 %48, 4
  %50 = load %struct.cygnus_mux_log*, %struct.cygnus_mux_log** %4, align 8
  %51 = getelementptr inbounds %struct.cygnus_mux_log, %struct.cygnus_mux_log* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.cygnus_mux_log*, %struct.cygnus_mux_log** %4, align 8
  %54 = getelementptr inbounds %struct.cygnus_mux_log, %struct.cygnus_mux_log* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.cygnus_mux_log*, %struct.cygnus_mux_log** %4, align 8
  %57 = getelementptr inbounds %struct.cygnus_mux_log, %struct.cygnus_mux_log* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  br label %58

58:                                               ; preds = %32
  %59 = load i32, i32* %6, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %28

61:                                               ; preds = %28
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %23

65:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %19
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.cygnus_mux_log* @devm_kcalloc(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
