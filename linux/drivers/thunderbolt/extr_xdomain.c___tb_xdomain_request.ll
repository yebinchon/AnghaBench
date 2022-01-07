; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c___tb_xdomain_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c___tb_xdomain_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_ctl = type { i32 }
%struct.tb_cfg_request = type { i64, i32, i64, i32, i8*, i8*, i32, i32 }
%struct.tb_cfg_result = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@tb_xdomain_match = common dso_local global i32 0, align 4
@tb_xdomain_copy = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_ctl*, i8*, i64, i32, i8*, i64, i32, i32)* @__tb_xdomain_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tb_xdomain_request(%struct.tb_ctl* %0, i8* %1, i64 %2, i32 %3, i8* %4, i64 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.tb_ctl*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.tb_cfg_request*, align 8
  %19 = alloca %struct.tb_cfg_result, align 4
  %20 = alloca %struct.tb_cfg_result, align 4
  store %struct.tb_ctl* %0, %struct.tb_ctl** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = call %struct.tb_cfg_request* (...) @tb_cfg_request_alloc()
  store %struct.tb_cfg_request* %21, %struct.tb_cfg_request** %18, align 8
  %22 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %18, align 8
  %23 = icmp ne %struct.tb_cfg_request* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %8
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  br label %72

27:                                               ; preds = %8
  %28 = load i32, i32* @tb_xdomain_match, align 4
  %29 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %18, align 8
  %30 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @tb_xdomain_copy, align 4
  %32 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %18, align 8
  %33 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %18, align 8
  %36 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %18, align 8
  %39 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %18, align 8
  %42 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %18, align 8
  %45 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load i64, i64* %15, align 8
  %47 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %18, align 8
  %48 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* %16, align 4
  %50 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %18, align 8
  %51 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.tb_ctl*, %struct.tb_ctl** %10, align 8
  %53 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %18, align 8
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @tb_cfg_request_sync(%struct.tb_ctl* %52, %struct.tb_cfg_request* %53, i32 %54)
  %56 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %20, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = bitcast %struct.tb_cfg_result* %19 to i8*
  %58 = bitcast %struct.tb_cfg_result* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 4, i1 false)
  %59 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %18, align 8
  %60 = call i32 @tb_cfg_request_put(%struct.tb_cfg_request* %59)
  %61 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %19, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %27
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  br label %70

67:                                               ; preds = %27
  %68 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %19, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi i32 [ %66, %64 ], [ %69, %67 ]
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %70, %24
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local %struct.tb_cfg_request* @tb_cfg_request_alloc(...) #1

declare dso_local i32 @tb_cfg_request_sync(%struct.tb_ctl*, %struct.tb_cfg_request*, i32) #1

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
