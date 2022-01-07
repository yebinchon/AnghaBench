; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_get_gate_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_get_gate_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ni_gpct*, i32, i32*)* @ni_tio_get_gate_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_tio_get_gate_src(%struct.ni_gpct* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_gpct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %67 [
    i32 0, label %11
    i32 1, label %39
  ]

11:                                               ; preds = %3
  %12 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %13 = call i32 @ni_tio_get_gate_val(%struct.ni_gpct* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %15 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %20 [
    i32 129, label %19
    i32 128, label %19
    i32 130, label %24
  ]

19:                                               ; preds = %11, %11
  br label %20

20:                                               ; preds = %11, %19
  %21 = load i32, i32* %8, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @ni_m_gate_to_generic_gate(i32 %21, i32* %22)
  store i32 %23, i32* %9, align 4
  br label %28

24:                                               ; preds = %11
  %25 = load i32, i32* %8, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @ni_660x_gate_to_generic_gate(i32 %25, i32* %26)
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %71

33:                                               ; preds = %28
  %34 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %35 = call i32 @ni_tio_get_gate_mode(%struct.ni_gpct* %34)
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %70

39:                                               ; preds = %3
  %40 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %41 = call i32 @ni_tio_get_gate2_val(%struct.ni_gpct* %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %43 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %48 [
    i32 129, label %47
    i32 128, label %47
    i32 130, label %52
  ]

47:                                               ; preds = %39, %39
  br label %48

48:                                               ; preds = %39, %47
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @ni_m_gate2_to_generic_gate(i32 %49, i32* %50)
  store i32 %51, i32* %9, align 4
  br label %56

52:                                               ; preds = %39
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @ni_660x_gate2_to_generic_gate(i32 %53, i32* %54)
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %71

61:                                               ; preds = %56
  %62 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %63 = call i32 @ni_tio_get_gate2_mode(%struct.ni_gpct* %62)
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %63
  store i32 %66, i32* %64, align 4
  br label %70

67:                                               ; preds = %3
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %71

70:                                               ; preds = %61, %33
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %67, %59, %31
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @ni_tio_get_gate_val(%struct.ni_gpct*) #1

declare dso_local i32 @ni_m_gate_to_generic_gate(i32, i32*) #1

declare dso_local i32 @ni_660x_gate_to_generic_gate(i32, i32*) #1

declare dso_local i32 @ni_tio_get_gate_mode(%struct.ni_gpct*) #1

declare dso_local i32 @ni_tio_get_gate2_val(%struct.ni_gpct*) #1

declare dso_local i32 @ni_m_gate2_to_generic_gate(i32, i32*) #1

declare dso_local i32 @ni_660x_gate2_to_generic_gate(i32, i32*) #1

declare dso_local i32 @ni_tio_get_gate2_mode(%struct.ni_gpct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
