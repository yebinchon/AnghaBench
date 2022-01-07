; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_print_unipro_testbus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_print_unipro_testbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }
%struct.ufs_qcom_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@TSTBUS_UNIPRO = common dso_local global i32 0, align 4
@UFS_TEST_BUS = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"UNIPRO_TEST_BUS \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*)* @ufs_qcom_print_unipro_testbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_qcom_print_unipro_testbus(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  %3 = alloca %struct.ufs_qcom_host*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %8 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %9 = call %struct.ufs_qcom_host* @ufshcd_get_variant(%struct.ufs_hba* %8)
  store %struct.ufs_qcom_host* %9, %struct.ufs_qcom_host** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 256, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kmalloc(i32 %14, i32 %15)
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %54

20:                                               ; preds = %1
  %21 = load i32, i32* @TSTBUS_UNIPRO, align 4
  %22 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %23 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %43, %20
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %32 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %35 = call i32 @ufs_qcom_testbus_config(%struct.ufs_qcom_host* %34)
  %36 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %37 = load i32, i32* @UFS_TEST_BUS, align 4
  %38 = call i32 @ufshcd_readl(%struct.ufs_hba* %36, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  br label %43

43:                                               ; preds = %29
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %25

46:                                               ; preds = %25
  %47 = load i32, i32* @KERN_ERR, align 4
  %48 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @print_hex_dump(i32 %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %48, i32 16, i32 4, i32* %49, i32 %50, i32 0)
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @kfree(i32* %52)
  br label %54

54:                                               ; preds = %46, %19
  ret void
}

declare dso_local %struct.ufs_qcom_host* @ufshcd_get_variant(%struct.ufs_hba*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @ufs_qcom_testbus_config(%struct.ufs_qcom_host*) #1

declare dso_local i32 @ufshcd_readl(%struct.ufs_hba*, i32) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
