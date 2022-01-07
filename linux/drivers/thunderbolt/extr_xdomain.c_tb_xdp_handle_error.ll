; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_tb_xdp_handle_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_tb_xdp_handle_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_xdp_header = type { i64 }
%struct.tb_xdp_error_response = type { i32 }

@ERROR_RESPONSE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_xdp_header*)* @tb_xdp_handle_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_xdp_handle_error(%struct.tb_xdp_header* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb_xdp_header*, align 8
  %4 = alloca %struct.tb_xdp_error_response*, align 8
  store %struct.tb_xdp_header* %0, %struct.tb_xdp_header** %3, align 8
  %5 = load %struct.tb_xdp_header*, %struct.tb_xdp_header** %3, align 8
  %6 = getelementptr inbounds %struct.tb_xdp_header, %struct.tb_xdp_header* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ERROR_RESPONSE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.tb_xdp_header*, %struct.tb_xdp_header** %3, align 8
  %13 = bitcast %struct.tb_xdp_header* %12 to %struct.tb_xdp_error_response*
  store %struct.tb_xdp_error_response* %13, %struct.tb_xdp_error_response** %4, align 8
  %14 = load %struct.tb_xdp_error_response*, %struct.tb_xdp_error_response** %4, align 8
  %15 = getelementptr inbounds %struct.tb_xdp_error_response, %struct.tb_xdp_error_response* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %26 [
    i32 128, label %17
    i32 129, label %17
    i32 130, label %20
    i32 131, label %23
  ]

17:                                               ; preds = %11, %11
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %28

20:                                               ; preds = %11
  %21 = load i32, i32* @ENOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %28

23:                                               ; preds = %11
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %28

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %23, %20, %17, %10
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
