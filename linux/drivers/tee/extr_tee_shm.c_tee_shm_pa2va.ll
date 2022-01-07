; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/extr_tee_shm.c_tee_shm_pa2va.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/extr_tee_shm.c_tee_shm_pa2va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_shm = type { i32, i64, i64 }

@TEE_SHM_MAPPED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tee_shm_pa2va(%struct.tee_shm* %0, i64 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tee_shm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store %struct.tee_shm* %0, %struct.tee_shm** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load %struct.tee_shm*, %struct.tee_shm** %5, align 8
  %10 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TEE_SHM_MAPPED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %61

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.tee_shm*, %struct.tee_shm** %5, align 8
  %21 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %61

27:                                               ; preds = %18
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.tee_shm*, %struct.tee_shm** %5, align 8
  %30 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.tee_shm*, %struct.tee_shm** %5, align 8
  %33 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = icmp sge i64 %28, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %61

40:                                               ; preds = %27
  %41 = load i8**, i8*** %7, align 8
  %42 = icmp ne i8** %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load %struct.tee_shm*, %struct.tee_shm** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.tee_shm*, %struct.tee_shm** %5, align 8
  %47 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  %50 = call i8* @tee_shm_get_va(%struct.tee_shm* %44, i64 %49)
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i64 @IS_ERR(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @PTR_ERR(i8* %55)
  store i32 %56, i32* %4, align 4
  br label %61

57:                                               ; preds = %43
  %58 = load i8*, i8** %8, align 8
  %59 = load i8**, i8*** %7, align 8
  store i8* %58, i8** %59, align 8
  br label %60

60:                                               ; preds = %57, %40
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %54, %37, %24, %15
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i8* @tee_shm_get_va(%struct.tee_shm*, i64) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
