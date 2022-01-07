; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_fcx.c_calc_dcw_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_fcx.c_calc_dcw_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tccb = type { i32* }
%struct.dcw = type { i32, i64, i64 }

@DCW_FLAGS_CC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tccb*)* @calc_dcw_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_dcw_count(%struct.tccb* %0) #0 {
  %2 = alloca %struct.tccb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dcw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.tccb* %0, %struct.tccb** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.tccb*, %struct.tccb** %2, align 8
  %8 = call i64 @tca_size(%struct.tccb* %7)
  store i64 %8, i64* %6, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %36, %1
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %9
  %15 = load %struct.tccb*, %struct.tccb** %2, align 8
  %16 = getelementptr inbounds %struct.tccb, %struct.tccb* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = bitcast i32* %20 to %struct.dcw*
  store %struct.dcw* %21, %struct.dcw** %4, align 8
  %22 = load %struct.dcw*, %struct.dcw** %4, align 8
  %23 = getelementptr inbounds %struct.dcw, %struct.dcw* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  %29 = load %struct.dcw*, %struct.dcw** %4, align 8
  %30 = getelementptr inbounds %struct.dcw, %struct.dcw* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @DCW_FLAGS_CC, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %14
  br label %47

36:                                               ; preds = %14
  %37 = load %struct.dcw*, %struct.dcw** %4, align 8
  %38 = getelementptr inbounds %struct.dcw, %struct.dcw* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i64 @ALIGN(i32 %40, i32 4)
  %42 = add i64 24, %41
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %9

47:                                               ; preds = %35, %9
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i64 @tca_size(%struct.tccb*) #1

declare dso_local i64 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
