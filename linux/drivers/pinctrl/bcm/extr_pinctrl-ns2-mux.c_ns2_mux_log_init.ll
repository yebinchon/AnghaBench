; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-ns2-mux.c_ns2_mux_log_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-ns2-mux.c_ns2_mux_log_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ns2_pinctrl = type { %struct.ns2_mux_log*, i32 }
%struct.ns2_mux_log = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i8* }

@NS2_NUM_IOMUX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NS2_PIN_MUX_BASE0 = common dso_local global i8* null, align 8
@NS2_NUM_PWM_MUX = common dso_local global i32 0, align 4
@NS2_MUX_PAD_FUNC1_OFFSET = common dso_local global i64 0, align 8
@NS2_PIN_MUX_BASE1 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ns2_pinctrl*)* @ns2_mux_log_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns2_mux_log_init(%struct.ns2_pinctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ns2_pinctrl*, align 8
  %4 = alloca %struct.ns2_mux_log*, align 8
  %5 = alloca i32, align 4
  store %struct.ns2_pinctrl* %0, %struct.ns2_pinctrl** %3, align 8
  %6 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %3, align 8
  %7 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @NS2_NUM_IOMUX, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ns2_mux_log* @devm_kcalloc(i32 %8, i32 %9, i32 40, i32 %10)
  %12 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %3, align 8
  %13 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %12, i32 0, i32 0
  store %struct.ns2_mux_log* %11, %struct.ns2_mux_log** %13, align 8
  %14 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %3, align 8
  %15 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %14, i32 0, i32 0
  %16 = load %struct.ns2_mux_log*, %struct.ns2_mux_log** %15, align 8
  %17 = icmp ne %struct.ns2_mux_log* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %122

21:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %34, %21
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @NS2_NUM_IOMUX, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %3, align 8
  %28 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %27, i32 0, i32 0
  %29 = load %struct.ns2_mux_log*, %struct.ns2_mux_log** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ns2_mux_log, %struct.ns2_mux_log* %29, i64 %31
  %33 = getelementptr inbounds %struct.ns2_mux_log, %struct.ns2_mux_log* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %22

37:                                               ; preds = %22
  %38 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %3, align 8
  %39 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %38, i32 0, i32 0
  %40 = load %struct.ns2_mux_log*, %struct.ns2_mux_log** %39, align 8
  %41 = getelementptr inbounds %struct.ns2_mux_log, %struct.ns2_mux_log* %40, i64 0
  store %struct.ns2_mux_log* %41, %struct.ns2_mux_log** %4, align 8
  %42 = load i8*, i8** @NS2_PIN_MUX_BASE0, align 8
  %43 = load %struct.ns2_mux_log*, %struct.ns2_mux_log** %4, align 8
  %44 = getelementptr inbounds %struct.ns2_mux_log, %struct.ns2_mux_log* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  store i8* %42, i8** %45, align 8
  %46 = load %struct.ns2_mux_log*, %struct.ns2_mux_log** %4, align 8
  %47 = getelementptr inbounds %struct.ns2_mux_log, %struct.ns2_mux_log* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.ns2_mux_log*, %struct.ns2_mux_log** %4, align 8
  %50 = getelementptr inbounds %struct.ns2_mux_log, %struct.ns2_mux_log* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 31, i32* %51, align 8
  %52 = load %struct.ns2_mux_log*, %struct.ns2_mux_log** %4, align 8
  %53 = getelementptr inbounds %struct.ns2_mux_log, %struct.ns2_mux_log* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  store i32 1, i32* %5, align 4
  br label %55

55:                                               ; preds = %85, %37
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @NS2_NUM_IOMUX, align 4
  %58 = load i32, i32* @NS2_NUM_PWM_MUX, align 4
  %59 = sub i32 %57, %58
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %88

61:                                               ; preds = %55
  %62 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %3, align 8
  %63 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %62, i32 0, i32 0
  %64 = load %struct.ns2_mux_log*, %struct.ns2_mux_log** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ns2_mux_log, %struct.ns2_mux_log* %64, i64 %66
  store %struct.ns2_mux_log* %67, %struct.ns2_mux_log** %4, align 8
  %68 = load i8*, i8** @NS2_PIN_MUX_BASE0, align 8
  %69 = load %struct.ns2_mux_log*, %struct.ns2_mux_log** %4, align 8
  %70 = getelementptr inbounds %struct.ns2_mux_log, %struct.ns2_mux_log* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  store i8* %68, i8** %71, align 8
  %72 = load i64, i64* @NS2_MUX_PAD_FUNC1_OFFSET, align 8
  %73 = load %struct.ns2_mux_log*, %struct.ns2_mux_log** %4, align 8
  %74 = getelementptr inbounds %struct.ns2_mux_log, %struct.ns2_mux_log* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i64 %72, i64* %75, align 8
  %76 = load i32, i32* %5, align 4
  %77 = mul i32 %76, 2
  %78 = sub i32 32, %77
  %79 = load %struct.ns2_mux_log*, %struct.ns2_mux_log** %4, align 8
  %80 = getelementptr inbounds %struct.ns2_mux_log, %struct.ns2_mux_log* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.ns2_mux_log*, %struct.ns2_mux_log** %4, align 8
  %83 = getelementptr inbounds %struct.ns2_mux_log, %struct.ns2_mux_log* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %61
  %86 = load i32, i32* %5, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %55

88:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %118, %88
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @NS2_NUM_PWM_MUX, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %121

93:                                               ; preds = %89
  %94 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %3, align 8
  %95 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %94, i32 0, i32 0
  %96 = load %struct.ns2_mux_log*, %struct.ns2_mux_log** %95, align 8
  %97 = load i32, i32* @NS2_NUM_IOMUX, align 4
  %98 = load i32, i32* @NS2_NUM_PWM_MUX, align 4
  %99 = sub i32 %97, %98
  %100 = load i32, i32* %5, align 4
  %101 = add i32 %99, %100
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.ns2_mux_log, %struct.ns2_mux_log* %96, i64 %102
  store %struct.ns2_mux_log* %103, %struct.ns2_mux_log** %4, align 8
  %104 = load i8*, i8** @NS2_PIN_MUX_BASE1, align 8
  %105 = load %struct.ns2_mux_log*, %struct.ns2_mux_log** %4, align 8
  %106 = getelementptr inbounds %struct.ns2_mux_log, %struct.ns2_mux_log* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 3
  store i8* %104, i8** %107, align 8
  %108 = load %struct.ns2_mux_log*, %struct.ns2_mux_log** %4, align 8
  %109 = getelementptr inbounds %struct.ns2_mux_log, %struct.ns2_mux_log* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  store i64 0, i64* %110, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.ns2_mux_log*, %struct.ns2_mux_log** %4, align 8
  %113 = getelementptr inbounds %struct.ns2_mux_log, %struct.ns2_mux_log* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  %115 = load %struct.ns2_mux_log*, %struct.ns2_mux_log** %4, align 8
  %116 = getelementptr inbounds %struct.ns2_mux_log, %struct.ns2_mux_log* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %93
  %119 = load i32, i32* %5, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %89

121:                                              ; preds = %89
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %18
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.ns2_mux_log* @devm_kcalloc(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
