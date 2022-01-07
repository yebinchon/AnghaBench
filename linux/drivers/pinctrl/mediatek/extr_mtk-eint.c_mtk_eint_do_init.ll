; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_mtk-eint.c_mtk_eint_do_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_mtk-eint.c_mtk_eint_do_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eint = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i8*, i8*, i8*, i32* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@mtk_generic_eint_regs = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@irq_domain_simple_ops = common dso_local global i32 0, align 4
@mtk_eint_irq_chip = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@mtk_eint_irq_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_eint_do_init(%struct.mtk_eint* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_eint*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_eint* %0, %struct.mtk_eint** %3, align 8
  %6 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %7 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %6, i32 0, i32 7
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %12 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %11, i32 0, i32 7
  store i32* @mtk_generic_eint_regs, i32** %12, align 8
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %15 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %18 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @devm_kcalloc(%struct.TYPE_4__* %16, i32 %21, i32 1, i32 %22)
  %24 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %25 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %24, i32 0, i32 6
  store i8* %23, i8** %25, align 8
  %26 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %27 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %26, i32 0, i32 6
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %13
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %127

33:                                               ; preds = %13
  %34 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %35 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %38 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @devm_kcalloc(%struct.TYPE_4__* %36, i32 %41, i32 1, i32 %42)
  %44 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %45 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %44, i32 0, i32 5
  store i8* %43, i8** %45, align 8
  %46 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %47 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %46, i32 0, i32 5
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %33
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %127

53:                                               ; preds = %33
  %54 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %55 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %58 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i8* @devm_kcalloc(%struct.TYPE_4__* %56, i32 %61, i32 4, i32 %62)
  %64 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %65 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %67 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %66, i32 0, i32 4
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %53
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %127

73:                                               ; preds = %53
  %74 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %75 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %74, i32 0, i32 3
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %80 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %79, i32 0, i32 2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @irq_domain_add_linear(i32 %78, i32 %83, i32* @irq_domain_simple_ops, i32* null)
  %85 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %86 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %88 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %73
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %127

94:                                               ; preds = %73
  %95 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %96 = call i32 @mtk_eint_hw_init(%struct.mtk_eint* %95)
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %117, %94
  %98 = load i32, i32* %4, align 4
  %99 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %100 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %99, i32 0, i32 2
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %98, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %97
  %106 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %107 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @irq_create_mapping(i32 %108, i32 %109)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @handle_level_irq, align 4
  %113 = call i32 @irq_set_chip_and_handler(i32 %111, i32* @mtk_eint_irq_chip, i32 %112)
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %116 = call i32 @irq_set_chip_data(i32 %114, %struct.mtk_eint* %115)
  br label %117

117:                                              ; preds = %105
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %97

120:                                              ; preds = %97
  %121 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %122 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @mtk_eint_irq_handler, align 4
  %125 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %126 = call i32 @irq_set_chained_handler_and_data(i32 %123, i32 %124, %struct.mtk_eint* %125)
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %120, %91, %70, %50, %30
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i8* @devm_kcalloc(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @irq_domain_add_linear(i32, i32, i32*, i32*) #1

declare dso_local i32 @mtk_eint_hw_init(%struct.mtk_eint*) #1

declare dso_local i32 @irq_create_mapping(i32, i32) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.mtk_eint*) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.mtk_eint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
