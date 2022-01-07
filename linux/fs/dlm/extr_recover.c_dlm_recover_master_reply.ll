; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_recover.c_dlm_recover_master_reply.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_recover.c_dlm_recover_master_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_rcom = type { i32, i64 }
%struct.dlm_rsb = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"dlm_recover_master_reply no id %llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_recover_master_reply(%struct.dlm_ls* %0, %struct.dlm_rcom* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_rcom*, align 8
  %5 = alloca %struct.dlm_rsb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_rcom* %1, %struct.dlm_rcom** %4, align 8
  %8 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %9 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %10 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = call %struct.dlm_rsb* @recover_idr_find(%struct.dlm_ls* %8, i64 %11)
  store %struct.dlm_rsb* %12, %struct.dlm_rsb** %5, align 8
  %13 = load %struct.dlm_rsb*, %struct.dlm_rsb** %5, align 8
  %14 = icmp ne %struct.dlm_rsb* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %17 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %18 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @log_error(%struct.dlm_ls* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %54

21:                                               ; preds = %2
  %22 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %23 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 (...) @dlm_our_nodeid()
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = load %struct.dlm_rsb*, %struct.dlm_rsb** %5, align 8
  %33 = call i32 @lock_rsb(%struct.dlm_rsb* %32)
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.dlm_rsb*, %struct.dlm_rsb** %5, align 8
  %36 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.dlm_rsb*, %struct.dlm_rsb** %5, align 8
  %39 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.dlm_rsb*, %struct.dlm_rsb** %5, align 8
  %41 = call i32 @set_new_master(%struct.dlm_rsb* %40)
  %42 = load %struct.dlm_rsb*, %struct.dlm_rsb** %5, align 8
  %43 = call i32 @unlock_rsb(%struct.dlm_rsb* %42)
  %44 = load %struct.dlm_rsb*, %struct.dlm_rsb** %5, align 8
  %45 = call i32 @recover_idr_del(%struct.dlm_rsb* %44)
  %46 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %47 = call i64 @recover_idr_empty(%struct.dlm_ls* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %31
  %50 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %51 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %50, i32 0, i32 0
  %52 = call i32 @wake_up(i32* %51)
  br label %53

53:                                               ; preds = %49, %31
  br label %54

54:                                               ; preds = %53, %15
  ret i32 0
}

declare dso_local %struct.dlm_rsb* @recover_idr_find(%struct.dlm_ls*, i64) #1

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, i64) #1

declare dso_local i32 @dlm_our_nodeid(...) #1

declare dso_local i32 @lock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @set_new_master(%struct.dlm_rsb*) #1

declare dso_local i32 @unlock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @recover_idr_del(%struct.dlm_rsb*) #1

declare dso_local i64 @recover_idr_empty(%struct.dlm_ls*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
