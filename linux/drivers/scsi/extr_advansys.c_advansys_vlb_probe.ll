; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_vlb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_vlb_probe.c"
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
@ASC_IS_VL = common dso_local global i32 0, align 4
@ASC_CHIP_MAX_VER_VL = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@advansys_template = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @advansys_vlb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advansys_vlb_probe(%struct.device* %0, i32 %1) #0 {
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
  br label %75

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @ASC_IS_VL, align 4
  %37 = call i64 @AscGetChipVersion(i32 %35, i32 %36)
  %38 = load i64, i64* @ASC_CHIP_MAX_VER_VL, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %75

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  %44 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @advansys_template, i32 24)
  store %struct.Scsi_Host* %44, %struct.Scsi_Host** %8, align 8
  %45 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %46 = icmp ne %struct.Scsi_Host* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %75

48:                                               ; preds = %41
  %49 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %50 = call %struct.asc_board* @shost_priv(%struct.Scsi_Host* %49)
  store %struct.asc_board* %50, %struct.asc_board** %9, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @advansys_vlb_irq_no(i32 %51)
  %53 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %54 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %57 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %56, i32 0, i32 1
  store %struct.device* %55, %struct.device** %57, align 8
  %58 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %59 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %60 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %59, i32 0, i32 0
  store %struct.Scsi_Host* %58, %struct.Scsi_Host** %60, align 8
  %61 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @ASC_IS_VL, align 4
  %64 = call i32 @advansys_board_found(%struct.Scsi_Host* %61, i32 %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %48
  br label %72

68:                                               ; preds = %48
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %71 = call i32 @dev_set_drvdata(%struct.device* %69, %struct.Scsi_Host* %70)
  store i32 0, i32* %3, align 4
  br label %81

72:                                               ; preds = %67
  %73 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %74 = call i32 @scsi_host_put(%struct.Scsi_Host* %73)
  br label %75

75:                                               ; preds = %72, %47, %40, %33
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @ASC_IOADR_GAP, align 4
  %78 = call i32 @release_region(i32 %76, i32 %77)
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %75, %68, %22
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @request_region(i32, i32, i32) #1

declare dso_local i32 @ASC_DBG(i32, i8*, i32) #1

declare dso_local i32 @AscFindSignature(i32) #1

declare dso_local i64 @AscGetChipVersion(i32, i32) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local %struct.asc_board* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @advansys_vlb_irq_no(i32) #1

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
