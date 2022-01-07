; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_link_state_transition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_link_state_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, i32 }

@UIC_LINK_HIBERN8_STATE = common dso_local global i32 0, align 4
@UIC_LINK_OFF_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*, i32, i32)* @ufshcd_link_state_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_link_state_transition(%struct.ufs_hba* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ufs_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %11 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @UIC_LINK_HIBERN8_STATE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %21 = call i32 @ufshcd_uic_hibern8_enter(%struct.ufs_hba* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %26 = call i32 @ufshcd_set_link_hibern8(%struct.ufs_hba* %25)
  br label %28

27:                                               ; preds = %19
  br label %57

28:                                               ; preds = %24
  br label %56

29:                                               ; preds = %15
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @UIC_LINK_OFF_STATE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %41 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %39, %33
  %45 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %46 = call i32 @ufshcd_uic_hibern8_enter(%struct.ufs_hba* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %57

50:                                               ; preds = %44
  %51 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %52 = call i32 @ufshcd_hba_stop(%struct.ufs_hba* %51, i32 1)
  %53 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %54 = call i32 @ufshcd_set_link_off(%struct.ufs_hba* %53)
  br label %55

55:                                               ; preds = %50, %39, %36, %29
  br label %56

56:                                               ; preds = %55, %28
  br label %57

57:                                               ; preds = %56, %49, %27
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %14
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @ufshcd_uic_hibern8_enter(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_set_link_hibern8(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_hba_stop(%struct.ufs_hba*, i32) #1

declare dso_local i32 @ufshcd_set_link_off(%struct.ufs_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
