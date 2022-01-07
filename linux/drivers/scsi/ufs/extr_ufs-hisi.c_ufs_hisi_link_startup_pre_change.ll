; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-hisi.c_ufs_hisi_link_startup_pre_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-hisi.c_ufs_hisi_link_startup_pre_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }
%struct.ufs_hisi_host = type { i32 }

@UFS_HISI_CAP_PHY10nm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Warring!!! Unipro VS_mphy_disable is 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"ufs_hisi_check_hibern8 error\0A\00", align 1
@UFS_HCLKDIV_NORMAL_VALUE = common dso_local global i32 0, align 4
@UFS_REG_HCLKDIV = common dso_local global i32 0, align 4
@REG_AUTO_HIBERNATE_IDLE_TIMER = common dso_local global i32 0, align 4
@UFS_AHIT_AH8ITV_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"WARN: close VS_Mk2ExtnSupport failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*)* @ufs_hisi_link_startup_pre_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_hisi_link_startup_pre_change(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  %3 = alloca %struct.ufs_hisi_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %7 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %8 = call %struct.ufs_hisi_host* @ufshcd_get_variant(%struct.ufs_hba* %7)
  store %struct.ufs_hisi_host* %8, %struct.ufs_hisi_host** %3, align 8
  %9 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %10 = call i32 @UIC_ARG_MIB_SEL(i32 53441, i32 0)
  %11 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %9, i32 %10, i32 1)
  %12 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %13 = call i32 @UIC_ARG_MIB_SEL(i32 5482, i32 0)
  %14 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %12, i32 %13, i32 2)
  %15 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %16 = call i32 @UIC_ARG_MIB_SEL(i32 33044, i32 0)
  %17 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %15, i32 %16, i32 1)
  %18 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %19 = call i32 @UIC_ARG_MIB_SEL(i32 33057, i32 0)
  %20 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %18, i32 %19, i32 45)
  %21 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %22 = call i32 @UIC_ARG_MIB_SEL(i32 33058, i32 0)
  %23 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %21, i32 %22, i32 1)
  %24 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %25 = getelementptr inbounds %struct.ufs_hisi_host, %struct.ufs_hisi_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @UFS_HISI_CAP_PHY10nm, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %32 = call i32 @UIC_ARG_MIB_SEL(i32 33063, i32 0)
  %33 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %31, i32 %32, i32 152)
  %34 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %35 = call i32 @UIC_ARG_MIB_SEL(i32 33064, i32 0)
  %36 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %34, i32 %35, i32 1)
  br label %37

37:                                               ; preds = %30, %1
  %38 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %39 = call i32 @UIC_ARG_MIB_SEL(i32 53381, i32 0)
  %40 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %38, i32 %39, i32 1)
  %41 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %42 = call i32 @UIC_ARG_MIB_SEL(i32 32781, i32 4)
  %43 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %41, i32 %42, i32 88)
  %44 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %45 = call i32 @UIC_ARG_MIB_SEL(i32 32781, i32 5)
  %46 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %44, i32 %45, i32 88)
  %47 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %48 = call i32 @UIC_ARG_MIB_SEL(i32 32782, i32 4)
  %49 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %47, i32 %48, i32 11)
  %50 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %51 = call i32 @UIC_ARG_MIB_SEL(i32 32782, i32 5)
  %52 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %50, i32 %51, i32 11)
  %53 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %54 = call i32 @UIC_ARG_MIB_SEL(i32 32777, i32 4)
  %55 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %53, i32 %54, i32 1)
  %56 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %57 = call i32 @UIC_ARG_MIB_SEL(i32 32777, i32 5)
  %58 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %56, i32 %57, i32 1)
  %59 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %60 = call i32 @UIC_ARG_MIB_SEL(i32 53381, i32 0)
  %61 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %59, i32 %60, i32 1)
  %62 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %63 = call i32 @UIC_ARG_MIB_SEL(i32 33043, i32 0)
  %64 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %62, i32 %63, i32 1)
  %65 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %66 = call i32 @UIC_ARG_MIB_SEL(i32 53381, i32 0)
  %67 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %65, i32 %66, i32 1)
  %68 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %69 = getelementptr inbounds %struct.ufs_hisi_host, %struct.ufs_hisi_host* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @UFS_HISI_CAP_PHY10nm, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %37
  %75 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %76 = call i32 @UIC_ARG_MIB_SEL(i32 146, i32 4)
  %77 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %75, i32 %76, i32 10)
  %78 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %79 = call i32 @UIC_ARG_MIB_SEL(i32 146, i32 5)
  %80 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %78, i32 %79, i32 10)
  %81 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %82 = call i32 @UIC_ARG_MIB_SEL(i32 143, i32 4)
  %83 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %81, i32 %82, i32 10)
  %84 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %85 = call i32 @UIC_ARG_MIB_SEL(i32 143, i32 5)
  %86 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %84, i32 %85, i32 10)
  br label %94

87:                                               ; preds = %37
  %88 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %89 = call i32 @UIC_ARG_MIB_SEL(i32 143, i32 4)
  %90 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %88, i32 %89, i32 7)
  %91 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %92 = call i32 @UIC_ARG_MIB_SEL(i32 143, i32 5)
  %93 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %91, i32 %92, i32 7)
  br label %94

94:                                               ; preds = %87, %74
  %95 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %96 = call i32 @UIC_ARG_MIB_SEL(i32 149, i32 4)
  %97 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %95, i32 %96, i32 79)
  %98 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %99 = call i32 @UIC_ARG_MIB_SEL(i32 149, i32 5)
  %100 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %98, i32 %99, i32 79)
  %101 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %102 = call i32 @UIC_ARG_MIB_SEL(i32 148, i32 4)
  %103 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %101, i32 %102, i32 79)
  %104 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %105 = call i32 @UIC_ARG_MIB_SEL(i32 148, i32 5)
  %106 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %104, i32 %105, i32 79)
  %107 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %108 = call i32 @UIC_ARG_MIB_SEL(i32 139, i32 4)
  %109 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %107, i32 %108, i32 79)
  %110 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %111 = call i32 @UIC_ARG_MIB_SEL(i32 139, i32 5)
  %112 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %110, i32 %111, i32 79)
  %113 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %114 = call i32 @UIC_ARG_MIB_SEL(i32 15, i32 0)
  %115 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %113, i32 %114, i32 5)
  %116 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %117 = call i32 @UIC_ARG_MIB_SEL(i32 15, i32 1)
  %118 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %116, i32 %117, i32 5)
  %119 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %120 = call i32 @UIC_ARG_MIB_SEL(i32 53381, i32 0)
  %121 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %119, i32 %120, i32 1)
  %122 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %123 = call i32 @UIC_ARG_MIB_SEL(i32 53441, i32 0)
  %124 = call i32 @ufshcd_dme_get(%struct.ufs_hba* %122, i32 %123, i32* %5)
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 1
  br i1 %126, label %127, label %133

127:                                              ; preds = %94
  %128 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %129 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 (i32, i8*, ...) @dev_info(i32 %130, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %127, %94
  %134 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %135 = call i32 @UIC_ARG_MIB_SEL(i32 53441, i32 0)
  %136 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %134, i32 %135, i32 0)
  %137 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %138 = call i32 @ufs_hisi_check_hibern8(%struct.ufs_hba* %137)
  store i32 %138, i32* %4, align 4
  %139 = load i32, i32* %4, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %133
  %142 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %143 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @dev_err(i32 %144, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %146

146:                                              ; preds = %141, %133
  %147 = load %struct.ufs_hisi_host*, %struct.ufs_hisi_host** %3, align 8
  %148 = getelementptr inbounds %struct.ufs_hisi_host, %struct.ufs_hisi_host* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @UFS_HISI_CAP_PHY10nm, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %146
  %154 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %155 = load i32, i32* @UFS_HCLKDIV_NORMAL_VALUE, align 4
  %156 = load i32, i32* @UFS_REG_HCLKDIV, align 4
  %157 = call i32 @ufshcd_writel(%struct.ufs_hba* %154, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %153, %146
  %159 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %160 = load i32, i32* @REG_AUTO_HIBERNATE_IDLE_TIMER, align 4
  %161 = call i32 @ufshcd_readl(%struct.ufs_hba* %159, i32 %160)
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @UFS_AHIT_AH8ITV_MASK, align 4
  %164 = xor i32 %163, -1
  %165 = and i32 %162, %164
  store i32 %165, i32* %6, align 4
  %166 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @REG_AUTO_HIBERNATE_IDLE_TIMER, align 4
  %169 = call i32 @ufshcd_writel(%struct.ufs_hba* %166, i32 %167, i32 %168)
  %170 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %171 = call i32 @UIC_ARG_MIB_SEL(i32 5470, i32 0)
  %172 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %170, i32 %171, i32 0)
  %173 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %174 = call i32 @UIC_ARG_MIB_SEL(i32 53419, i32 0)
  %175 = call i32 @ufshcd_dme_set(%struct.ufs_hba* %173, i32 %174, i32 0)
  %176 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %177 = call i32 @UIC_ARG_MIB_SEL(i32 53419, i32 0)
  %178 = call i32 @ufshcd_dme_get(%struct.ufs_hba* %176, i32 %177, i32* %5)
  %179 = load i32, i32* %5, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %158
  %182 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %183 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32, i8*, ...) @dev_info(i32 %184, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %186

186:                                              ; preds = %181, %158
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local %struct.ufs_hisi_host* @ufshcd_get_variant(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_dme_set(%struct.ufs_hba*, i32, i32) #1

declare dso_local i32 @UIC_ARG_MIB_SEL(i32, i32) #1

declare dso_local i32 @ufshcd_dme_get(%struct.ufs_hba*, i32, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @ufs_hisi_check_hibern8(%struct.ufs_hba*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ufshcd_writel(%struct.ufs_hba*, i32, i32) #1

declare dso_local i32 @ufshcd_readl(%struct.ufs_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
