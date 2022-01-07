; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon_xo_1_5.c_dcon_init_xo_1_5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon_xo_1_5.c_dcon_init_xo_1_5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcon_gpio = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.dcon_priv = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@gpios_asis = common dso_local global %struct.dcon_gpio* null, align 8
@gpios_table = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@gpios = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"failed to request %s GPIO: %d\0A\00", align 1
@VX855_GPI_SCI_SMI = common dso_local global i32 0, align 4
@BIT_GPIO12 = common dso_local global i32 0, align 4
@VX855_GENL_PURPOSE_OUTPUT = common dso_local global i32 0, align 4
@DCON_SOURCE_CPU = common dso_local global i32 0, align 4
@DCON_SOURCE_DCON = common dso_local global i32 0, align 4
@acpi_gbl_FADT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@dcon_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"DCON\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"DCON (IRQ%d) allocation failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcon_priv*)* @dcon_init_xo_1_5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcon_init_xo_1_5(%struct.dcon_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dcon_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dcon_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dcon_priv* %0, %struct.dcon_priv** %3, align 8
  %8 = load %struct.dcon_gpio*, %struct.dcon_gpio** @gpios_asis, align 8
  %9 = getelementptr inbounds %struct.dcon_gpio, %struct.dcon_gpio* %8, i64 0
  store %struct.dcon_gpio* %9, %struct.dcon_gpio** %5, align 8
  %10 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %11 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call i32 @dev_name(i32* %13)
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gpios_table, i32 0, i32 0), align 4
  %15 = call i32 @gpiod_add_lookup_table(%struct.TYPE_6__* @gpios_table)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %67, %1
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.dcon_gpio*, %struct.dcon_gpio** @gpios_asis, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.dcon_gpio* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %70

21:                                               ; preds = %16
  %22 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %23 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.dcon_gpio*, %struct.dcon_gpio** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.dcon_gpio, %struct.dcon_gpio* %26, i64 %28
  %30 = getelementptr inbounds %struct.dcon_gpio, %struct.dcon_gpio* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dcon_gpio*, %struct.dcon_gpio** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.dcon_gpio, %struct.dcon_gpio* %32, i64 %34
  %36 = getelementptr inbounds %struct.dcon_gpio, %struct.dcon_gpio* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @devm_gpiod_get(i32* %25, i32 %31, i32 %37)
  %39 = load i32*, i32** @gpios, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  %43 = load i32*, i32** @gpios, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %21
  %51 = load i32*, i32** @gpios, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @PTR_ERR(i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load %struct.dcon_gpio*, %struct.dcon_gpio** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.dcon_gpio, %struct.dcon_gpio* %57, i64 %59
  %61 = getelementptr inbounds %struct.dcon_gpio, %struct.dcon_gpio* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %105

66:                                               ; preds = %21
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %16

70:                                               ; preds = %16
  %71 = call i32 (...) @dcon_clear_irq()
  %72 = load i32, i32* @VX855_GPI_SCI_SMI, align 4
  %73 = call i32 @inb(i32 %72)
  %74 = load i32, i32* @BIT_GPIO12, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @VX855_GPI_SCI_SMI, align 4
  %77 = call i32 @outb(i32 %75, i32 %76)
  %78 = load i32, i32* @VX855_GENL_PURPOSE_OUTPUT, align 4
  %79 = call i32 @inl(i32 %78)
  %80 = and i32 %79, 4096
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %70
  %83 = load i32, i32* @DCON_SOURCE_CPU, align 4
  br label %86

84:                                               ; preds = %70
  %85 = load i32, i32* @DCON_SOURCE_DCON, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %89 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %91 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %94 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @acpi_gbl_FADT, i32 0, i32 0), align 4
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @IRQF_SHARED, align 4
  %98 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %99 = call i64 @request_irq(i32 %96, i32* @dcon_interrupt, i32 %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.dcon_priv* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %86
  %102 = load i32, i32* %4, align 4
  %103 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  store i32 1, i32* %2, align 4
  br label %105

104:                                              ; preds = %86
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %101, %50
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @gpiod_add_lookup_table(%struct.TYPE_6__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.dcon_gpio*) #1

declare dso_local i32 @devm_gpiod_get(i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @dcon_clear_irq(...) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i64 @request_irq(i32, i32*, i32, i8*, %struct.dcon_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
