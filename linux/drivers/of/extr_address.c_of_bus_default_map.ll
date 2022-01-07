; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_address.c_of_bus_default_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_address.c_of_bus_default_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"default map, cp=%llx, s=%llx, da=%llx\0A\00", align 1
@OF_BAD_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32, i32, i32)* @of_bus_default_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @of_bus_default_map(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @of_read_number(i32* %15, i32 %16)
  store i64 %17, i64* %12, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @of_read_number(i32* %24, i32 %25)
  store i64 %26, i64* %13, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @of_read_number(i32* %27, i32 %28)
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* %14, align 8
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %31, i64 %32)
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %5
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %13, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sge i64 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37, %5
  %44 = load i64, i64* @OF_BAD_ADDR, align 8
  store i64 %44, i64* %6, align 8
  br label %49

45:                                               ; preds = %37
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* %12, align 8
  %48 = sub nsw i64 %46, %47
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %45, %43
  %50 = load i64, i64* %6, align 8
  ret i64 %50
}

declare dso_local i64 @of_read_number(i32*, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
