; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8254.c_comedi_8254_ns_to_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8254.c_comedi_8254_ns_to_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_8254 = type { i32, i32 }

@CMDF_ROUND_MASK = common dso_local global i32 0, align 4
@I8254_MAX_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comedi_8254_ns_to_timer(%struct.comedi_8254* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_8254*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_8254* %0, %struct.comedi_8254** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @CMDF_ROUND_MASK, align 4
  %10 = and i32 %8, %9
  switch i32 %10, label %11 [
    i32 129, label %12
    i32 128, label %19
    i32 130, label %26
  ]

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %3, %11
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %16 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DIV_ROUND_CLOSEST(i32 %14, i32 %17)
  store i32 %18, i32* %7, align 4
  br label %33

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %23 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @DIV_ROUND_UP(i32 %21, i32 %24)
  store i32 %25, i32* %7, align 4
  br label %33

26:                                               ; preds = %3
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %30 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = udiv i32 %28, %31
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %26, %19, %12
  %34 = load i32, i32* %7, align 4
  %35 = icmp ult i32 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 2, i32* %7, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @I8254_MAX_COUNT, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @I8254_MAX_COUNT, align 4
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %46 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul i32 %44, %47
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %52 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  ret void
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
