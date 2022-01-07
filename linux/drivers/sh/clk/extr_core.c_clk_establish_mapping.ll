; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/clk/extr_core.c_clk_establish_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/clk/extr_core.c_clk_establish_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mapping = type { i64, i64, i32, i32 }
%struct.clk = type { %struct.clk_mapping*, i64, i64, i32 }

@dummy_mapping = common dso_local global %struct.clk_mapping zeroinitializer, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*)* @clk_establish_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_establish_mapping(%struct.clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.clk_mapping*, align 8
  %5 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  %6 = load %struct.clk*, %struct.clk** %3, align 8
  %7 = getelementptr inbounds %struct.clk, %struct.clk* %6, i32 0, i32 0
  %8 = load %struct.clk_mapping*, %struct.clk_mapping** %7, align 8
  store %struct.clk_mapping* %8, %struct.clk_mapping** %4, align 8
  %9 = load %struct.clk_mapping*, %struct.clk_mapping** %4, align 8
  %10 = icmp ne %struct.clk_mapping* %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %1
  %12 = load %struct.clk*, %struct.clk** %3, align 8
  %13 = getelementptr inbounds %struct.clk, %struct.clk* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load %struct.clk*, %struct.clk** %3, align 8
  %18 = getelementptr inbounds %struct.clk, %struct.clk* %17, i32 0, i32 0
  store %struct.clk_mapping* @dummy_mapping, %struct.clk_mapping** %18, align 8
  br label %79

19:                                               ; preds = %11
  %20 = load %struct.clk*, %struct.clk** %3, align 8
  %21 = call %struct.clk* @lookup_root_clock(%struct.clk* %20)
  store %struct.clk* %21, %struct.clk** %5, align 8
  %22 = load %struct.clk*, %struct.clk** %5, align 8
  %23 = getelementptr inbounds %struct.clk, %struct.clk* %22, i32 0, i32 0
  %24 = load %struct.clk_mapping*, %struct.clk_mapping** %23, align 8
  store %struct.clk_mapping* %24, %struct.clk_mapping** %4, align 8
  %25 = load %struct.clk_mapping*, %struct.clk_mapping** %4, align 8
  %26 = icmp ne %struct.clk_mapping* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  br label %30

30:                                               ; preds = %19, %1
  %31 = load %struct.clk_mapping*, %struct.clk_mapping** %4, align 8
  %32 = getelementptr inbounds %struct.clk_mapping, %struct.clk_mapping* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %65, label %35

35:                                               ; preds = %30
  %36 = load %struct.clk_mapping*, %struct.clk_mapping** %4, align 8
  %37 = getelementptr inbounds %struct.clk_mapping, %struct.clk_mapping* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %35
  %41 = load %struct.clk_mapping*, %struct.clk_mapping** %4, align 8
  %42 = getelementptr inbounds %struct.clk_mapping, %struct.clk_mapping* %41, i32 0, i32 2
  %43 = call i32 @kref_init(i32* %42)
  %44 = load %struct.clk_mapping*, %struct.clk_mapping** %4, align 8
  %45 = getelementptr inbounds %struct.clk_mapping, %struct.clk_mapping* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.clk_mapping*, %struct.clk_mapping** %4, align 8
  %48 = getelementptr inbounds %struct.clk_mapping, %struct.clk_mapping* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ioremap_nocache(i64 %46, i32 %49)
  %51 = load %struct.clk_mapping*, %struct.clk_mapping** %4, align 8
  %52 = getelementptr inbounds %struct.clk_mapping, %struct.clk_mapping* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.clk_mapping*, %struct.clk_mapping** %4, align 8
  %54 = getelementptr inbounds %struct.clk_mapping, %struct.clk_mapping* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %40
  %62 = load i32, i32* @ENXIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %100

64:                                               ; preds = %40
  br label %75

65:                                               ; preds = %35, %30
  %66 = load %struct.clk_mapping*, %struct.clk_mapping** %4, align 8
  %67 = getelementptr inbounds %struct.clk_mapping, %struct.clk_mapping* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.clk_mapping*, %struct.clk_mapping** %4, align 8
  %72 = getelementptr inbounds %struct.clk_mapping, %struct.clk_mapping* %71, i32 0, i32 2
  %73 = call i32 @kref_get(i32* %72)
  br label %74

74:                                               ; preds = %70, %65
  br label %75

75:                                               ; preds = %74, %64
  %76 = load %struct.clk_mapping*, %struct.clk_mapping** %4, align 8
  %77 = load %struct.clk*, %struct.clk** %3, align 8
  %78 = getelementptr inbounds %struct.clk, %struct.clk* %77, i32 0, i32 0
  store %struct.clk_mapping* %76, %struct.clk_mapping** %78, align 8
  br label %79

79:                                               ; preds = %75, %16
  %80 = load %struct.clk*, %struct.clk** %3, align 8
  %81 = getelementptr inbounds %struct.clk, %struct.clk* %80, i32 0, i32 0
  %82 = load %struct.clk_mapping*, %struct.clk_mapping** %81, align 8
  %83 = getelementptr inbounds %struct.clk_mapping, %struct.clk_mapping* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.clk*, %struct.clk** %3, align 8
  %86 = getelementptr inbounds %struct.clk, %struct.clk* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  %87 = load %struct.clk*, %struct.clk** %3, align 8
  %88 = getelementptr inbounds %struct.clk, %struct.clk* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.clk*, %struct.clk** %3, align 8
  %91 = getelementptr inbounds %struct.clk, %struct.clk* %90, i32 0, i32 0
  %92 = load %struct.clk_mapping*, %struct.clk_mapping** %91, align 8
  %93 = getelementptr inbounds %struct.clk_mapping, %struct.clk_mapping* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %89, %94
  %96 = load %struct.clk*, %struct.clk** %3, align 8
  %97 = getelementptr inbounds %struct.clk, %struct.clk* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, %95
  store i64 %99, i64* %97, align 8
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %79, %61
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.clk* @lookup_root_clock(%struct.clk*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i64 @ioremap_nocache(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
