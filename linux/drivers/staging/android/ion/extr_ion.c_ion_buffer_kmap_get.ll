; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion.c_ion_buffer_kmap_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion.c_ion_buffer_kmap_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ion_buffer = type { i8*, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* (%struct.TYPE_4__*, %struct.ion_buffer*)* }

@.str = private unnamed_addr constant [53 x i8] c"heap->ops->map_kernel should return ERR_PTR on error\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ion_buffer*)* @ion_buffer_kmap_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ion_buffer_kmap_get(%struct.ion_buffer* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ion_buffer*, align 8
  %4 = alloca i8*, align 8
  store %struct.ion_buffer* %0, %struct.ion_buffer** %3, align 8
  %5 = load %struct.ion_buffer*, %struct.ion_buffer** %3, align 8
  %6 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.ion_buffer*, %struct.ion_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* %11, align 8
  %14 = load %struct.ion_buffer*, %struct.ion_buffer** %3, align 8
  %15 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %2, align 8
  br label %55

17:                                               ; preds = %1
  %18 = load %struct.ion_buffer*, %struct.ion_buffer** %3, align 8
  %19 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8* (%struct.TYPE_4__*, %struct.ion_buffer*)*, i8* (%struct.TYPE_4__*, %struct.ion_buffer*)** %23, align 8
  %25 = load %struct.ion_buffer*, %struct.ion_buffer** %3, align 8
  %26 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load %struct.ion_buffer*, %struct.ion_buffer** %3, align 8
  %29 = call i8* %24(%struct.TYPE_4__* %27, %struct.ion_buffer* %28)
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = icmp ne i8* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ONCE(i32 %33, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %17
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = call i8* @ERR_PTR(i32 %38)
  store i8* %39, i8** %2, align 8
  br label %55

40:                                               ; preds = %17
  %41 = load i8*, i8** %4, align 8
  %42 = call i64 @IS_ERR(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i8*, i8** %4, align 8
  store i8* %45, i8** %2, align 8
  br label %55

46:                                               ; preds = %40
  %47 = load i8*, i8** %4, align 8
  %48 = load %struct.ion_buffer*, %struct.ion_buffer** %3, align 8
  %49 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.ion_buffer*, %struct.ion_buffer** %3, align 8
  %51 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  %54 = load i8*, i8** %4, align 8
  store i8* %54, i8** %2, align 8
  br label %55

55:                                               ; preds = %46, %44, %36, %9
  %56 = load i8*, i8** %2, align 8
  ret i8* %56
}

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
