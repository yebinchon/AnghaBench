; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_property.c_of_prop_next_u32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_property.c_of_prop_next_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @of_prop_next_u32(%struct.property* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.property*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store %struct.property* %0, %struct.property** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %6, align 8
  store i8* %9, i8** %8, align 8
  %10 = load %struct.property*, %struct.property** %5, align 8
  %11 = icmp ne %struct.property* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %40

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load %struct.property*, %struct.property** %5, align 8
  %18 = getelementptr inbounds %struct.property, %struct.property* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %8, align 8
  br label %35

20:                                               ; preds = %13
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr i8, i8* %21, i64 1
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.property*, %struct.property** %5, align 8
  %25 = getelementptr inbounds %struct.property, %struct.property* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.property*, %struct.property** %5, align 8
  %28 = getelementptr inbounds %struct.property, %struct.property* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr i8, i8* %26, i64 %30
  %32 = icmp uge i8* %23, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  store i8* null, i8** %4, align 8
  br label %40

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34, %16
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @be32_to_cpup(i8* %36)
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i8*, i8** %8, align 8
  store i8* %39, i8** %4, align 8
  br label %40

40:                                               ; preds = %35, %33, %12
  %41 = load i8*, i8** %4, align 8
  ret i8* %41
}

declare dso_local i32 @be32_to_cpup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
