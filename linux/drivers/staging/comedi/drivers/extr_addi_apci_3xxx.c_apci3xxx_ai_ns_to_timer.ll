; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3xxx.c_apci3xxx_ai_ns_to_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3xxx.c_apci3xxx_ai_ns_to_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.apci3xxx_private*, %struct.apci3xxx_boardinfo* }
%struct.apci3xxx_private = type { i32, i32 }
%struct.apci3xxx_boardinfo = type { i32 }

@CMDF_ROUND_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32*, i32)* @apci3xxx_ai_ns_to_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci3xxx_ai_ns_to_timer(%struct.comedi_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.apci3xxx_boardinfo*, align 8
  %9 = alloca %struct.apci3xxx_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load %struct.apci3xxx_boardinfo*, %struct.apci3xxx_boardinfo** %14, align 8
  store %struct.apci3xxx_boardinfo* %15, %struct.apci3xxx_boardinfo** %8, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load %struct.apci3xxx_private*, %struct.apci3xxx_private** %17, align 8
  store %struct.apci3xxx_private* %18, %struct.apci3xxx_private** %9, align 8
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %71, %3
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %74

22:                                               ; preds = %19
  %23 = load %struct.apci3xxx_boardinfo*, %struct.apci3xxx_boardinfo** %8, align 8
  %24 = getelementptr inbounds %struct.apci3xxx_boardinfo, %struct.apci3xxx_boardinfo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %12, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %71

31:                                               ; preds = %22
  %32 = load i32, i32* %12, align 4
  switch i32 %32, label %36 [
    i32 0, label %33
    i32 1, label %34
    i32 2, label %35
  ]

33:                                               ; preds = %31
  store i32 1, i32* %10, align 4
  br label %36

34:                                               ; preds = %31
  store i32 1000, i32* %10, align 4
  br label %36

35:                                               ; preds = %31
  store i32 1000000, i32* %10, align 4
  br label %36

36:                                               ; preds = %31, %35, %34, %33
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @CMDF_ROUND_MASK, align 4
  %39 = and i32 %37, %38
  switch i32 %39, label %41 [
    i32 129, label %40
    i32 130, label %46
    i32 128, label %51
  ]

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %36, %40
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @DIV_ROUND_CLOSEST(i32 %43, i32 %44)
  store i32 %45, i32* %11, align 4
  br label %56

46:                                               ; preds = %36
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = udiv i32 %48, %49
  store i32 %50, i32* %11, align 4
  br label %56

51:                                               ; preds = %36
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @DIV_ROUND_UP(i32 %53, i32 %54)
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %51, %46, %41
  %57 = load i32, i32* %11, align 4
  %58 = icmp ult i32 %57, 65536
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.apci3xxx_private*, %struct.apci3xxx_private** %9, align 8
  %62 = getelementptr inbounds %struct.apci3xxx_private, %struct.apci3xxx_private* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.apci3xxx_private*, %struct.apci3xxx_private** %9, align 8
  %65 = getelementptr inbounds %struct.apci3xxx_private, %struct.apci3xxx_private* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = mul i32 %66, %67
  %69 = load i32*, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  store i32 0, i32* %4, align 4
  br label %77

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70, %30
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %19

74:                                               ; preds = %19
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %59
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
