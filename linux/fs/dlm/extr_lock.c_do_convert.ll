; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_do_convert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_do_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32 }
%struct.dlm_lkb = type { i32 }

@DLM_LKF_NODLCKWT = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@DLM_LOCK_IV = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@DLM_LKSTS_CONVERT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_rsb*, %struct.dlm_lkb*)* @do_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_convert(%struct.dlm_rsb* %0, %struct.dlm_lkb* %1) #0 {
  %3 = alloca %struct.dlm_rsb*, align 8
  %4 = alloca %struct.dlm_lkb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %3, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %8 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %9 = call i64 @can_be_granted(%struct.dlm_rsb* %7, %struct.dlm_lkb* %8, i32 1, i32 0, i32* %6)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %13 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %14 = call i32 @grant_lock(%struct.dlm_rsb* %12, %struct.dlm_lkb* %13)
  %15 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %16 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %17 = call i32 @queue_cast(%struct.dlm_rsb* %15, %struct.dlm_lkb* %16, i32 0)
  br label %83

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %23 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DLM_LKF_NODLCKWT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %21
  %29 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %30 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %31 = call i32 @revert_lock(%struct.dlm_rsb* %29, %struct.dlm_lkb* %30)
  %32 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %33 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %34 = load i32, i32* @EDEADLK, align 4
  %35 = sub nsw i32 0, %34
  %36 = call i32 @queue_cast(%struct.dlm_rsb* %32, %struct.dlm_lkb* %33, i32 %35)
  %37 = load i32, i32* @EDEADLK, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %83

39:                                               ; preds = %21, %18
  %40 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %41 = call i64 @is_demoted(%struct.dlm_lkb* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %45 = load i32, i32* @DLM_LOCK_IV, align 4
  %46 = call i32 @grant_pending_convert(%struct.dlm_rsb* %44, i32 %45, i32* null, i32* null)
  %47 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %48 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %49 = call i64 @_can_be_granted(%struct.dlm_rsb* %47, %struct.dlm_lkb* %48, i32 1, i32 0)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %53 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %54 = call i32 @grant_lock(%struct.dlm_rsb* %52, %struct.dlm_lkb* %53)
  %55 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %56 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %57 = call i32 @queue_cast(%struct.dlm_rsb* %55, %struct.dlm_lkb* %56, i32 0)
  br label %83

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58, %39
  %60 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %61 = call i64 @can_be_queued(%struct.dlm_lkb* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load i32, i32* @EINPROGRESS, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  %66 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %67 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %68 = call i32 @del_lkb(%struct.dlm_rsb* %66, %struct.dlm_lkb* %67)
  %69 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %70 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %71 = load i32, i32* @DLM_LKSTS_CONVERT, align 4
  %72 = call i32 @add_lkb(%struct.dlm_rsb* %69, %struct.dlm_lkb* %70, i32 %71)
  %73 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %74 = call i32 @add_timeout(%struct.dlm_lkb* %73)
  br label %83

75:                                               ; preds = %59
  %76 = load i32, i32* @EAGAIN, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  %78 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %79 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %80 = load i32, i32* @EAGAIN, align 4
  %81 = sub nsw i32 0, %80
  %82 = call i32 @queue_cast(%struct.dlm_rsb* %78, %struct.dlm_lkb* %79, i32 %81)
  br label %83

83:                                               ; preds = %75, %63, %51, %28, %11
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i64 @can_be_granted(%struct.dlm_rsb*, %struct.dlm_lkb*, i32, i32, i32*) #1

declare dso_local i32 @grant_lock(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @queue_cast(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

declare dso_local i32 @revert_lock(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i64 @is_demoted(%struct.dlm_lkb*) #1

declare dso_local i32 @grant_pending_convert(%struct.dlm_rsb*, i32, i32*, i32*) #1

declare dso_local i64 @_can_be_granted(%struct.dlm_rsb*, %struct.dlm_lkb*, i32, i32) #1

declare dso_local i64 @can_be_queued(%struct.dlm_lkb*) #1

declare dso_local i32 @del_lkb(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @add_lkb(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

declare dso_local i32 @add_timeout(%struct.dlm_lkb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
