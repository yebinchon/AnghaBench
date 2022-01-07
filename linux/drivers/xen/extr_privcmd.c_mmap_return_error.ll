; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_privcmd.c_mmap_return_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_privcmd.c_mmap_return_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmap_batch_state = type { i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@PRIVCMD_MMAPBATCH_PAGED_ERROR = common dso_local global i32 0, align 4
@PRIVCMD_MMAPBATCH_MFN_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mmap_batch_state*)* @mmap_return_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_return_error(i32 %0, %struct.mmap_batch_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmap_batch_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.mmap_batch_state* %1, %struct.mmap_batch_state** %5, align 8
  %8 = load %struct.mmap_batch_state*, %struct.mmap_batch_state** %5, align 8
  %9 = getelementptr inbounds %struct.mmap_batch_state, %struct.mmap_batch_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %50

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.mmap_batch_state*, %struct.mmap_batch_state** %5, align 8
  %18 = getelementptr inbounds %struct.mmap_batch_state, %struct.mmap_batch_state* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @get_user(i32 %16, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %67

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @PRIVCMD_MMAPBATCH_PAGED_ERROR, align 4
  br label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @PRIVCMD_MMAPBATCH_MFN_ERROR, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.mmap_batch_state*, %struct.mmap_batch_state** %5, align 8
  %40 = getelementptr inbounds %struct.mmap_batch_state, %struct.mmap_batch_state* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = call i32 @__put_user(i32 %38, i32 %41)
  store i32 %43, i32* %3, align 4
  br label %67

44:                                               ; preds = %12
  %45 = load %struct.mmap_batch_state*, %struct.mmap_batch_state** %5, align 8
  %46 = getelementptr inbounds %struct.mmap_batch_state, %struct.mmap_batch_state* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %44
  br label %66

50:                                               ; preds = %2
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.mmap_batch_state*, %struct.mmap_batch_state** %5, align 8
  %56 = getelementptr inbounds %struct.mmap_batch_state, %struct.mmap_batch_state* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = call i32 @__put_user(i32 %54, i32 %57)
  store i32 %59, i32* %3, align 4
  br label %67

60:                                               ; preds = %50
  %61 = load %struct.mmap_batch_state*, %struct.mmap_batch_state** %5, align 8
  %62 = getelementptr inbounds %struct.mmap_batch_state, %struct.mmap_batch_state* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %49
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %53, %34, %23
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @get_user(i32, i32) #1

declare dso_local i32 @__put_user(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
