; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_tb_xdp_properties_changed_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_tb_xdp_properties_changed_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_ctl = type { i32 }
%struct.tb_xdp_properties_changed_response = type { i32, i32 }
%struct.tb_xdp_properties_changed = type { i32, i32 }

@PROPERTIES_CHANGED_REQUEST = common dso_local global i32 0, align 4
@TB_CFG_PKG_XDOMAIN_REQ = common dso_local global i32 0, align 4
@TB_CFG_PKG_XDOMAIN_RESP = common dso_local global i32 0, align 4
@XDOMAIN_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_ctl*, i32, i32, i32*)* @tb_xdp_properties_changed_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_xdp_properties_changed_request(%struct.tb_ctl* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tb_ctl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.tb_xdp_properties_changed_response, align 4
  %11 = alloca %struct.tb_xdp_properties_changed, align 4
  %12 = alloca i32, align 4
  store %struct.tb_ctl* %0, %struct.tb_ctl** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = bitcast %struct.tb_xdp_properties_changed* %11 to %struct.tb_xdp_properties_changed_response*
  %14 = call i32 @memset(%struct.tb_xdp_properties_changed_response* %13, i32 0, i32 8)
  %15 = getelementptr inbounds %struct.tb_xdp_properties_changed, %struct.tb_xdp_properties_changed* %11, i32 0, i32 0
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = srem i32 %17, 4
  %19 = load i32, i32* @PROPERTIES_CHANGED_REQUEST, align 4
  %20 = call i32 @tb_xdp_fill_header(i32* %15, i32 %16, i32 %18, i32 %19, i32 8)
  %21 = getelementptr inbounds %struct.tb_xdp_properties_changed, %struct.tb_xdp_properties_changed* %11, i32 0, i32 1
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @uuid_copy(i32* %21, i32* %22)
  %24 = call i32 @memset(%struct.tb_xdp_properties_changed_response* %10, i32 0, i32 8)
  %25 = load %struct.tb_ctl*, %struct.tb_ctl** %6, align 8
  %26 = bitcast %struct.tb_xdp_properties_changed* %11 to %struct.tb_xdp_properties_changed_response*
  %27 = load i32, i32* @TB_CFG_PKG_XDOMAIN_REQ, align 4
  %28 = load i32, i32* @TB_CFG_PKG_XDOMAIN_RESP, align 4
  %29 = load i32, i32* @XDOMAIN_DEFAULT_TIMEOUT, align 4
  %30 = call i32 @__tb_xdomain_request(%struct.tb_ctl* %25, %struct.tb_xdp_properties_changed_response* %26, i32 8, i32 %27, %struct.tb_xdp_properties_changed_response* %10, i32 8, i32 %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %5, align 4
  br label %38

35:                                               ; preds = %4
  %36 = getelementptr inbounds %struct.tb_xdp_properties_changed_response, %struct.tb_xdp_properties_changed_response* %10, i32 0, i32 0
  %37 = call i32 @tb_xdp_handle_error(i32* %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %33
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @memset(%struct.tb_xdp_properties_changed_response*, i32, i32) #1

declare dso_local i32 @tb_xdp_fill_header(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @uuid_copy(i32*, i32*) #1

declare dso_local i32 @__tb_xdomain_request(%struct.tb_ctl*, %struct.tb_xdp_properties_changed_response*, i32, i32, %struct.tb_xdp_properties_changed_response*, i32, i32, i32) #1

declare dso_local i32 @tb_xdp_handle_error(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
