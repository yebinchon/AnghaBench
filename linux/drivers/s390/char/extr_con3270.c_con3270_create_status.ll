; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3270.c_con3270_create_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3270.c_con3270_create_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.con3270 = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@con3270_create_status.blueprint = internal constant [33 x i8] c"\81\00\00\80\84\82\85\86console view\83\00\00\00Running\80\84", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.con3270*)* @con3270_create_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @con3270_create_status(%struct.con3270* %0) #0 {
  %2 = alloca %struct.con3270*, align 8
  store %struct.con3270* %0, %struct.con3270** %2, align 8
  %3 = load %struct.con3270*, %struct.con3270** %2, align 8
  %4 = getelementptr inbounds %struct.con3270, %struct.con3270* %3, i32 0, i32 2
  %5 = call %struct.TYPE_4__* @alloc_string(i32* %4, i32 33)
  %6 = load %struct.con3270*, %struct.con3270** %2, align 8
  %7 = getelementptr inbounds %struct.con3270, %struct.con3270* %6, i32 0, i32 0
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %7, align 8
  %8 = load %struct.con3270*, %struct.con3270** %2, align 8
  %9 = getelementptr inbounds %struct.con3270, %struct.con3270* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @memcpy(i64 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @con3270_create_status.blueprint, i64 0, i64 0), i32 33)
  %14 = load %struct.con3270*, %struct.con3270** %2, align 8
  %15 = getelementptr inbounds %struct.con3270, %struct.con3270* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.con3270*, %struct.con3270** %2, align 8
  %19 = getelementptr inbounds %struct.con3270, %struct.con3270* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  %24 = load %struct.con3270*, %struct.con3270** %2, align 8
  %25 = getelementptr inbounds %struct.con3270, %struct.con3270* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.con3270*, %struct.con3270** %2, align 8
  %29 = getelementptr inbounds %struct.con3270, %struct.con3270* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  %33 = mul nsw i32 %27, %32
  %34 = call i32 @raw3270_buffer_address(i32 %17, i64 %23, i32 %33)
  %35 = load %struct.con3270*, %struct.con3270** %2, align 8
  %36 = getelementptr inbounds %struct.con3270, %struct.con3270* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.con3270*, %struct.con3270** %2, align 8
  %40 = getelementptr inbounds %struct.con3270, %struct.con3270* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 21
  %45 = load %struct.con3270*, %struct.con3270** %2, align 8
  %46 = getelementptr inbounds %struct.con3270, %struct.con3270* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.con3270*, %struct.con3270** %2, align 8
  %50 = getelementptr inbounds %struct.con3270, %struct.con3270* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %48, %52
  %54 = sub nsw i32 %53, 8
  %55 = call i32 @raw3270_buffer_address(i32 %38, i64 %44, i32 %54)
  %56 = load %struct.con3270*, %struct.con3270** %2, align 8
  %57 = getelementptr inbounds %struct.con3270, %struct.con3270* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.con3270*, %struct.con3270** %2, align 8
  %61 = getelementptr inbounds %struct.con3270, %struct.con3270* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 8
  %66 = call i32 @codepage_convert(i32 %59, i64 %65, i32 12)
  %67 = load %struct.con3270*, %struct.con3270** %2, align 8
  %68 = getelementptr inbounds %struct.con3270, %struct.con3270* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.con3270*, %struct.con3270** %2, align 8
  %72 = getelementptr inbounds %struct.con3270, %struct.con3270* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 24
  %77 = call i32 @codepage_convert(i32 %70, i64 %76, i32 7)
  ret void
}

declare dso_local %struct.TYPE_4__* @alloc_string(i32*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @raw3270_buffer_address(i32, i64, i32) #1

declare dso_local i32 @codepage_convert(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
