; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_tb_xdp_error_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_tb_xdp_error_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_ctl = type { i32 }
%struct.tb_xdp_error_response = type { i32, i32 }

@ERROR_RESPONSE = common dso_local global i32 0, align 4
@TB_CFG_PKG_XDOMAIN_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_ctl*, i32, i32, i32)* @tb_xdp_error_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_xdp_error_response(%struct.tb_ctl* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tb_ctl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tb_xdp_error_response, align 4
  store %struct.tb_ctl* %0, %struct.tb_ctl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 @memset(%struct.tb_xdp_error_response* %9, i32 0, i32 8)
  %11 = getelementptr inbounds %struct.tb_xdp_error_response, %struct.tb_xdp_error_response* %9, i32 0, i32 1
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @ERROR_RESPONSE, align 4
  %15 = call i32 @tb_xdp_fill_header(i32* %11, i32 %12, i32 %13, i32 %14, i32 8)
  %16 = load i32, i32* %8, align 4
  %17 = getelementptr inbounds %struct.tb_xdp_error_response, %struct.tb_xdp_error_response* %9, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.tb_ctl*, %struct.tb_ctl** %5, align 8
  %19 = load i32, i32* @TB_CFG_PKG_XDOMAIN_RESP, align 4
  %20 = call i32 @__tb_xdomain_response(%struct.tb_ctl* %18, %struct.tb_xdp_error_response* %9, i32 8, i32 %19)
  ret i32 %20
}

declare dso_local i32 @memset(%struct.tb_xdp_error_response*, i32, i32) #1

declare dso_local i32 @tb_xdp_fill_header(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @__tb_xdomain_response(%struct.tb_ctl*, %struct.tb_xdp_error_response*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
