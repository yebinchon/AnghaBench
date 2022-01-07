; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-drv.c_c67x00_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-drv.c_c67x00_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_device = type { %struct.TYPE_2__*, %struct.c67x00_sie* }
%struct.TYPE_2__ = type { i32 }
%struct.c67x00_sie = type { i32 (%struct.c67x00_sie*, i32, i32)* }

@IRQ_NONE = common dso_local global i32 0, align 4
@C67X00_SIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Not all interrupts handled! status = 0x%04x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @c67x00_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c67x00_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.c67x00_device*, align 8
  %7 = alloca %struct.c67x00_sie*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.c67x00_device*
  store %struct.c67x00_device* %13, %struct.c67x00_device** %6, align 8
  store i32 8, i32* %11, align 4
  %14 = load %struct.c67x00_device*, %struct.c67x00_device** %6, align 8
  %15 = call i32 @c67x00_ll_hpi_status(%struct.c67x00_device* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %86

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %71, %20
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %11, align 4
  %27 = icmp sge i32 %25, 0
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %30, label %74

30:                                               ; preds = %28
  %31 = load %struct.c67x00_device*, %struct.c67x00_device** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @c67x00_ll_irq(%struct.c67x00_device* %31, i32 %32)
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %68, %30
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @C67X00_SIES, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %71

38:                                               ; preds = %34
  %39 = load %struct.c67x00_device*, %struct.c67x00_device** %6, align 8
  %40 = getelementptr inbounds %struct.c67x00_device, %struct.c67x00_device* %39, i32 0, i32 1
  %41 = load %struct.c67x00_sie*, %struct.c67x00_sie** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.c67x00_sie, %struct.c67x00_sie* %41, i64 %43
  store %struct.c67x00_sie* %44, %struct.c67x00_sie** %7, align 8
  store i32 0, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @SIEMSG_FLG(i32 %46)
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = load %struct.c67x00_device*, %struct.c67x00_device** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @c67x00_ll_fetch_siemsg(%struct.c67x00_device* %51, i32 %52)
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %38
  %55 = load %struct.c67x00_sie*, %struct.c67x00_sie** %7, align 8
  %56 = getelementptr inbounds %struct.c67x00_sie, %struct.c67x00_sie* %55, i32 0, i32 0
  %57 = load i32 (%struct.c67x00_sie*, i32, i32)*, i32 (%struct.c67x00_sie*, i32, i32)** %56, align 8
  %58 = icmp ne i32 (%struct.c67x00_sie*, i32, i32)* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.c67x00_sie*, %struct.c67x00_sie** %7, align 8
  %61 = getelementptr inbounds %struct.c67x00_sie, %struct.c67x00_sie* %60, i32 0, i32 0
  %62 = load i32 (%struct.c67x00_sie*, i32, i32)*, i32 (%struct.c67x00_sie*, i32, i32)** %61, align 8
  %63 = load %struct.c67x00_sie*, %struct.c67x00_sie** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 %62(%struct.c67x00_sie* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %59, %54
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %34

71:                                               ; preds = %34
  %72 = load %struct.c67x00_device*, %struct.c67x00_device** %6, align 8
  %73 = call i32 @c67x00_ll_hpi_status(%struct.c67x00_device* %72)
  store i32 %73, i32* %9, align 4
  br label %21

74:                                               ; preds = %28
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.c67x00_device*, %struct.c67x00_device** %6, align 8
  %79 = getelementptr inbounds %struct.c67x00_device, %struct.c67x00_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @dev_warn(i32* %81, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %77, %74
  %85 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %18
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @c67x00_ll_hpi_status(%struct.c67x00_device*) #1

declare dso_local i32 @c67x00_ll_irq(%struct.c67x00_device*, i32) #1

declare dso_local i32 @SIEMSG_FLG(i32) #1

declare dso_local i32 @c67x00_ll_fetch_siemsg(%struct.c67x00_device*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
