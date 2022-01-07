; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.das1800_private* }
%struct.das1800_private = type { %struct.comedi_isadma* }
%struct.comedi_isadma = type { %struct.comedi_isadma_desc* }
%struct.comedi_isadma_desc = type { i64 }
%struct.comedi_subdevice = type { i32 }

@DAS1800_STATUS = common dso_local global i64 0, align 8
@DAS1800_CONTROL_B = common dso_local global i64 0, align 8
@DAS1800_CONTROL_A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @das1800_ai_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das1800_ai_cancel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.das1800_private*, align 8
  %6 = alloca %struct.comedi_isadma*, align 8
  %7 = alloca %struct.comedi_isadma_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 1
  %11 = load %struct.das1800_private*, %struct.das1800_private** %10, align 8
  store %struct.das1800_private* %11, %struct.das1800_private** %5, align 8
  %12 = load %struct.das1800_private*, %struct.das1800_private** %5, align 8
  %13 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %12, i32 0, i32 0
  %14 = load %struct.comedi_isadma*, %struct.comedi_isadma** %13, align 8
  store %struct.comedi_isadma* %14, %struct.comedi_isadma** %6, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DAS1800_STATUS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @outb(i32 0, i64 %19)
  %21 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DAS1800_CONTROL_B, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outb(i32 0, i64 %25)
  %27 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DAS1800_CONTROL_A, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @outb(i32 0, i64 %31)
  %33 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %34 = icmp ne %struct.comedi_isadma* %33, null
  br i1 %34, label %35, label %60

35:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %56, %35
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %41 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %40, i32 0, i32 0
  %42 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %42, i64 %44
  store %struct.comedi_isadma_desc* %45, %struct.comedi_isadma_desc** %7, align 8
  %46 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %7, align 8
  %47 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %7, align 8
  %52 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @comedi_isadma_disable(i64 %53)
  br label %55

55:                                               ; preds = %50, %39
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %36

59:                                               ; preds = %36
  br label %60

60:                                               ; preds = %59, %2
  ret i32 0
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @comedi_isadma_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
