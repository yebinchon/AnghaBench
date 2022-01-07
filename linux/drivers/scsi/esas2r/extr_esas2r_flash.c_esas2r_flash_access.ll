; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_flash_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_flash_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }

@DRBL_FLASH_REQ = common dso_local global i32 0, align 4
@MU_DOORBELL_IN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@AF_CHPRST_PENDING = common dso_local global i32 0, align 4
@AF_DISC_PENDING = common dso_local global i32 0, align 4
@MU_INT_STATUS_OUT = common dso_local global i32 0, align 4
@MU_INTSTAT_DRBL = common dso_local global i32 0, align 4
@MU_DOORBELL_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"flash access timeout\00", align 1
@DRBL_FLASH_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"flash release timeout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esas2r_adapter*, i32)* @esas2r_flash_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esas2r_flash_access(%struct.esas2r_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.esas2r_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @DRBL_FLASH_REQ, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %15 = call i32 @esas2r_disable_chip_interrupts(%struct.esas2r_adapter* %14)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %18 = load i32, i32* @MU_DOORBELL_IN, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %17, i32 %18, i32 %19)
  %21 = load i32, i32* @jiffies, align 4
  %22 = call i32 @jiffies_to_msecs(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @AF_CHPRST_PENDING, align 4
  %24 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %24, i32 0, i32 0
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %16
  %29 = load i32, i32* @AF_DISC_PENDING, align 4
  %30 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %30, i32 0, i32 0
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %16
  store i32 40000, i32* %7, align 4
  br label %36

35:                                               ; preds = %28
  store i32 5000, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %36, %83
  %38 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %39 = load i32, i32* @MU_INT_STATUS_OUT, align 4
  %40 = call i32 @esas2r_read_register_dword(%struct.esas2r_adapter* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @MU_INTSTAT_DRBL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %37
  %46 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %47 = load i32, i32* @MU_DOORBELL_OUT, align 4
  %48 = call i32 @esas2r_read_register_dword(%struct.esas2r_adapter* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %50 = load i32, i32* @MU_DOORBELL_OUT, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %49, i32 %50, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %84

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %37
  %60 = call i32 @msecs_to_jiffies(i32 100)
  %61 = call i32 @schedule_timeout_interruptible(i32 %60)
  %62 = load i32, i32* @jiffies, align 4
  %63 = call i32 @jiffies_to_msecs(i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = sub nsw i32 %63, %64
  %66 = load i32, i32* %7, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %59
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @DRBL_FLASH_REQ, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %75 = load i32, i32* @MU_DOORBELL_IN, align 4
  %76 = load i32, i32* @DRBL_FLASH_DONE, align 4
  %77 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %74, i32 %75, i32 %76)
  %78 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %79 = call i32 @esas2r_enable_chip_interrupts(%struct.esas2r_adapter* %78)
  br label %82

80:                                               ; preds = %68
  %81 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %72
  store i32 0, i32* %3, align 4
  br label %92

83:                                               ; preds = %59
  br label %37

84:                                               ; preds = %57
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @DRBL_FLASH_DONE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %90 = call i32 @esas2r_enable_chip_interrupts(%struct.esas2r_adapter* %89)
  br label %91

91:                                               ; preds = %88, %84
  store i32 1, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %82
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @esas2r_disable_chip_interrupts(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_write_register_dword(%struct.esas2r_adapter*, i32, i32) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @esas2r_read_register_dword(%struct.esas2r_adapter*, i32) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @esas2r_hdebug(i8*) #1

declare dso_local i32 @esas2r_enable_chip_interrupts(%struct.esas2r_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
