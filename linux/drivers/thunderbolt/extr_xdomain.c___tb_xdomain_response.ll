; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c___tb_xdomain_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c___tb_xdomain_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_ctl = type { i32 }
%struct.tb_cfg_request = type { i64, i32, i8*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@tb_xdomain_match = common dso_local global i32 0, align 4
@tb_xdomain_copy = common dso_local global i32 0, align 4
@response_ready = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_ctl*, i8*, i64, i32)* @__tb_xdomain_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tb_xdomain_response(%struct.tb_ctl* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tb_ctl*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tb_cfg_request*, align 8
  store %struct.tb_ctl* %0, %struct.tb_ctl** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = call %struct.tb_cfg_request* (...) @tb_cfg_request_alloc()
  store %struct.tb_cfg_request* %11, %struct.tb_cfg_request** %10, align 8
  %12 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %10, align 8
  %13 = icmp ne %struct.tb_cfg_request* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %38

17:                                               ; preds = %4
  %18 = load i32, i32* @tb_xdomain_match, align 4
  %19 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %10, align 8
  %20 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @tb_xdomain_copy, align 4
  %22 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %10, align 8
  %23 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %10, align 8
  %26 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %10, align 8
  %29 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %10, align 8
  %32 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.tb_ctl*, %struct.tb_ctl** %6, align 8
  %34 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %10, align 8
  %35 = load i32, i32* @response_ready, align 4
  %36 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %10, align 8
  %37 = call i32 @tb_cfg_request(%struct.tb_ctl* %33, %struct.tb_cfg_request* %34, i32 %35, %struct.tb_cfg_request* %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %17, %14
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.tb_cfg_request* @tb_cfg_request_alloc(...) #1

declare dso_local i32 @tb_cfg_request(%struct.tb_ctl*, %struct.tb_cfg_request*, i32, %struct.tb_cfg_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
