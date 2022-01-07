; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-ll-hpi.c_c67x00_comm_exec_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-ll-hpi.c_c67x00_comm_exec_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.c67x00_lcp_int_data = type { i32* }

@COMM_INT_NUM = common dso_local global i32 0, align 4
@COMM_REGS = common dso_local global i32 0, align 4
@COMM_EXEC_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c67x00_device*, i32, %struct.c67x00_lcp_int_data*)* @c67x00_comm_exec_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c67x00_comm_exec_int(%struct.c67x00_device* %0, i32 %1, %struct.c67x00_lcp_int_data* %2) #0 {
  %4 = alloca %struct.c67x00_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.c67x00_lcp_int_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.c67x00_device* %0, %struct.c67x00_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.c67x00_lcp_int_data* %2, %struct.c67x00_lcp_int_data** %6, align 8
  %9 = load %struct.c67x00_device*, %struct.c67x00_device** %4, align 8
  %10 = getelementptr inbounds %struct.c67x00_device, %struct.c67x00_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.c67x00_device*, %struct.c67x00_device** %4, align 8
  %15 = load i32, i32* @COMM_INT_NUM, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @hpi_write_word(%struct.c67x00_device* %14, i32 %15, i32 %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %34, %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @COMM_REGS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load %struct.c67x00_device*, %struct.c67x00_device** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @COMM_R(i32 %24)
  %26 = load %struct.c67x00_lcp_int_data*, %struct.c67x00_lcp_int_data** %6, align 8
  %27 = getelementptr inbounds %struct.c67x00_lcp_int_data, %struct.c67x00_lcp_int_data* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @hpi_write_word(%struct.c67x00_device* %23, i32 %25, i32 %32)
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %18

37:                                               ; preds = %18
  %38 = load %struct.c67x00_device*, %struct.c67x00_device** %4, align 8
  %39 = load i32, i32* @COMM_EXEC_INT, align 4
  %40 = call i32 @hpi_send_mbox(%struct.c67x00_device* %38, i32 %39)
  %41 = load %struct.c67x00_device*, %struct.c67x00_device** %4, align 8
  %42 = call i32 @ll_recv_msg(%struct.c67x00_device* %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.c67x00_device*, %struct.c67x00_device** %4, align 8
  %44 = getelementptr inbounds %struct.c67x00_device, %struct.c67x00_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hpi_write_word(%struct.c67x00_device*, i32, i32) #1

declare dso_local i32 @COMM_R(i32) #1

declare dso_local i32 @hpi_send_mbox(%struct.c67x00_device*, i32) #1

declare dso_local i32 @ll_recv_msg(%struct.c67x00_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
