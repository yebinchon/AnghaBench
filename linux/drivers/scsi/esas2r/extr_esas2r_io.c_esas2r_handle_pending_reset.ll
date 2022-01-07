; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_io.c_esas2r_handle_pending_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_io.c_esas2r_handle_pending_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i64, i32, i32, i32 }

@ESAS2R_CHPRST_WAIT_TIME = common dso_local global i64 0, align 8
@ESAS2R_CHPRST_TIME = common dso_local global i64 0, align 8
@MU_DOORBELL_OUT = common dso_local global i32 0, align 4
@DRBL_FORCE_INT = common dso_local global i64 0, align 8
@DRBL_FW_VER_MSK = common dso_local global i64 0, align 8
@DRBL_FW_VER_0 = common dso_local global i64 0, align 8
@AF_CHPRST_DETECTED = common dso_local global i32 0, align 4
@AF_LEGACY_SGE_MODE = common dso_local global i32 0, align 4
@esas2r_build_sg_list_sge = common dso_local global i32 0, align 4
@DRBL_FW_VER_1 = common dso_local global i64 0, align 8
@esas2r_build_sg_list_prd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, i64)* @esas2r_handle_pending_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_handle_pending_reset(%struct.esas2r_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %8, %11
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @ESAS2R_CHPRST_WAIT_TIME, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %88

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @ESAS2R_CHPRST_TIME, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %23 = call i32 @esas2r_local_reset_adapter(%struct.esas2r_adapter* %22)
  br label %87

24:                                               ; preds = %17
  %25 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %26 = load i32, i32* @MU_DOORBELL_OUT, align 4
  %27 = call i64 @esas2r_read_register_dword(%struct.esas2r_adapter* %25, i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %28, 4294967295
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @DRBL_FORCE_INT, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30, %24
  %36 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %37 = call i32 @esas2r_force_interrupt(%struct.esas2r_adapter* %36)
  br label %86

38:                                               ; preds = %30
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @DRBL_FW_VER_MSK, align 8
  %41 = and i64 %39, %40
  store i64 %41, i64* %7, align 8
  %42 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %43 = load i32, i32* @MU_DOORBELL_OUT, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %42, i32 %43, i64 %44)
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @DRBL_FW_VER_0, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %38
  %50 = load i32, i32* @AF_CHPRST_DETECTED, align 4
  %51 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %51, i32 0, i32 3
  %53 = call i32 @set_bit(i32 %50, i32* %52)
  %54 = load i32, i32* @AF_LEGACY_SGE_MODE, align 4
  %55 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %55, i32 0, i32 3
  %57 = call i32 @set_bit(i32 %54, i32* %56)
  %58 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %58, i32 0, i32 1
  store i32 128, i32* %59, align 8
  %60 = load i32, i32* @esas2r_build_sg_list_sge, align 4
  %61 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  br label %85

63:                                               ; preds = %38
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @DRBL_FW_VER_1, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load i32, i32* @AF_CHPRST_DETECTED, align 4
  %69 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %70 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %69, i32 0, i32 3
  %71 = call i32 @set_bit(i32 %68, i32* %70)
  %72 = load i32, i32* @AF_LEGACY_SGE_MODE, align 4
  %73 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %73, i32 0, i32 3
  %75 = call i32 @clear_bit(i32 %72, i32* %74)
  %76 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %76, i32 0, i32 1
  store i32 1024, i32* %77, align 8
  %78 = load i32, i32* @esas2r_build_sg_list_prd, align 4
  %79 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  br label %84

81:                                               ; preds = %63
  %82 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %83 = call i32 @esas2r_local_reset_adapter(%struct.esas2r_adapter* %82)
  br label %84

84:                                               ; preds = %81, %67
  br label %85

85:                                               ; preds = %84, %49
  br label %86

86:                                               ; preds = %85, %35
  br label %87

87:                                               ; preds = %86, %21
  br label %88

88:                                               ; preds = %87, %16
  ret void
}

declare dso_local i32 @esas2r_local_reset_adapter(%struct.esas2r_adapter*) #1

declare dso_local i64 @esas2r_read_register_dword(%struct.esas2r_adapter*, i32) #1

declare dso_local i32 @esas2r_force_interrupt(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_write_register_dword(%struct.esas2r_adapter*, i32, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
