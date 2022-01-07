; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_reset_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_reset_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@AF2_COREDUMP_AVAIL = common dso_local global i32 0, align 4
@AF2_COREDUMP_SAVED = common dso_local global i32 0, align 4
@MW_DATA_ADDR_SRAM = common dso_local global i64 0, align 8
@ESAS2R_FWCOREDUMP_SZ = common dso_local global i32 0, align 4
@MVR_FREY_B2 = common dso_local global i64 0, align 8
@MU_CTL_STATUS_IN_B2 = common dso_local global i32 0, align 4
@MU_CTL_IN_FULL_RST2 = common dso_local global i32 0, align 4
@MU_CTL_STATUS_IN = common dso_local global i32 0, align 4
@MU_CTL_IN_FULL_RST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_reset_chip(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  %3 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %4 = call i32 @esas2r_is_adapter_present(%struct.esas2r_adapter* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %56

7:                                                ; preds = %1
  %8 = load i32, i32* @AF2_COREDUMP_AVAIL, align 4
  %9 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %9, i32 0, i32 1
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %7
  %14 = load i32, i32* @AF2_COREDUMP_SAVED, align 4
  %15 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %15, i32 0, i32 1
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %13
  %20 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %21 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* @MW_DATA_ADDR_SRAM, align 8
  %25 = add nsw i64 %24, 524288
  %26 = load i32, i32* @ESAS2R_FWCOREDUMP_SZ, align 4
  %27 = call i32 @esas2r_read_mem_block(%struct.esas2r_adapter* %20, i32 %23, i64 %25, i32 %26)
  %28 = load i32, i32* @AF2_COREDUMP_SAVED, align 4
  %29 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %29, i32 0, i32 1
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  br label %32

32:                                               ; preds = %19, %13, %7
  %33 = load i32, i32* @AF2_COREDUMP_AVAIL, align 4
  %34 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %34, i32 0, i32 1
  %36 = call i32 @clear_bit(i32 %33, i32* %35)
  %37 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MVR_FREY_B2, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %46 = load i32, i32* @MU_CTL_STATUS_IN_B2, align 4
  %47 = load i32, i32* @MU_CTL_IN_FULL_RST2, align 4
  %48 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %45, i32 %46, i32 %47)
  br label %54

49:                                               ; preds = %32
  %50 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %51 = load i32, i32* @MU_CTL_STATUS_IN, align 4
  %52 = load i32, i32* @MU_CTL_IN_FULL_RST, align 4
  %53 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = call i32 @mdelay(i32 10)
  br label %56

56:                                               ; preds = %54, %6
  ret void
}

declare dso_local i32 @esas2r_is_adapter_present(%struct.esas2r_adapter*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @esas2r_read_mem_block(%struct.esas2r_adapter*, i32, i64, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @esas2r_write_register_dword(%struct.esas2r_adapter*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
