; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_uc1611.c_set_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_uc1611.c_set_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @set_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_var(%struct.fbtft_par* %0) #0 {
  %2 = alloca %struct.fbtft_par*, align 8
  store %struct.fbtft_par* %0, %struct.fbtft_par** %2, align 8
  %3 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %4 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %3, i32 0, i32 0
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %9 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %8, i32 0, i32 0
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %15 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32 8, i32* %19, align 8
  %20 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %21 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %27 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 8, i32* %31, align 8
  %32 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %33 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %39 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %38, i32 0, i32 0
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i32 8, i32* %43, align 8
  %44 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %45 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %44, i32 0, i32 0
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %51 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %57 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %56, i32 0, i32 0
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %77 [
    i32 90, label %62
    i32 180, label %67
    i32 270, label %72
  ]

62:                                               ; preds = %1
  %63 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %64 = call i32 @write_reg(%struct.fbtft_par* %63, i32 139)
  %65 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %66 = call i32 @write_reg(%struct.fbtft_par* %65, i32 192)
  br label %82

67:                                               ; preds = %1
  %68 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %69 = call i32 @write_reg(%struct.fbtft_par* %68, i32 137)
  %70 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %71 = call i32 @write_reg(%struct.fbtft_par* %70, i32 196)
  br label %82

72:                                               ; preds = %1
  %73 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %74 = call i32 @write_reg(%struct.fbtft_par* %73, i32 139)
  %75 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %76 = call i32 @write_reg(%struct.fbtft_par* %75, i32 198)
  br label %82

77:                                               ; preds = %1
  %78 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %79 = call i32 @write_reg(%struct.fbtft_par* %78, i32 137)
  %80 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %81 = call i32 @write_reg(%struct.fbtft_par* %80, i32 194)
  br label %82

82:                                               ; preds = %77, %72, %67, %62
  ret i32 0
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
