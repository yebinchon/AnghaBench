; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_setup_protect_cmnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_setup_protect_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bio* }
%struct.bio = type { i32 }

@BIP_IP_CHECKSUM = common dso_local global i32 0, align 4
@SCSI_PROT_IP_CHECKSUM = common dso_local global i32 0, align 4
@BIP_CTRL_NOCHECK = common dso_local global i32 0, align 4
@SCSI_PROT_GUARD_CHECK = common dso_local global i32 0, align 4
@T10_PI_TYPE3_PROTECTION = common dso_local global i32 0, align 4
@SCSI_PROT_REF_INCREMENT = common dso_local global i32 0, align 4
@SCSI_PROT_REF_CHECK = common dso_local global i32 0, align 4
@SCSI_PROT_TRANSFER_PI = common dso_local global i32 0, align 4
@BIP_DISK_NOCHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.scsi_cmnd*, i32, i32)* @sd_setup_protect_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @sd_setup_protect_cmnd(%struct.scsi_cmnd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.bio*, %struct.bio** %13, align 8
  store %struct.bio* %14, %struct.bio** %7, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = call i32 @rq_data_dir(%struct.TYPE_2__* %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @sd_prot_op(i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %3
  %25 = load %struct.bio*, %struct.bio** %7, align 8
  %26 = load i32, i32* @BIP_IP_CHECKSUM, align 4
  %27 = call i32 @bio_integrity_flagged(%struct.bio* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* @SCSI_PROT_IP_CHECKSUM, align 4
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %29, %24
  %36 = load %struct.bio*, %struct.bio** %7, align 8
  %37 = load i32, i32* @BIP_CTRL_NOCHECK, align 4
  %38 = call i32 @bio_integrity_flagged(%struct.bio* %36, i32 %37)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* @SCSI_PROT_GUARD_CHECK, align 4
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %40, %35
  br label %47

47:                                               ; preds = %46, %3
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @T10_PI_TYPE3_PROTECTION, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %47
  %52 = load i32, i32* @SCSI_PROT_REF_INCREMENT, align 4
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %54 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.bio*, %struct.bio** %7, align 8
  %58 = load i32, i32* @BIP_CTRL_NOCHECK, align 4
  %59 = call i32 @bio_integrity_flagged(%struct.bio* %57, i32 %58)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %51
  %62 = load i32, i32* @SCSI_PROT_REF_CHECK, align 4
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %61, %51
  br label %68

68:                                               ; preds = %67, %47
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %68
  %72 = load i32, i32* @SCSI_PROT_TRANSFER_PI, align 4
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %74 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load %struct.bio*, %struct.bio** %7, align 8
  %78 = load i32, i32* @BIP_DISK_NOCHECK, align 4
  %79 = call i32 @bio_integrity_flagged(%struct.bio* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  store i32 96, i32* %9, align 4
  br label %83

82:                                               ; preds = %71
  store i32 32, i32* %9, align 4
  br label %83

83:                                               ; preds = %82, %81
  br label %84

84:                                               ; preds = %83, %68
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @scsi_set_prot_op(%struct.scsi_cmnd* %85, i32 %86)
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @scsi_set_prot_type(%struct.scsi_cmnd* %88, i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @sd_prot_flag_mask(i32 %91)
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %94 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load i32, i32* %9, align 4
  %98 = trunc i32 %97 to i8
  ret i8 %98
}

declare dso_local i32 @sd_prot_op(i32, i32, i32) #1

declare dso_local i32 @rq_data_dir(%struct.TYPE_2__*) #1

declare dso_local i32 @bio_integrity_flagged(%struct.bio*, i32) #1

declare dso_local i32 @scsi_set_prot_op(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scsi_set_prot_type(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @sd_prot_flag_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
