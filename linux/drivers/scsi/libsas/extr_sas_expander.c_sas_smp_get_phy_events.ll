; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_smp_get_phy_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_smp_get_phy_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_phy = type { i8*, i8*, i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sas_rphy = type { i32 }
%struct.domain_device = type { i32 }

@RPEL_REQ_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RPEL_RESP_SIZE = common dso_local global i32 0, align 4
@SMP_REPORT_PHY_ERR_LOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_smp_get_phy_events(%struct.sas_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sas_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sas_rphy*, align 8
  %8 = alloca %struct.domain_device*, align 8
  store %struct.sas_phy* %0, %struct.sas_phy** %3, align 8
  %9 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %10 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.sas_rphy* @dev_to_rphy(i32 %12)
  store %struct.sas_rphy* %13, %struct.sas_rphy** %7, align 8
  %14 = load %struct.sas_rphy*, %struct.sas_rphy** %7, align 8
  %15 = call %struct.domain_device* @sas_find_dev_by_rphy(%struct.sas_rphy* %14)
  store %struct.domain_device* %15, %struct.domain_device** %8, align 8
  %16 = load i32, i32* @RPEL_REQ_SIZE, align 4
  %17 = call i32* @alloc_smp_req(i32 %16)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %78

23:                                               ; preds = %1
  %24 = load i32, i32* @RPEL_RESP_SIZE, align 4
  %25 = call i32* @alloc_smp_resp(i32 %24)
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @kfree(i32* %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %78

33:                                               ; preds = %23
  %34 = load i32, i32* @SMP_REPORT_PHY_ERR_LOG, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %38 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 9
  store i32 %39, i32* %41, align 4
  %42 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @RPEL_REQ_SIZE, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* @RPEL_RESP_SIZE, align 4
  %47 = call i32 @smp_execute_task(%struct.domain_device* %42, i32* %43, i32 %44, i32* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %33
  br label %72

51:                                               ; preds = %33
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 12
  %54 = call i8* @get_unaligned_be32(i32* %53)
  %55 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %56 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 16
  %59 = call i8* @get_unaligned_be32(i32* %58)
  %60 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %61 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 20
  %64 = call i8* @get_unaligned_be32(i32* %63)
  %65 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %66 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 24
  %69 = call i8* @get_unaligned_be32(i32* %68)
  %70 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %71 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %51, %50
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @kfree(i32* %73)
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @kfree(i32* %75)
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %72, %28, %20
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.sas_rphy* @dev_to_rphy(i32) #1

declare dso_local %struct.domain_device* @sas_find_dev_by_rphy(%struct.sas_rphy*) #1

declare dso_local i32* @alloc_smp_req(i32) #1

declare dso_local i32* @alloc_smp_resp(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @smp_execute_task(%struct.domain_device*, i32*, i32, i32*, i32) #1

declare dso_local i8* @get_unaligned_be32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
