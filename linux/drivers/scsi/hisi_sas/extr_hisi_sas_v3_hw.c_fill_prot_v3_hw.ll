; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_fill_prot_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_fill_prot_v3_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.hisi_sas_protect_iu_v3_hw = type { i32, i32, i8*, i8* }

@T10_INSRT_EN_MSK = common dso_local global i32 0, align 4
@T10_RMV_EN_MSK = common dso_local global i32 0, align 4
@T10_CHK_EN_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"prot_op(0x%x) is not valid\0A\00", align 1
@USR_DATA_BLOCK_SZ_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"protection interval (0x%x) invalid\0A\00", align 1
@INCR_LBRT_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*, %struct.hisi_sas_protect_iu_v3_hw*)* @fill_prot_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_prot_v3_hw(%struct.scsi_cmnd* %0, %struct.hisi_sas_protect_iu_v3_hw* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.hisi_sas_protect_iu_v3_hw*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store %struct.hisi_sas_protect_iu_v3_hw* %1, %struct.hisi_sas_protect_iu_v3_hw** %4, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %9 = call zeroext i8 @scsi_get_prot_op(%struct.scsi_cmnd* %8)
  store i8 %9, i8* %5, align 1
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %11 = call i32 @scsi_prot_interval(%struct.scsi_cmnd* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @t10_pi_ref_tag(i32 %14)
  store i8* %15, i8** %7, align 8
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i32
  switch i32 %17, label %94 [
    i32 133, label %18
    i32 131, label %27
    i32 132, label %44
    i32 130, label %59
    i32 128, label %68
    i32 129, label %79
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @T10_INSRT_EN_MSK, align 4
  %20 = load %struct.hisi_sas_protect_iu_v3_hw*, %struct.hisi_sas_protect_iu_v3_hw** %4, align 8
  %21 = getelementptr inbounds %struct.hisi_sas_protect_iu_v3_hw, %struct.hisi_sas_protect_iu_v3_hw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.hisi_sas_protect_iu_v3_hw*, %struct.hisi_sas_protect_iu_v3_hw** %4, align 8
  %26 = getelementptr inbounds %struct.hisi_sas_protect_iu_v3_hw, %struct.hisi_sas_protect_iu_v3_hw* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  br label %98

27:                                               ; preds = %2
  %28 = load i32, i32* @T10_RMV_EN_MSK, align 4
  %29 = load i32, i32* @T10_CHK_EN_MSK, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.hisi_sas_protect_iu_v3_hw*, %struct.hisi_sas_protect_iu_v3_hw** %4, align 8
  %32 = getelementptr inbounds %struct.hisi_sas_protect_iu_v3_hw, %struct.hisi_sas_protect_iu_v3_hw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.hisi_sas_protect_iu_v3_hw*, %struct.hisi_sas_protect_iu_v3_hw** %4, align 8
  %37 = getelementptr inbounds %struct.hisi_sas_protect_iu_v3_hw, %struct.hisi_sas_protect_iu_v3_hw* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %39 = call i32 @get_prot_chk_msk_v3_hw(%struct.scsi_cmnd* %38)
  %40 = load %struct.hisi_sas_protect_iu_v3_hw*, %struct.hisi_sas_protect_iu_v3_hw** %4, align 8
  %41 = getelementptr inbounds %struct.hisi_sas_protect_iu_v3_hw, %struct.hisi_sas_protect_iu_v3_hw* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %98

44:                                               ; preds = %2
  %45 = load i32, i32* @T10_CHK_EN_MSK, align 4
  %46 = load %struct.hisi_sas_protect_iu_v3_hw*, %struct.hisi_sas_protect_iu_v3_hw** %4, align 8
  %47 = getelementptr inbounds %struct.hisi_sas_protect_iu_v3_hw, %struct.hisi_sas_protect_iu_v3_hw* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.hisi_sas_protect_iu_v3_hw*, %struct.hisi_sas_protect_iu_v3_hw** %4, align 8
  %52 = getelementptr inbounds %struct.hisi_sas_protect_iu_v3_hw, %struct.hisi_sas_protect_iu_v3_hw* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %54 = call i32 @get_prot_chk_msk_v3_hw(%struct.scsi_cmnd* %53)
  %55 = load %struct.hisi_sas_protect_iu_v3_hw*, %struct.hisi_sas_protect_iu_v3_hw** %4, align 8
  %56 = getelementptr inbounds %struct.hisi_sas_protect_iu_v3_hw, %struct.hisi_sas_protect_iu_v3_hw* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %98

59:                                               ; preds = %2
  %60 = load i32, i32* @T10_INSRT_EN_MSK, align 4
  %61 = load %struct.hisi_sas_protect_iu_v3_hw*, %struct.hisi_sas_protect_iu_v3_hw** %4, align 8
  %62 = getelementptr inbounds %struct.hisi_sas_protect_iu_v3_hw, %struct.hisi_sas_protect_iu_v3_hw* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load %struct.hisi_sas_protect_iu_v3_hw*, %struct.hisi_sas_protect_iu_v3_hw** %4, align 8
  %67 = getelementptr inbounds %struct.hisi_sas_protect_iu_v3_hw, %struct.hisi_sas_protect_iu_v3_hw* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  br label %98

68:                                               ; preds = %2
  %69 = load i32, i32* @T10_RMV_EN_MSK, align 4
  %70 = load i32, i32* @T10_CHK_EN_MSK, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.hisi_sas_protect_iu_v3_hw*, %struct.hisi_sas_protect_iu_v3_hw** %4, align 8
  %73 = getelementptr inbounds %struct.hisi_sas_protect_iu_v3_hw, %struct.hisi_sas_protect_iu_v3_hw* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load %struct.hisi_sas_protect_iu_v3_hw*, %struct.hisi_sas_protect_iu_v3_hw** %4, align 8
  %78 = getelementptr inbounds %struct.hisi_sas_protect_iu_v3_hw, %struct.hisi_sas_protect_iu_v3_hw* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  br label %98

79:                                               ; preds = %2
  %80 = load i32, i32* @T10_CHK_EN_MSK, align 4
  %81 = load %struct.hisi_sas_protect_iu_v3_hw*, %struct.hisi_sas_protect_iu_v3_hw** %4, align 8
  %82 = getelementptr inbounds %struct.hisi_sas_protect_iu_v3_hw, %struct.hisi_sas_protect_iu_v3_hw* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load %struct.hisi_sas_protect_iu_v3_hw*, %struct.hisi_sas_protect_iu_v3_hw** %4, align 8
  %87 = getelementptr inbounds %struct.hisi_sas_protect_iu_v3_hw, %struct.hisi_sas_protect_iu_v3_hw* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %89 = call i32 @get_prot_chk_msk_v3_hw(%struct.scsi_cmnd* %88)
  %90 = load %struct.hisi_sas_protect_iu_v3_hw*, %struct.hisi_sas_protect_iu_v3_hw** %4, align 8
  %91 = getelementptr inbounds %struct.hisi_sas_protect_iu_v3_hw, %struct.hisi_sas_protect_iu_v3_hw* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %98

94:                                               ; preds = %2
  %95 = load i8, i8* %5, align 1
  %96 = zext i8 %95 to i32
  %97 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %94, %79, %68, %59, %44, %27, %18
  %99 = load i32, i32* %6, align 4
  switch i32 %99, label %115 [
    i32 512, label %100
    i32 4096, label %101
    i32 520, label %108
  ]

100:                                              ; preds = %98
  br label %118

101:                                              ; preds = %98
  %102 = load i32, i32* @USR_DATA_BLOCK_SZ_OFF, align 4
  %103 = shl i32 1, %102
  %104 = load %struct.hisi_sas_protect_iu_v3_hw*, %struct.hisi_sas_protect_iu_v3_hw** %4, align 8
  %105 = getelementptr inbounds %struct.hisi_sas_protect_iu_v3_hw, %struct.hisi_sas_protect_iu_v3_hw* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %118

108:                                              ; preds = %98
  %109 = load i32, i32* @USR_DATA_BLOCK_SZ_OFF, align 4
  %110 = shl i32 2, %109
  %111 = load %struct.hisi_sas_protect_iu_v3_hw*, %struct.hisi_sas_protect_iu_v3_hw** %4, align 8
  %112 = getelementptr inbounds %struct.hisi_sas_protect_iu_v3_hw, %struct.hisi_sas_protect_iu_v3_hw* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %118

115:                                              ; preds = %98
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %115, %108, %101, %100
  %119 = load i32, i32* @INCR_LBRT_MSK, align 4
  %120 = load %struct.hisi_sas_protect_iu_v3_hw*, %struct.hisi_sas_protect_iu_v3_hw** %4, align 8
  %121 = getelementptr inbounds %struct.hisi_sas_protect_iu_v3_hw, %struct.hisi_sas_protect_iu_v3_hw* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  ret void
}

declare dso_local zeroext i8 @scsi_get_prot_op(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_prot_interval(%struct.scsi_cmnd*) #1

declare dso_local i8* @t10_pi_ref_tag(i32) #1

declare dso_local i32 @get_prot_chk_msk_v3_hw(%struct.scsi_cmnd*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
