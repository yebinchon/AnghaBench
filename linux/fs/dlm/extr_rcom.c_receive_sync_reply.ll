; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_rcom.c_receive_sync_reply.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_rcom.c_receive_sync_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i64, i32, i32, i32, i32 }
%struct.dlm_rcom = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@LSFL_RCOM_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"reject reply %d from %d seq %llx expect %llx\00", align 1
@LSFL_RCOM_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, %struct.dlm_rcom*)* @receive_sync_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_sync_reply(%struct.dlm_ls* %0, %struct.dlm_rcom* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_rcom*, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_rcom* %1, %struct.dlm_rcom** %4, align 8
  %5 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %6 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %5, i32 0, i32 1
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load i32, i32* @LSFL_RCOM_WAIT, align 4
  %9 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %10 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %9, i32 0, i32 3
  %11 = call i32 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %15 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %18 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %13, %2
  %22 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %23 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %24 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %27 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %31 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %34 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @log_debug(%struct.dlm_ls* %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %29, i64 %32, i64 %35)
  br label %58

37:                                               ; preds = %13
  %38 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %39 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %42 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %43 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @memcpy(i32 %40, %struct.dlm_rcom* %41, i32 %45)
  %47 = load i32, i32* @LSFL_RCOM_READY, align 4
  %48 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %49 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %48, i32 0, i32 3
  %50 = call i32 @set_bit(i32 %47, i32* %49)
  %51 = load i32, i32* @LSFL_RCOM_WAIT, align 4
  %52 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %53 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %52, i32 0, i32 3
  %54 = call i32 @clear_bit(i32 %51, i32* %53)
  %55 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %56 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %55, i32 0, i32 2
  %57 = call i32 @wake_up(i32* %56)
  br label %58

58:                                               ; preds = %37, %21
  %59 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %60 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %59, i32 0, i32 1
  %61 = call i32 @spin_unlock(i32* %60)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @log_debug(%struct.dlm_ls*, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @memcpy(i32, %struct.dlm_rcom*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
