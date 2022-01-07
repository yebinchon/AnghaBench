; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/actions/extr_pinctrl-owl.c_owl_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/actions/extr_pinctrl-owl.c_owl_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.owl_pinctrl = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.owl_pingroup* }
%struct.owl_pingroup = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @owl_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.owl_pinctrl*, align 8
  %9 = alloca %struct.owl_pingroup*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %14 = call %struct.owl_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.owl_pinctrl* %14, %struct.owl_pinctrl** %8, align 8
  %15 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %8, align 8
  %16 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.owl_pingroup*, %struct.owl_pingroup** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.owl_pingroup, %struct.owl_pingroup* %19, i64 %21
  store %struct.owl_pingroup* %22, %struct.owl_pingroup** %9, align 8
  %23 = load %struct.owl_pingroup*, %struct.owl_pingroup** %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @get_group_mfp_mask_val(%struct.owl_pingroup* %23, i32 %24, i32* %12, i32* %11)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %49

30:                                               ; preds = %3
  %31 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %8, align 8
  %32 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %31, i32 0, i32 0
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @raw_spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %8, align 8
  %36 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.owl_pingroup*, %struct.owl_pingroup** %9, align 8
  %39 = getelementptr inbounds %struct.owl_pingroup, %struct.owl_pingroup* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @owl_update_bits(i64 %41, i32 %42, i32 %43)
  %45 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %8, align 8
  %46 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %45, i32 0, i32 0
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @raw_spin_unlock_irqrestore(i32* %46, i64 %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %30, %27
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.owl_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i64 @get_group_mfp_mask_val(%struct.owl_pingroup*, i32, i32*, i32*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @owl_update_bits(i64, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
