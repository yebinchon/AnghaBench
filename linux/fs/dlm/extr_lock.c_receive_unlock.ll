; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_receive_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_receive_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { %struct.dlm_lkb, %struct.dlm_rsb }
%struct.dlm_lkb = type { i64, %struct.dlm_rsb*, i32 }
%struct.dlm_rsb = type { i32 }
%struct.dlm_message = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"receive_unlock %x remid %x remote %d %x\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_message*)* @receive_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_unlock(%struct.dlm_ls* %0, %struct.dlm_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca %struct.dlm_message*, align 8
  %6 = alloca %struct.dlm_lkb*, align 8
  %7 = alloca %struct.dlm_rsb*, align 8
  %8 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store %struct.dlm_message* %1, %struct.dlm_message** %5, align 8
  %9 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %10 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %11 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @find_lkb(%struct.dlm_ls* %9, i32 %12, %struct.dlm_lkb** %6)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %93

17:                                               ; preds = %2
  %18 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %19 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %22 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %17
  %26 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %27 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %28 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %31 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %34 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %38 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @log_error(%struct.dlm_ls* %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %29, i64 %32, i32 %36, i64 %39)
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  %43 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %44 = call i32 @dlm_put_lkb(%struct.dlm_lkb* %43)
  br label %93

45:                                               ; preds = %17
  %46 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %47 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %46, i32 0, i32 1
  %48 = load %struct.dlm_rsb*, %struct.dlm_rsb** %47, align 8
  store %struct.dlm_rsb* %48, %struct.dlm_rsb** %7, align 8
  %49 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %50 = call i32 @hold_rsb(%struct.dlm_rsb* %49)
  %51 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %52 = call i32 @lock_rsb(%struct.dlm_rsb* %51)
  %53 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %54 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %55 = call i32 @validate_message(%struct.dlm_lkb* %53, %struct.dlm_message* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %86

59:                                               ; preds = %45
  %60 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %61 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %62 = call i32 @receive_flags(%struct.dlm_lkb* %60, %struct.dlm_message* %61)
  %63 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %64 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %65 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %66 = call i32 @receive_unlock_args(%struct.dlm_ls* %63, %struct.dlm_lkb* %64, %struct.dlm_message* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %71 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @send_unlock_reply(%struct.dlm_rsb* %70, %struct.dlm_lkb* %71, i32 %72)
  br label %86

74:                                               ; preds = %59
  %75 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %76 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %77 = call i32 @do_unlock(%struct.dlm_rsb* %75, %struct.dlm_lkb* %76)
  store i32 %77, i32* %8, align 4
  %78 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %79 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @send_unlock_reply(%struct.dlm_rsb* %78, %struct.dlm_lkb* %79, i32 %80)
  %82 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %83 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @do_unlock_effects(%struct.dlm_rsb* %82, %struct.dlm_lkb* %83, i32 %84)
  br label %86

86:                                               ; preds = %74, %69, %58
  %87 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %88 = call i32 @unlock_rsb(%struct.dlm_rsb* %87)
  %89 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %90 = call i32 @put_rsb(%struct.dlm_rsb* %89)
  %91 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %92 = call i32 @dlm_put_lkb(%struct.dlm_lkb* %91)
  store i32 0, i32* %3, align 4
  br label %104

93:                                               ; preds = %25, %16
  %94 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %95 = load %struct.dlm_message*, %struct.dlm_message** %5, align 8
  %96 = call i32 @setup_stub_lkb(%struct.dlm_ls* %94, %struct.dlm_message* %95)
  %97 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %98 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %97, i32 0, i32 1
  %99 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %100 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %99, i32 0, i32 0
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @send_unlock_reply(%struct.dlm_rsb* %98, %struct.dlm_lkb* %100, i32 %101)
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %93, %86
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @find_lkb(%struct.dlm_ls*, i32, %struct.dlm_lkb**) #1

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, i32, i64, i32, i64) #1

declare dso_local i32 @dlm_put_lkb(%struct.dlm_lkb*) #1

declare dso_local i32 @hold_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @lock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @validate_message(%struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @receive_flags(%struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @receive_unlock_args(%struct.dlm_ls*, %struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @send_unlock_reply(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

declare dso_local i32 @do_unlock(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @do_unlock_effects(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

declare dso_local i32 @unlock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @put_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @setup_stub_lkb(%struct.dlm_ls*, %struct.dlm_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
