; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_munge_altmode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_munge_altmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lkb = type { i32, i32, i32 }
%struct.dlm_message = type { i64 }

@DLM_MSG_REQUEST_REPLY = common dso_local global i64 0, align 8
@DLM_MSG_GRANT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"munge_altmode %x invalid reply type %d\00", align 1
@DLM_LKF_ALTPR = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@DLM_LKF_ALTCW = common dso_local global i32 0, align 4
@DLM_LOCK_CW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"munge_altmode invalid exflags %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_lkb*, %struct.dlm_message*)* @munge_altmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @munge_altmode(%struct.dlm_lkb* %0, %struct.dlm_message* %1) #0 {
  %3 = alloca %struct.dlm_lkb*, align 8
  %4 = alloca %struct.dlm_message*, align 8
  store %struct.dlm_lkb* %0, %struct.dlm_lkb** %3, align 8
  store %struct.dlm_message* %1, %struct.dlm_message** %4, align 8
  %5 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %6 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DLM_MSG_REQUEST_REPLY, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %12 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DLM_MSG_GRANT, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %18 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %21 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (i8*, i32, ...) @log_print(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %19, i64 %22)
  br label %54

24:                                               ; preds = %10, %2
  %25 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %26 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DLM_LKF_ALTPR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* @DLM_LOCK_PR, align 4
  %33 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %34 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %54

35:                                               ; preds = %24
  %36 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %37 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DLM_LKF_ALTCW, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* @DLM_LOCK_CW, align 4
  %44 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %45 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %53

46:                                               ; preds = %35
  %47 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %48 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, i32, ...) @log_print(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.dlm_lkb*, %struct.dlm_lkb** %3, align 8
  %52 = call i32 @dlm_print_lkb(%struct.dlm_lkb* %51)
  br label %53

53:                                               ; preds = %46, %42
  br label %54

54:                                               ; preds = %16, %53, %31
  ret void
}

declare dso_local i32 @log_print(i8*, i32, ...) #1

declare dso_local i32 @dlm_print_lkb(%struct.dlm_lkb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
