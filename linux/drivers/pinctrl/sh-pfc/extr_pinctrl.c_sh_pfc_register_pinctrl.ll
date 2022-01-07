; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pinctrl.c_sh_pfc_register_pinctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pinctrl.c_sh_pfc_register_pinctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_pfc = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sh_pfc_pinctrl = type { i32, %struct.TYPE_4__, i32, %struct.sh_pfc* }
%struct.TYPE_4__ = type { i32, i32, i32*, i32*, i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@sh_pfc_pinctrl_ops = common dso_local global i32 0, align 4
@sh_pfc_pinmux_ops = common dso_local global i32 0, align 4
@sh_pfc_pinconf_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"could not register: %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sh_pfc_register_pinctrl(%struct.sh_pfc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_pfc*, align 8
  %4 = alloca %struct.sh_pfc_pinctrl*, align 8
  %5 = alloca i32, align 4
  store %struct.sh_pfc* %0, %struct.sh_pfc** %3, align 8
  %6 = load %struct.sh_pfc*, %struct.sh_pfc** %3, align 8
  %7 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.sh_pfc_pinctrl* @devm_kzalloc(i32 %8, i32 64, i32 %9)
  store %struct.sh_pfc_pinctrl* %10, %struct.sh_pfc_pinctrl** %4, align 8
  %11 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %4, align 8
  %12 = icmp ne %struct.sh_pfc_pinctrl* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %86

20:                                               ; preds = %1
  %21 = load %struct.sh_pfc*, %struct.sh_pfc** %3, align 8
  %22 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %4, align 8
  %23 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %22, i32 0, i32 3
  store %struct.sh_pfc* %21, %struct.sh_pfc** %23, align 8
  %24 = load %struct.sh_pfc*, %struct.sh_pfc** %3, align 8
  %25 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %4, align 8
  %26 = call i32 @sh_pfc_map_pins(%struct.sh_pfc* %24, %struct.sh_pfc_pinctrl* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %86

31:                                               ; preds = %20
  %32 = load i32, i32* @DRV_NAME, align 4
  %33 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %4, align 8
  %34 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 6
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @THIS_MODULE, align 4
  %37 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %4, align 8
  %38 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 5
  store i32 %36, i32* %39, align 8
  %40 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %4, align 8
  %41 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  store i32* @sh_pfc_pinctrl_ops, i32** %42, align 8
  %43 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %4, align 8
  %44 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  store i32* @sh_pfc_pinmux_ops, i32** %45, align 8
  %46 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %4, align 8
  %47 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i32* @sh_pfc_pinconf_ops, i32** %48, align 8
  %49 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %4, align 8
  %50 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %4, align 8
  %53 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.sh_pfc*, %struct.sh_pfc** %3, align 8
  %56 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %4, align 8
  %61 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.sh_pfc*, %struct.sh_pfc** %3, align 8
  %64 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %4, align 8
  %67 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %66, i32 0, i32 1
  %68 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %4, align 8
  %69 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %4, align 8
  %70 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %69, i32 0, i32 0
  %71 = call i32 @devm_pinctrl_register_and_init(i32 %65, %struct.TYPE_4__* %67, %struct.sh_pfc_pinctrl* %68, i32* %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %31
  %75 = load %struct.sh_pfc*, %struct.sh_pfc** %3, align 8
  %76 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %86

81:                                               ; preds = %31
  %82 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %4, align 8
  %83 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @pinctrl_enable(i32 %84)
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %81, %74, %29, %17
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.sh_pfc_pinctrl* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sh_pfc_map_pins(%struct.sh_pfc*, %struct.sh_pfc_pinctrl*) #1

declare dso_local i32 @devm_pinctrl_register_and_init(i32, %struct.TYPE_4__*, %struct.sh_pfc_pinctrl*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pinctrl_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
