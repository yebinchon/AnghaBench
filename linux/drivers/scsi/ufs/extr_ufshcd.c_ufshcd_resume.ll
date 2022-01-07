; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@UFS_ACTIVE_PWR_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*, i32)* @ufshcd_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_resume(%struct.ufs_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.ufs_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %8 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %10 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %13 = call i32 @ufshcd_hba_vreg_set_hpm(%struct.ufs_hba* %12)
  %14 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %15 = call i32 @ufshcd_setup_clocks(%struct.ufs_hba* %14, i32 1)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %132

19:                                               ; preds = %2
  %20 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %21 = call i32 @ufshcd_enable_irq(%struct.ufs_hba* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %118

25:                                               ; preds = %19
  %26 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %27 = call i32 @ufshcd_vreg_set_hpm(%struct.ufs_hba* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %118

31:                                               ; preds = %25
  %32 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @ufshcd_vops_resume(%struct.ufs_hba* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %115

38:                                               ; preds = %31
  %39 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %40 = call i64 @ufshcd_is_link_hibern8(%struct.ufs_hba* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %44 = call i32 @ufshcd_uic_hibern8_exit(%struct.ufs_hba* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %49 = call i32 @ufshcd_set_link_active(%struct.ufs_hba* %48)
  br label %51

50:                                               ; preds = %42
  br label %111

51:                                               ; preds = %47
  br label %68

52:                                               ; preds = %38
  %53 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %54 = call i64 @ufshcd_is_link_off(%struct.ufs_hba* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %58 = call i32 @ufshcd_host_reset_and_restore(%struct.ufs_hba* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %63 = call i32 @ufshcd_is_link_active(%struct.ufs_hba* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61, %56
  br label %111

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %52
  br label %68

68:                                               ; preds = %67, %51
  %69 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %70 = call i32 @ufshcd_is_ufs_dev_active(%struct.ufs_hba* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %74 = load i32, i32* @UFS_ACTIVE_PWR_MODE, align 4
  %75 = call i32 @ufshcd_set_dev_pwr_mode(%struct.ufs_hba* %73, i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %107

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %68
  %81 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %82 = call i64 @ufshcd_keep_autobkops_enabled_except_suspend(%struct.ufs_hba* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %86 = call i32 @ufshcd_enable_auto_bkops(%struct.ufs_hba* %85)
  br label %90

87:                                               ; preds = %80
  %88 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %89 = call i32 @ufshcd_urgent_bkops(%struct.ufs_hba* %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %92 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  %94 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %95 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %101 = call i32 @ufshcd_resume_clkscaling(%struct.ufs_hba* %100)
  br label %102

102:                                              ; preds = %99, %90
  %103 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %104 = call i32 @ufshcd_release(%struct.ufs_hba* %103)
  %105 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %106 = call i32 @ufshcd_auto_hibern8_enable(%struct.ufs_hba* %105)
  br label %132

107:                                              ; preds = %78
  %108 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @ufshcd_link_state_transition(%struct.ufs_hba* %108, i32 %109, i32 0)
  br label %111

111:                                              ; preds = %107, %65, %50
  %112 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @ufshcd_vops_suspend(%struct.ufs_hba* %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %37
  %116 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %117 = call i32 @ufshcd_vreg_set_lpm(%struct.ufs_hba* %116)
  br label %118

118:                                              ; preds = %115, %30, %24
  %119 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %120 = call i32 @ufshcd_disable_irq(%struct.ufs_hba* %119)
  %121 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %122 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %118
  %127 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %128 = call i32 @ufshcd_suspend_clkscaling(%struct.ufs_hba* %127)
  br label %129

129:                                              ; preds = %126, %118
  %130 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %131 = call i32 @ufshcd_setup_clocks(%struct.ufs_hba* %130, i32 0)
  br label %132

132:                                              ; preds = %129, %102, %18
  %133 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %134 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %133, i32 0, i32 0
  store i32 0, i32* %134, align 8
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %139 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @ufshcd_update_reg_hist(i32* %140, i32 %141)
  br label %143

143:                                              ; preds = %137, %132
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @ufshcd_hba_vreg_set_hpm(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_setup_clocks(%struct.ufs_hba*, i32) #1

declare dso_local i32 @ufshcd_enable_irq(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_vreg_set_hpm(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_vops_resume(%struct.ufs_hba*, i32) #1

declare dso_local i64 @ufshcd_is_link_hibern8(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_uic_hibern8_exit(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_set_link_active(%struct.ufs_hba*) #1

declare dso_local i64 @ufshcd_is_link_off(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_host_reset_and_restore(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_is_link_active(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_is_ufs_dev_active(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_set_dev_pwr_mode(%struct.ufs_hba*, i32) #1

declare dso_local i64 @ufshcd_keep_autobkops_enabled_except_suspend(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_enable_auto_bkops(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_urgent_bkops(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_resume_clkscaling(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_release(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_auto_hibern8_enable(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_link_state_transition(%struct.ufs_hba*, i32, i32) #1

declare dso_local i32 @ufshcd_vops_suspend(%struct.ufs_hba*, i32) #1

declare dso_local i32 @ufshcd_vreg_set_lpm(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_disable_irq(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_suspend_clkscaling(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_update_reg_hist(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
