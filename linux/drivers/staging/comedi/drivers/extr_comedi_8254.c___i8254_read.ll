; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8254.c___i8254_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8254.c___i8254_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_8254 = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_8254*, i32)* @__i8254_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__i8254_read(%struct.comedi_8254* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_8254*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.comedi_8254* %0, %struct.comedi_8254** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.comedi_8254*, %struct.comedi_8254** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = mul i32 %7, %10
  %12 = load %struct.comedi_8254*, %struct.comedi_8254** %3, align 8
  %13 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %11, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.comedi_8254*, %struct.comedi_8254** %3, align 8
  %17 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %19 [
    i32 128, label %20
    i32 130, label %40
    i32 129, label %60
  ]

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %2, %19
  %21 = load %struct.comedi_8254*, %struct.comedi_8254** %3, align 8
  %22 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.comedi_8254*, %struct.comedi_8254** %3, align 8
  %27 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %28, %29
  %31 = call i32 @readb(i32 %30)
  store i32 %31, i32* %6, align 4
  br label %39

32:                                               ; preds = %20
  %33 = load %struct.comedi_8254*, %struct.comedi_8254** %3, align 8
  %34 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = add i32 %35, %36
  %38 = call i32 @inb(i32 %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %32, %25
  br label %80

40:                                               ; preds = %2
  %41 = load %struct.comedi_8254*, %struct.comedi_8254** %3, align 8
  %42 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.comedi_8254*, %struct.comedi_8254** %3, align 8
  %47 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = add i32 %48, %49
  %51 = call i32 @readw(i32 %50)
  store i32 %51, i32* %6, align 4
  br label %59

52:                                               ; preds = %40
  %53 = load %struct.comedi_8254*, %struct.comedi_8254** %3, align 8
  %54 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %5, align 4
  %57 = add i32 %55, %56
  %58 = call i32 @inw(i32 %57)
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %52, %45
  br label %80

60:                                               ; preds = %2
  %61 = load %struct.comedi_8254*, %struct.comedi_8254** %3, align 8
  %62 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.comedi_8254*, %struct.comedi_8254** %3, align 8
  %67 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %5, align 4
  %70 = add i32 %68, %69
  %71 = call i32 @readl(i32 %70)
  store i32 %71, i32* %6, align 4
  br label %79

72:                                               ; preds = %60
  %73 = load %struct.comedi_8254*, %struct.comedi_8254** %3, align 8
  %74 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %5, align 4
  %77 = add i32 %75, %76
  %78 = call i32 @inl(i32 %77)
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %72, %65
  br label %80

80:                                               ; preds = %79, %59, %39
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, 255
  ret i32 %82
}

declare dso_local i32 @readb(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @readw(i32) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @inl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
