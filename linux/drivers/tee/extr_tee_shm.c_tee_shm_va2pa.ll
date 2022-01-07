; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/extr_tee_shm.c_tee_shm_va2pa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/extr_tee_shm.c_tee_shm_va2pa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_shm = type { i32, i32, i64 }

@TEE_SHM_MAPPED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tee_shm_va2pa(%struct.tee_shm* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tee_shm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.tee_shm* %0, %struct.tee_shm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.tee_shm*, %struct.tee_shm** %5, align 8
  %9 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @TEE_SHM_MAPPED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %52

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.tee_shm*, %struct.tee_shm** %5, align 8
  %20 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = icmp ult i8* %18, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %52

27:                                               ; preds = %17
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.tee_shm*, %struct.tee_shm** %5, align 8
  %30 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.tee_shm*, %struct.tee_shm** %5, align 8
  %34 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %32, i64 %36
  %38 = icmp uge i8* %28, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %52

42:                                               ; preds = %27
  %43 = load %struct.tee_shm*, %struct.tee_shm** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = load %struct.tee_shm*, %struct.tee_shm** %5, align 8
  %47 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = sub i64 %45, %48
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @tee_shm_get_pa(%struct.tee_shm* %43, i64 %49, i32* %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %42, %39, %24, %14
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @tee_shm_get_pa(%struct.tee_shm*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
