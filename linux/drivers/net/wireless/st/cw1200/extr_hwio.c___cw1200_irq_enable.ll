; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_hwio.c___cw1200_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_hwio.c___cw1200_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i64 }

@HIF_8601_SILICON = common dso_local global i64 0, align 8
@ST90TDS_CONFIG_REG_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Can't read config register.\0A\00", align 1
@ST90TDS_CONF_IRQ_RDY_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Can't write config register.\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Can't read control register.\0A\00", align 1
@ST90TDS_CONT_IRQ_RDY_ENABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Can't write control register.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cw1200_irq_enable(%struct.cw1200_common* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i64, i64* @HIF_8601_SILICON, align 8
  %10 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %11 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %2
  %15 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %16 = load i32, i32* @ST90TDS_CONFIG_REG_ID, align 4
  %17 = call i32 @__cw1200_reg_read_32(%struct.cw1200_common* %15, i32 %16, i32* %6)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %79

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* @ST90TDS_CONF_IRQ_RDY_ENABLE, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %35

30:                                               ; preds = %23
  %31 = load i32, i32* @ST90TDS_CONF_IRQ_RDY_ENABLE, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %37 = load i32, i32* @ST90TDS_CONFIG_REG_ID, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @__cw1200_reg_write_32(%struct.cw1200_common* %36, i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %79

45:                                               ; preds = %35
  br label %78

46:                                               ; preds = %2
  %47 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %48 = load i32, i32* @ST90TDS_CONFIG_REG_ID, align 4
  %49 = call i32 @__cw1200_reg_read_16(%struct.cw1200_common* %47, i32 %48, i32* %7)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %79

55:                                               ; preds = %46
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* @ST90TDS_CONT_IRQ_RDY_ENABLE, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %67

62:                                               ; preds = %55
  %63 = load i32, i32* @ST90TDS_CONT_IRQ_RDY_ENABLE, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %62, %58
  %68 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %69 = load i32, i32* @ST90TDS_CONFIG_REG_ID, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @__cw1200_reg_write_16(%struct.cw1200_common* %68, i32 %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %79

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %45
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %74, %52, %42, %20
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @__cw1200_reg_read_32(%struct.cw1200_common*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @__cw1200_reg_write_32(%struct.cw1200_common*, i32, i32) #1

declare dso_local i32 @__cw1200_reg_read_16(%struct.cw1200_common*, i32, i32*) #1

declare dso_local i32 @__cw1200_reg_write_16(%struct.cw1200_common*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
