; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_vreg_set_hpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_vreg_set_hpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { %struct.TYPE_3__, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*)* @ufshcd_vreg_set_hpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_vreg_set_hpm(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  %3 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %5 = call i64 @ufshcd_is_ufs_dev_poweroff(%struct.ufs_hba* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %9 = call i64 @ufshcd_is_link_off(%struct.ufs_hba* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %13 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %19 = call i32 @ufshcd_setup_vreg(%struct.ufs_hba* %18, i32 1)
  store i32 %19, i32* %3, align 4
  br label %62

20:                                               ; preds = %11, %7, %1
  %21 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %22 = call i32 @ufshcd_is_ufs_dev_active(%struct.ufs_hba* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %61, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %52, label %27

27:                                               ; preds = %24
  %28 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %29 = call i32 @ufshcd_is_link_active(%struct.ufs_hba* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %27
  %32 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %33 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %34 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ufshcd_config_vreg_hpm(%struct.ufs_hba* %32, i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %70

41:                                               ; preds = %31
  %42 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %43 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %44 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ufshcd_config_vreg_hpm(%struct.ufs_hba* %42, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %63

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %27, %24
  %53 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %54 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %57 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ufshcd_toggle_vreg(i32 %55, i32 %59, i32 1)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %52, %20
  br label %62

62:                                               ; preds = %61, %17
  br label %79

63:                                               ; preds = %50
  %64 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %65 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %66 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ufshcd_config_vreg_lpm(%struct.ufs_hba* %64, i32 %68)
  br label %70

70:                                               ; preds = %63, %40
  %71 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %72 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %75 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ufshcd_toggle_vreg(i32 %73, i32 %77, i32 0)
  br label %79

79:                                               ; preds = %70, %62
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @ufshcd_is_ufs_dev_poweroff(%struct.ufs_hba*) #1

declare dso_local i64 @ufshcd_is_link_off(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_setup_vreg(%struct.ufs_hba*, i32) #1

declare dso_local i32 @ufshcd_is_ufs_dev_active(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_is_link_active(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_config_vreg_hpm(%struct.ufs_hba*, i32) #1

declare dso_local i32 @ufshcd_toggle_vreg(i32, i32, i32) #1

declare dso_local i32 @ufshcd_config_vreg_lpm(%struct.ufs_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
