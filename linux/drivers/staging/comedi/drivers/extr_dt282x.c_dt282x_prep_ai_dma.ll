; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_prep_ai_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_prep_ai_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.dt282x_private* }
%struct.dt282x_private = type { i32, i32, %struct.comedi_isadma* }
%struct.comedi_isadma = type { %struct.comedi_isadma_desc* }
%struct.comedi_isadma_desc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32)* @dt282x_prep_ai_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt282x_prep_ai_dma(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dt282x_private*, align 8
  %9 = alloca %struct.comedi_isadma*, align 8
  %10 = alloca %struct.comedi_isadma_desc*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.dt282x_private*, %struct.dt282x_private** %12, align 8
  store %struct.dt282x_private* %13, %struct.dt282x_private** %8, align 8
  %14 = load %struct.dt282x_private*, %struct.dt282x_private** %8, align 8
  %15 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %14, i32 0, i32 2
  %16 = load %struct.comedi_isadma*, %struct.comedi_isadma** %15, align 8
  store %struct.comedi_isadma* %16, %struct.comedi_isadma** %9, align 8
  %17 = load %struct.comedi_isadma*, %struct.comedi_isadma** %9, align 8
  %18 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %17, i32 0, i32 0
  %19 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %19, i64 %21
  store %struct.comedi_isadma_desc* %22, %struct.comedi_isadma_desc** %10, align 8
  %23 = load %struct.dt282x_private*, %struct.dt282x_private** %8, align 8
  %24 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %65

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %10, align 8
  %33 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.dt282x_private*, %struct.dt282x_private** %8, align 8
  %38 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %39, 2
  %41 = icmp sgt i32 %36, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.dt282x_private*, %struct.dt282x_private** %8, align 8
  %44 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %45, 2
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %42, %35
  %48 = load i32, i32* %7, align 4
  %49 = sdiv i32 %48, 2
  %50 = load %struct.dt282x_private*, %struct.dt282x_private** %8, align 8
  %51 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %10, align 8
  %56 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %10, align 8
  %58 = load %struct.dt282x_private*, %struct.dt282x_private** %8, align 8
  %59 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @comedi_isadma_set_mode(%struct.comedi_isadma_desc* %57, i32 %60)
  %62 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %10, align 8
  %63 = call i32 @comedi_isadma_program(%struct.comedi_isadma_desc* %62)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %47, %27
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @comedi_isadma_set_mode(%struct.comedi_isadma_desc*, i32) #1

declare dso_local i32 @comedi_isadma_program(%struct.comedi_isadma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
