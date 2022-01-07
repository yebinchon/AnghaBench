; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_core.c_s3fwrn5_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_core.c_s3fwrn5_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.nci_dev = type { i32 }
%struct.device = type { i32 }
%struct.s3fwrn5_phy_ops = type { i32 }
%struct.s3fwrn5_info = type { i32, %struct.nci_dev*, %struct.TYPE_4__, i32, %struct.s3fwrn5_phy_ops*, %struct.device*, i8* }
%struct.TYPE_4__ = type { %struct.nci_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@S3FWRN5_MODE_COLD = common dso_local global i32 0, align 4
@s3fwrn5_nci_ops = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@S3FWRN5_NFC_PROTOCOLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s3fwrn5_probe(%struct.nci_dev** %0, i8* %1, %struct.device* %2, %struct.s3fwrn5_phy_ops* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nci_dev**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.s3fwrn5_phy_ops*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.s3fwrn5_info*, align 8
  %13 = alloca i32, align 4
  store %struct.nci_dev** %0, %struct.nci_dev*** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.device* %2, %struct.device** %9, align 8
  store %struct.s3fwrn5_phy_ops* %3, %struct.s3fwrn5_phy_ops** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.device*, %struct.device** %9, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.s3fwrn5_info* @devm_kzalloc(%struct.device* %14, i32 56, i32 %15)
  store %struct.s3fwrn5_info* %16, %struct.s3fwrn5_info** %12, align 8
  %17 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %12, align 8
  %18 = icmp ne %struct.s3fwrn5_info* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %88

22:                                               ; preds = %5
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %12, align 8
  %25 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %24, i32 0, i32 6
  store i8* %23, i8** %25, align 8
  %26 = load %struct.device*, %struct.device** %9, align 8
  %27 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %12, align 8
  %28 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %27, i32 0, i32 5
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load %struct.s3fwrn5_phy_ops*, %struct.s3fwrn5_phy_ops** %10, align 8
  %30 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %12, align 8
  %31 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %30, i32 0, i32 4
  store %struct.s3fwrn5_phy_ops* %29, %struct.s3fwrn5_phy_ops** %31, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %12, align 8
  %34 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %12, align 8
  %36 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %35, i32 0, i32 3
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %12, align 8
  %39 = load i32, i32* @S3FWRN5_MODE_COLD, align 4
  %40 = call i32 @s3fwrn5_set_mode(%struct.s3fwrn5_info* %38, i32 %39)
  %41 = call i32 @s3fwrn5_nci_get_prop_ops(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s3fwrn5_nci_ops, i32 0, i32 1), i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s3fwrn5_nci_ops, i32 0, i32 0))
  %42 = load i32, i32* @S3FWRN5_NFC_PROTOCOLS, align 4
  %43 = call %struct.nci_dev* @nci_allocate_device(%struct.TYPE_5__* @s3fwrn5_nci_ops, i32 %42, i32 0, i32 0)
  %44 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %12, align 8
  %45 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %44, i32 0, i32 1
  store %struct.nci_dev* %43, %struct.nci_dev** %45, align 8
  %46 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %12, align 8
  %47 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %46, i32 0, i32 1
  %48 = load %struct.nci_dev*, %struct.nci_dev** %47, align 8
  %49 = icmp ne %struct.nci_dev* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %22
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %88

53:                                               ; preds = %22
  %54 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %12, align 8
  %55 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %54, i32 0, i32 1
  %56 = load %struct.nci_dev*, %struct.nci_dev** %55, align 8
  %57 = load %struct.device*, %struct.device** %9, align 8
  %58 = call i32 @nci_set_parent_dev(%struct.nci_dev* %56, %struct.device* %57)
  %59 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %12, align 8
  %60 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %59, i32 0, i32 1
  %61 = load %struct.nci_dev*, %struct.nci_dev** %60, align 8
  %62 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %12, align 8
  %63 = call i32 @nci_set_drvdata(%struct.nci_dev* %61, %struct.s3fwrn5_info* %62)
  %64 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %12, align 8
  %65 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %64, i32 0, i32 1
  %66 = load %struct.nci_dev*, %struct.nci_dev** %65, align 8
  %67 = call i32 @nci_register_device(%struct.nci_dev* %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %53
  %71 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %12, align 8
  %72 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %71, i32 0, i32 1
  %73 = load %struct.nci_dev*, %struct.nci_dev** %72, align 8
  %74 = call i32 @nci_free_device(%struct.nci_dev* %73)
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %6, align 4
  br label %88

76:                                               ; preds = %53
  %77 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %12, align 8
  %78 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %77, i32 0, i32 1
  %79 = load %struct.nci_dev*, %struct.nci_dev** %78, align 8
  %80 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %12, align 8
  %81 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store %struct.nci_dev* %79, %struct.nci_dev** %82, align 8
  %83 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %12, align 8
  %84 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %83, i32 0, i32 1
  %85 = load %struct.nci_dev*, %struct.nci_dev** %84, align 8
  %86 = load %struct.nci_dev**, %struct.nci_dev*** %7, align 8
  store %struct.nci_dev* %85, %struct.nci_dev** %86, align 8
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %76, %70, %50, %19
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local %struct.s3fwrn5_info* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @s3fwrn5_set_mode(%struct.s3fwrn5_info*, i32) #1

declare dso_local i32 @s3fwrn5_nci_get_prop_ops(i32*, i32*) #1

declare dso_local %struct.nci_dev* @nci_allocate_device(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @nci_set_parent_dev(%struct.nci_dev*, %struct.device*) #1

declare dso_local i32 @nci_set_drvdata(%struct.nci_dev*, %struct.s3fwrn5_info*) #1

declare dso_local i32 @nci_register_device(%struct.nci_dev*) #1

declare dso_local i32 @nci_free_device(%struct.nci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
