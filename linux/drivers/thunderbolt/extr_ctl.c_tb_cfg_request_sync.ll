; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_cfg_request_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_cfg_request_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_ctl = type { i32 }
%struct.tb_cfg_request = type { %struct.tb_cfg_result, i32 }
%struct.tb_cfg_result = type { i32, i32 }

@done = common dso_local global i32 0, align 4
@tb_cfg_request_complete = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tb_cfg_request_sync(%struct.tb_ctl* %0, %struct.tb_cfg_request* %1, i32 %2) #0 {
  %4 = alloca %struct.tb_cfg_result, align 4
  %5 = alloca %struct.tb_ctl*, align 8
  %6 = alloca %struct.tb_cfg_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.tb_cfg_result, align 4
  %10 = alloca i32, align 4
  store %struct.tb_ctl* %0, %struct.tb_ctl** %5, align 8
  store %struct.tb_cfg_request* %1, %struct.tb_cfg_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @msecs_to_jiffies(i32 %11)
  store i64 %12, i64* %8, align 8
  %13 = bitcast %struct.tb_cfg_result* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load i32, i32* @done, align 4
  %15 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %14)
  %16 = load %struct.tb_ctl*, %struct.tb_ctl** %5, align 8
  %17 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %6, align 8
  %18 = load i32, i32* @tb_cfg_request_complete, align 4
  %19 = call i32 @tb_cfg_request(%struct.tb_ctl* %16, %struct.tb_cfg_request* %17, i32 %18, i32* @done)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  %24 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %9, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = bitcast %struct.tb_cfg_result* %4 to i8*
  %26 = bitcast %struct.tb_cfg_result* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 8, i1 false)
  br label %44

27:                                               ; preds = %3
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @wait_for_completion_timeout(i32* @done, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %6, align 8
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i32 @tb_cfg_request_cancel(%struct.tb_cfg_request* %32, i32 %34)
  br label %36

36:                                               ; preds = %31, %27
  %37 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %6, align 8
  %38 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %37, i32 0, i32 1
  %39 = call i32 @flush_work(i32* %38)
  %40 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %6, align 8
  %41 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %40, i32 0, i32 0
  %42 = bitcast %struct.tb_cfg_result* %4 to i8*
  %43 = bitcast %struct.tb_cfg_result* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 8, i1 false)
  br label %44

44:                                               ; preds = %36, %22
  %45 = bitcast %struct.tb_cfg_result* %4 to i64*
  %46 = load i64, i64* %45, align 4
  ret i64 %46
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @tb_cfg_request(%struct.tb_ctl*, %struct.tb_cfg_request*, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @tb_cfg_request_cancel(%struct.tb_cfg_request*, i32) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
