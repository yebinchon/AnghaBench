; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8254.c___i8254_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8254.c___i8254_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_8254 = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_8254*, i32, i32)* @__i8254_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__i8254_write(%struct.comedi_8254* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_8254*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_8254* %0, %struct.comedi_8254** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %10 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul i32 %8, %11
  %13 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %12, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %18 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %20 [
    i32 128, label %21
    i32 130, label %43
    i32 129, label %65
  ]

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %3, %20
  %22 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %23 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %29 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add i32 %30, %31
  %33 = call i32 @writeb(i32 %27, i32 %32)
  br label %42

34:                                               ; preds = %21
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %37 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add i32 %38, %39
  %41 = call i32 @outb(i32 %35, i32 %40)
  br label %42

42:                                               ; preds = %34, %26
  br label %87

43:                                               ; preds = %3
  %44 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %45 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %51 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = add i32 %52, %53
  %55 = call i32 @writew(i32 %49, i32 %54)
  br label %64

56:                                               ; preds = %43
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %59 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = add i32 %60, %61
  %63 = call i32 @outw(i32 %57, i32 %62)
  br label %64

64:                                               ; preds = %56, %48
  br label %87

65:                                               ; preds = %3
  %66 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %67 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %73 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = add i32 %74, %75
  %77 = call i32 @writel(i32 %71, i32 %76)
  br label %86

78:                                               ; preds = %65
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %81 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = add i32 %82, %83
  %85 = call i32 @outl(i32 %79, i32 %84)
  br label %86

86:                                               ; preds = %78, %70
  br label %87

87:                                               ; preds = %86, %64, %42
  ret void
}

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @outl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
