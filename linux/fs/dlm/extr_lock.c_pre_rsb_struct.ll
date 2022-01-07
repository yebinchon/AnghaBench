; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_pre_rsb_struct.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_pre_rsb_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dlm_ls = type { i32, i32, i32 }
%struct.dlm_rsb = type { i32 }

@dlm_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*)* @pre_rsb_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pre_rsb_struct(%struct.dlm_ls* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_rsb*, align 8
  %5 = alloca %struct.dlm_rsb*, align 8
  %6 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %8 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %7, i32 0, i32 1
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %11 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlm_config, i32 0, i32 0), align 4
  %14 = sdiv i32 %13, 2
  %15 = icmp sgt i32 %12, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %18 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %17, i32 0, i32 1
  %19 = call i32 @spin_unlock(i32* %18)
  store i32 0, i32* %2, align 4
  br label %69

20:                                               ; preds = %1
  %21 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %22 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %21, i32 0, i32 1
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %25 = call %struct.dlm_rsb* @dlm_allocate_rsb(%struct.dlm_ls* %24)
  store %struct.dlm_rsb* %25, %struct.dlm_rsb** %4, align 8
  %26 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %27 = call %struct.dlm_rsb* @dlm_allocate_rsb(%struct.dlm_ls* %26)
  store %struct.dlm_rsb* %27, %struct.dlm_rsb** %5, align 8
  %28 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %29 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %28, i32 0, i32 1
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %32 = icmp ne %struct.dlm_rsb* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %20
  %34 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %35 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %34, i32 0, i32 0
  %36 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %37 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %36, i32 0, i32 2
  %38 = call i32 @list_add(i32* %35, i32* %37)
  %39 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %40 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %33, %20
  %44 = load %struct.dlm_rsb*, %struct.dlm_rsb** %5, align 8
  %45 = icmp ne %struct.dlm_rsb* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load %struct.dlm_rsb*, %struct.dlm_rsb** %5, align 8
  %48 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %47, i32 0, i32 0
  %49 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %50 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %49, i32 0, i32 2
  %51 = call i32 @list_add(i32* %48, i32* %50)
  %52 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %53 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %46, %43
  %57 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %58 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %6, align 4
  %60 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %61 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %60, i32 0, i32 1
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %69

68:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %65, %16
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.dlm_rsb* @dlm_allocate_rsb(%struct.dlm_ls*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
