; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_enable_ee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_enable_ee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }

@MASK_EE_STATUS = common dso_local global i32 0, align 4
@UPIU_QUERY_OPCODE_WRITE_ATTR = common dso_local global i32 0, align 4
@QUERY_ATTR_IDN_EE_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*, i32)* @ufshcd_enable_ee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_enable_ee(%struct.ufs_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.ufs_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %8 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %36

14:                                               ; preds = %2
  %15 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %16 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @MASK_EE_STATUS, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %24 = load i32, i32* @UPIU_QUERY_OPCODE_WRITE_ATTR, align 4
  %25 = load i32, i32* @QUERY_ATTR_IDN_EE_CONTROL, align 4
  %26 = call i32 @ufshcd_query_attr_retry(%struct.ufs_hba* %23, i32 %24, i32 %25, i32 0, i32 0, i32* %6)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %14
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %32 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %14
  br label %36

36:                                               ; preds = %35, %13
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @ufshcd_query_attr_retry(%struct.ufs_hba*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
