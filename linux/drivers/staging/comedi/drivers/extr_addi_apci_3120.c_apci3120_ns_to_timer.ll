; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_ns_to_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_ns_to_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.apci3120_private* }
%struct.apci3120_private = type { i32 }

@CMDF_ROUND_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32, i32)* @apci3120_ns_to_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci3120_ns_to_timer(%struct.comedi_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.apci3120_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.apci3120_private*, %struct.apci3120_private** %14, align 8
  store %struct.apci3120_private* %15, %struct.apci3120_private** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 10, i32 1000
  store i32 %19, i32* %10, align 4
  %20 = load %struct.apci3120_private*, %struct.apci3120_private** %9, align 8
  %21 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %10, align 4
  %24 = mul i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @CMDF_ROUND_MASK, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %37 [
    i32 128, label %28
    i32 130, label %32
    i32 129, label %36
  ]

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @DIV_ROUND_UP(i32 %29, i32 %30)
  store i32 %31, i32* %12, align 4
  br label %41

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %11, align 4
  %35 = udiv i32 %33, %34
  store i32 %35, i32* %12, align 4
  br label %41

36:                                               ; preds = %4
  br label %37

37:                                               ; preds = %4, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @DIV_ROUND_CLOSEST(i32 %38, i32 %39)
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %37, %32, %28
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* %12, align 4
  %46 = icmp ugt i32 %45, 16777215
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 16777215, i32* %12, align 4
  br label %48

48:                                               ; preds = %47, %44
  br label %54

49:                                               ; preds = %41
  %50 = load i32, i32* %12, align 4
  %51 = icmp ugt i32 %50, 65535
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 65535, i32* %12, align 4
  br label %53

53:                                               ; preds = %52, %49
  br label %54

54:                                               ; preds = %53, %48
  %55 = load i32, i32* %12, align 4
  %56 = icmp ult i32 %55, 2
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 2, i32* %12, align 4
  br label %58

58:                                               ; preds = %57, %54
  %59 = load i32, i32* %12, align 4
  ret i32 %59
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
