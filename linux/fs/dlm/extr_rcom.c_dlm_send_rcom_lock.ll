; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_rcom.c_dlm_send_rcom_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_rcom.c_dlm_send_rcom_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32, %struct.dlm_ls* }
%struct.dlm_ls = type { i64 }
%struct.dlm_lkb = type { i64 }
%struct.dlm_rcom = type { i64, i64 }
%struct.dlm_mhandle = type { i32 }
%struct.rcom_lock = type { i32 }

@DLM_RCOM_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_send_rcom_lock(%struct.dlm_rsb* %0, %struct.dlm_lkb* %1) #0 {
  %3 = alloca %struct.dlm_rsb*, align 8
  %4 = alloca %struct.dlm_lkb*, align 8
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca %struct.dlm_rcom*, align 8
  %7 = alloca %struct.dlm_mhandle*, align 8
  %8 = alloca %struct.rcom_lock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %3, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %4, align 8
  %11 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %12 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %11, i32 0, i32 1
  %13 = load %struct.dlm_ls*, %struct.dlm_ls** %12, align 8
  store %struct.dlm_ls* %13, %struct.dlm_ls** %5, align 8
  store i32 4, i32* %10, align 4
  %14 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %15 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %20 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %18, %2
  %27 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %28 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %29 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DLM_RCOM_LOCK, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @create_rcom(%struct.dlm_ls* %27, i32 %30, i32 %31, i32 %32, %struct.dlm_rcom** %6, %struct.dlm_mhandle** %7)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %54

37:                                               ; preds = %26
  %38 = load %struct.dlm_rcom*, %struct.dlm_rcom** %6, align 8
  %39 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.rcom_lock*
  store %struct.rcom_lock* %41, %struct.rcom_lock** %8, align 8
  %42 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %43 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %44 = load %struct.rcom_lock*, %struct.rcom_lock** %8, align 8
  %45 = call i32 @pack_rcom_lock(%struct.dlm_rsb* %42, %struct.dlm_lkb* %43, %struct.rcom_lock* %44)
  %46 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %47 = ptrtoint %struct.dlm_rsb* %46 to i64
  %48 = load %struct.dlm_rcom*, %struct.dlm_rcom** %6, align 8
  %49 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %51 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %7, align 8
  %52 = load %struct.dlm_rcom*, %struct.dlm_rcom** %6, align 8
  %53 = call i32 @send_rcom(%struct.dlm_ls* %50, %struct.dlm_mhandle* %51, %struct.dlm_rcom* %52)
  br label %54

54:                                               ; preds = %37, %36
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

declare dso_local i32 @create_rcom(%struct.dlm_ls*, i32, i32, i32, %struct.dlm_rcom**, %struct.dlm_mhandle**) #1

declare dso_local i32 @pack_rcom_lock(%struct.dlm_rsb*, %struct.dlm_lkb*, %struct.rcom_lock*) #1

declare dso_local i32 @send_rcom(%struct.dlm_ls*, %struct.dlm_mhandle*, %struct.dlm_rcom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
