; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_find_sub_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_find_sub_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { %struct.expander_device }
%struct.expander_device = type { i32, %struct.ex_phy* }
%struct.ex_phy = type { i64, i64, i32, i32 }

@PHY_VACANT = common dso_local global i64 0, align 8
@PHY_NOT_PRESENT = common dso_local global i64 0, align 8
@SUBTRACTIVE_ROUTING = common dso_local global i64 0, align 8
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*, i32*)* @sas_find_sub_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_find_sub_addr(%struct.domain_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.expander_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ex_phy*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %10 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %9, i32 0, i32 0
  store %struct.expander_device* %10, %struct.expander_device** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %56, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.expander_device*, %struct.expander_device** %6, align 8
  %14 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %11
  %18 = load %struct.expander_device*, %struct.expander_device** %6, align 8
  %19 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %18, i32 0, i32 1
  %20 = load %struct.ex_phy*, %struct.ex_phy** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %20, i64 %22
  store %struct.ex_phy* %23, %struct.ex_phy** %8, align 8
  %24 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %25 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PHY_VACANT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %17
  %30 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %31 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PHY_NOT_PRESENT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %17
  br label %56

36:                                               ; preds = %29
  %37 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %38 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @dev_is_expander(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %44 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SUBTRACTIVE_ROUTING, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %51 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %54 = call i32 @memcpy(i32* %49, i32 %52, i32 %53)
  store i32 1, i32* %3, align 4
  br label %60

55:                                               ; preds = %42, %36
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %11

59:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %48
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @dev_is_expander(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
