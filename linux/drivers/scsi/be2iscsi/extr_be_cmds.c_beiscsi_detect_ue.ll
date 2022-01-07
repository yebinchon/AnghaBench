; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_beiscsi_detect_ue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_beiscsi_detect_ue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, i32 }

@PCICFG_UE_STATUS_LOW = common dso_local global i32 0, align 4
@PCICFG_UE_STATUS_MASK_LOW = common dso_local global i32 0, align 4
@PCICFG_UE_STATUS_HIGH = common dso_local global i32 0, align 4
@PCICFG_UE_STATUS_MASK_HI = common dso_local global i32 0, align 4
@BEISCSI_HBA_IN_UE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"BC_%d : HBA error detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"BC_%d : UE_LOW %s bit set\0A\00", align 1
@desc_ue_status_low = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"BC_%d : UE_HIGH %s bit set\0A\00", align 1
@desc_ue_status_hi = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_detect_ue(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %10 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PCICFG_UE_STATUS_LOW, align 4
  %13 = call i32 @pci_read_config_dword(i32 %11, i32 %12, i32* %6)
  %14 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %15 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PCICFG_UE_STATUS_MASK_LOW, align 4
  %18 = call i32 @pci_read_config_dword(i32 %16, i32 %17, i32* %4)
  %19 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %20 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PCICFG_UE_STATUS_HIGH, align 4
  %23 = call i32 @pci_read_config_dword(i32 %21, i32 %22, i32* %5)
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %25 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PCICFG_UE_STATUS_MASK_HI, align 4
  %28 = call i32 @pci_read_config_dword(i32 %26, i32 %27, i32* %3)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %4, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %3, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %1
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39, %1
  %43 = load i32, i32* @BEISCSI_HBA_IN_UE, align 4
  %44 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %45 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %44, i32 0, i32 0
  %46 = call i32 @set_bit(i32 %43, i32* %45)
  %47 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %48 = load i32, i32* @KERN_ERR, align 4
  %49 = call i32 (%struct.beiscsi_hba*, i32, i8*, ...) @__beiscsi_log(%struct.beiscsi_hba* %47, i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %50

50:                                               ; preds = %42, %39
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %50
  store i64 0, i64* %7, align 8
  br label %54

54:                                               ; preds = %70, %53
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %63 = load i32, i32* @KERN_ERR, align 4
  %64 = load i32*, i32** @desc_ue_status_low, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (%struct.beiscsi_hba*, i32, i8*, ...) @__beiscsi_log(%struct.beiscsi_hba* %62, i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %61, %57
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = ashr i32 %71, 1
  store i32 %72, i32* %6, align 4
  %73 = load i64, i64* %7, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %7, align 8
  br label %54

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75, %50
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %102

79:                                               ; preds = %76
  store i64 0, i64* %7, align 8
  br label %80

80:                                               ; preds = %96, %79
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %80
  %84 = load i32, i32* %5, align 4
  %85 = and i32 %84, 1
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %89 = load i32, i32* @KERN_ERR, align 4
  %90 = load i32*, i32** @desc_ue_status_hi, align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (%struct.beiscsi_hba*, i32, i8*, ...) @__beiscsi_log(%struct.beiscsi_hba* %88, i32 %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %87, %83
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %5, align 4
  %98 = ashr i32 %97, 1
  store i32 %98, i32* %5, align 4
  %99 = load i64, i64* %7, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %7, align 8
  br label %80

101:                                              ; preds = %80
  br label %102

102:                                              ; preds = %101, %76
  %103 = load i32, i32* %8, align 4
  ret i32 %103
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @__beiscsi_log(%struct.beiscsi_hba*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
