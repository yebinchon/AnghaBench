; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_6527.c_ni6527_set_edge_detection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_6527.c_ni6527_set_edge_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32, i32)* @ni6527_set_edge_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni6527_set_edge_detection(%struct.comedi_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %8, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %81, %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %19, label %84

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 255
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %74

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %25, 255
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %23
  %29 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @NI6527_RISING_EDGE_REG(i32 %32)
  %34 = add nsw i64 %31, %33
  %35 = call i32 @readb(i64 %34)
  %36 = load i32, i32* %6, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %37, 255
  %39 = and i32 %35, %38
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @NI6527_FALLING_EDGE_REG(i32 %45)
  %47 = add nsw i64 %44, %46
  %48 = call i32 @readb(i64 %47)
  %49 = load i32, i32* %6, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %50, 255
  %52 = and i32 %48, %51
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %28, %23
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, 255
  %58 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %59 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i64 @NI6527_RISING_EDGE_REG(i32 %61)
  %63 = add nsw i64 %60, %62
  %64 = call i32 @writeb(i32 %57, i64 %63)
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, 255
  %67 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i64 @NI6527_FALLING_EDGE_REG(i32 %70)
  %72 = add nsw i64 %69, %71
  %73 = call i32 @writeb(i32 %66, i64 %72)
  br label %74

74:                                               ; preds = %55, %19
  %75 = load i32, i32* %7, align 4
  %76 = lshr i32 %75, 8
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = lshr i32 %77, 8
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %6, align 4
  %80 = lshr i32 %79, 8
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %9, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %16

84:                                               ; preds = %16
  ret void
}

declare dso_local i32 @readb(i64) #1

declare dso_local i64 @NI6527_RISING_EDGE_REG(i32) #1

declare dso_local i64 @NI6527_FALLING_EDGE_REG(i32) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
