; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_isa_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_isa_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.asc_board = type { %struct.Scsi_Host*, %struct.device*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@_asc_def_iop_base = common dso_local global i32* null, align 8
@ASC_IOADR_GAP = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"I/O port 0x%x busy\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"probing I/O port 0x%x\0A\00", align 1
@ASC_IS_ISA = common dso_local global i32 0, align 4
@ASC_CHIP_VER_ISA_BIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@advansys_template = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @advansys_isa_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advansys_isa_probe(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.asc_board*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32*, i32** @_asc_def_iop_base, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @ASC_IOADR_GAP, align 4
  %19 = load i32, i32* @DRV_NAME, align 4
  %20 = call i32 @request_region(i32 %17, i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @ASC_DBG(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %81

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @ASC_DBG(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @AscFindSignature(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %76

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @ASC_IS_ISA, align 4
  %37 = call i32 @AscGetChipVersion(i32 %35, i32 %36)
  %38 = load i32, i32* @ASC_CHIP_VER_ISA_BIT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %76

42:                                               ; preds = %34
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  %45 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @advansys_template, i32 24)
  store %struct.Scsi_Host* %45, %struct.Scsi_Host** %8, align 8
  %46 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %47 = icmp ne %struct.Scsi_Host* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  br label %76

49:                                               ; preds = %42
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %51 = call %struct.asc_board* @shost_priv(%struct.Scsi_Host* %50)
  store %struct.asc_board* %51, %struct.asc_board** %9, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @advansys_isa_irq_no(i32 %52)
  %54 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %55 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %58 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %57, i32 0, i32 1
  store %struct.device* %56, %struct.device** %58, align 8
  %59 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %60 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %61 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %60, i32 0, i32 0
  store %struct.Scsi_Host* %59, %struct.Scsi_Host** %61, align 8
  %62 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @ASC_IS_ISA, align 4
  %65 = call i32 @advansys_board_found(%struct.Scsi_Host* %62, i32 %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %49
  br label %73

69:                                               ; preds = %49
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %72 = call i32 @dev_set_drvdata(%struct.device* %70, %struct.Scsi_Host* %71)
  store i32 0, i32* %3, align 4
  br label %81

73:                                               ; preds = %68
  %74 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %75 = call i32 @scsi_host_put(%struct.Scsi_Host* %74)
  br label %76

76:                                               ; preds = %73, %48, %41, %33
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @ASC_IOADR_GAP, align 4
  %79 = call i32 @release_region(i32 %77, i32 %78)
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %76, %69, %22
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @request_region(i32, i32, i32) #1

declare dso_local i32 @ASC_DBG(i32, i8*, i32) #1

declare dso_local i32 @AscFindSignature(i32) #1

declare dso_local i32 @AscGetChipVersion(i32, i32) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local %struct.asc_board* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @advansys_isa_irq_no(i32) #1

declare dso_local i32 @advansys_board_found(%struct.Scsi_Host*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.Scsi_Host*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
