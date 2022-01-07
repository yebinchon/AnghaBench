; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_isr_fusion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_isr_fusion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_irq_context = type { i32, i64, %struct.megasas_instance* }
%struct.megasas_instance = type { %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.megasas_instance*)* }

@IRQ_NONE = common dso_local global i32 0, align 4
@MEGASAS_FUSION_IN_RESET = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @megasas_isr_fusion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_isr_fusion(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.megasas_irq_context*, align 8
  %7 = alloca %struct.megasas_instance*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.megasas_irq_context*
  store %struct.megasas_irq_context* %10, %struct.megasas_irq_context** %6, align 8
  %11 = load %struct.megasas_irq_context*, %struct.megasas_irq_context** %6, align 8
  %12 = getelementptr inbounds %struct.megasas_irq_context, %struct.megasas_irq_context* %11, i32 0, i32 2
  %13 = load %struct.megasas_instance*, %struct.megasas_instance** %12, align 8
  store %struct.megasas_instance* %13, %struct.megasas_instance** %7, align 8
  %14 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %15 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %67

20:                                               ; preds = %2
  %21 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %22 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %20
  %26 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %27 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.megasas_instance*)*, i32 (%struct.megasas_instance*)** %29, align 8
  %31 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %32 = call i32 %30(%struct.megasas_instance* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @IRQ_NONE, align 4
  store i32 %36, i32* %3, align 4
  br label %67

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %20
  %39 = load i32, i32* @MEGASAS_FUSION_IN_RESET, align 4
  %40 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %41 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %40, i32 0, i32 1
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %46 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (%struct.megasas_instance*)*, i32 (%struct.megasas_instance*)** %48, align 8
  %50 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %51 = call i32 %49(%struct.megasas_instance* %50)
  %52 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %52, i32* %3, align 4
  br label %67

53:                                               ; preds = %38
  %54 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %55 = load %struct.megasas_irq_context*, %struct.megasas_irq_context** %6, align 8
  %56 = getelementptr inbounds %struct.megasas_irq_context, %struct.megasas_irq_context* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.megasas_irq_context*, %struct.megasas_irq_context** %6, align 8
  %59 = call i64 @complete_cmd_fusion(%struct.megasas_instance* %54, i32 %57, %struct.megasas_irq_context* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @IRQ_HANDLED, align 4
  br label %65

63:                                               ; preds = %53
  %64 = load i32, i32* @IRQ_NONE, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %44, %35, %18
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @complete_cmd_fusion(%struct.megasas_instance*, i32, %struct.megasas_irq_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
