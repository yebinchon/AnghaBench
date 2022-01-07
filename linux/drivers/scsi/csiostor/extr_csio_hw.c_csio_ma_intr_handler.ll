; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_ma_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_ma_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }

@MA_INT_CAUSE_A = common dso_local global i32 0, align 4
@MEM_PERR_INT_CAUSE_F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"MA parity error, parity status %#x\0A\00", align 1
@MA_PARITY_ERROR_STATUS_A = common dso_local global i32 0, align 4
@MEM_WRAP_INT_CAUSE_F = common dso_local global i32 0, align 4
@MA_INT_WRAP_STATUS_A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"MA address wrap-around error by client %u to address %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*)* @csio_ma_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_ma_intr_handler(%struct.csio_hw* %0) #0 {
  %2 = alloca %struct.csio_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %2, align 8
  %5 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %6 = load i32, i32* @MA_INT_CAUSE_A, align 4
  %7 = call i32 @csio_rd_reg32(%struct.csio_hw* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MEM_PERR_INT_CAUSE_F, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %14 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %15 = load i32, i32* @MA_PARITY_ERROR_STATUS_A, align 4
  %16 = call i32 @csio_rd_reg32(%struct.csio_hw* %14, i32 %15)
  %17 = call i32 (%struct.csio_hw*, i8*, i32, ...) @csio_fatal(%struct.csio_hw* %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MEM_WRAP_INT_CAUSE_F, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %25 = load i32, i32* @MA_INT_WRAP_STATUS_A, align 4
  %26 = call i32 @csio_rd_reg32(%struct.csio_hw* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @MEM_WRAP_CLIENT_NUM_G(i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @MEM_WRAP_ADDRESS_G(i32 %30)
  %32 = shl i32 %31, 4
  %33 = call i32 (%struct.csio_hw*, i8*, i32, ...) @csio_fatal(%struct.csio_hw* %27, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %23, %18
  %35 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @MA_INT_CAUSE_A, align 4
  %38 = call i32 @csio_wr_reg32(%struct.csio_hw* %35, i32 %36, i32 %37)
  %39 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %40 = call i32 @csio_hw_fatal_err(%struct.csio_hw* %39)
  ret void
}

declare dso_local i32 @csio_rd_reg32(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_fatal(%struct.csio_hw*, i8*, i32, ...) #1

declare dso_local i32 @MEM_WRAP_CLIENT_NUM_G(i32) #1

declare dso_local i32 @MEM_WRAP_ADDRESS_G(i32) #1

declare dso_local i32 @csio_wr_reg32(%struct.csio_hw*, i32, i32) #1

declare dso_local i32 @csio_hw_fatal_err(%struct.csio_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
