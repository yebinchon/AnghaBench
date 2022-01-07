; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_cfg_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_cfg_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_ctl = type { i32 }
%struct.tb_cfg_result = type { i32, i32 }
%struct.cfg_reset_pkg = type { i32 }
%struct.tb_cfg_header = type { i32 }
%struct.tb_cfg_request = type { i32, i32, i8*, %struct.tb_cfg_header*, i8*, %struct.cfg_reset_pkg*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@tb_cfg_match = common dso_local global i32 0, align 4
@tb_cfg_copy = common dso_local global i32 0, align 4
@TB_CFG_PKG_RESET = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tb_cfg_reset(%struct.tb_ctl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tb_cfg_result, align 4
  %5 = alloca %struct.tb_ctl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cfg_reset_pkg, align 4
  %9 = alloca %struct.tb_cfg_header, align 4
  %10 = alloca %struct.tb_cfg_request*, align 8
  %11 = alloca %struct.tb_cfg_result, align 4
  store %struct.tb_ctl* %0, %struct.tb_ctl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = getelementptr inbounds %struct.cfg_reset_pkg, %struct.cfg_reset_pkg* %8, i32 0, i32 0
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @tb_cfg_make_header(i32 %13)
  store i32 %14, i32* %12, align 4
  %15 = bitcast %struct.tb_cfg_result* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = call %struct.tb_cfg_request* (...) @tb_cfg_request_alloc()
  store %struct.tb_cfg_request* %16, %struct.tb_cfg_request** %10, align 8
  %17 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %10, align 8
  %18 = icmp ne %struct.tb_cfg_request* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %4, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  br label %53

23:                                               ; preds = %3
  %24 = load i32, i32* @tb_cfg_match, align 4
  %25 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %10, align 8
  %26 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @tb_cfg_copy, align 4
  %28 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %10, align 8
  %29 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %10, align 8
  %31 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %30, i32 0, i32 5
  store %struct.cfg_reset_pkg* %8, %struct.cfg_reset_pkg** %31, align 8
  %32 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %10, align 8
  %33 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %32, i32 0, i32 0
  store i32 4, i32* %33, align 8
  %34 = load i8*, i8** @TB_CFG_PKG_RESET, align 8
  %35 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %10, align 8
  %36 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %10, align 8
  %38 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %37, i32 0, i32 3
  store %struct.tb_cfg_header* %9, %struct.tb_cfg_header** %38, align 8
  %39 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %10, align 8
  %40 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %39, i32 0, i32 1
  store i32 4, i32* %40, align 4
  %41 = load i8*, i8** @TB_CFG_PKG_RESET, align 8
  %42 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %10, align 8
  %43 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.tb_ctl*, %struct.tb_ctl** %5, align 8
  %45 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %10, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @tb_cfg_request_sync(%struct.tb_ctl* %44, %struct.tb_cfg_request* %45, i32 %46)
  %48 = bitcast %struct.tb_cfg_result* %11 to i64*
  store i64 %47, i64* %48, align 4
  %49 = bitcast %struct.tb_cfg_result* %4 to i8*
  %50 = bitcast %struct.tb_cfg_result* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 8, i1 false)
  %51 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %10, align 8
  %52 = call i32 @tb_cfg_request_put(%struct.tb_cfg_request* %51)
  br label %53

53:                                               ; preds = %23, %19
  %54 = bitcast %struct.tb_cfg_result* %4 to i64*
  %55 = load i64, i64* %54, align 4
  ret i64 %55
}

declare dso_local i32 @tb_cfg_make_header(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.tb_cfg_request* @tb_cfg_request_alloc(...) #1

declare dso_local i64 @tb_cfg_request_sync(%struct.tb_ctl*, %struct.tb_cfg_request*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tb_cfg_request_put(%struct.tb_cfg_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
