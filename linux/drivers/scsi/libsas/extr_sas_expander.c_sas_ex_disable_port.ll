; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_disable_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_disable_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { %struct.expander_device }
%struct.expander_device = type { i32, %struct.ex_phy* }
%struct.ex_phy = type { i64, i32* }

@PHY_VACANT = common dso_local global i64 0, align 8
@PHY_NOT_PRESENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.domain_device*, i32*)* @sas_ex_disable_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_ex_disable_port(%struct.domain_device* %0, i32* %1) #0 {
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.expander_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ex_phy*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %9 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %8, i32 0, i32 0
  store %struct.expander_device* %9, %struct.expander_device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %48, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.expander_device*, %struct.expander_device** %5, align 8
  %13 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %51

16:                                               ; preds = %10
  %17 = load %struct.expander_device*, %struct.expander_device** %5, align 8
  %18 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %17, i32 0, i32 1
  %19 = load %struct.ex_phy*, %struct.ex_phy** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %19, i64 %21
  store %struct.ex_phy* %22, %struct.ex_phy** %7, align 8
  %23 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %24 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PHY_VACANT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %16
  %29 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %30 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PHY_NOT_PRESENT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %16
  br label %48

35:                                               ; preds = %28
  %36 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %37 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @SAS_ADDR(i32* %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i64 @SAS_ADDR(i32* %40)
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @sas_ex_disable_phy(%struct.domain_device* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %35
  br label %48

48:                                               ; preds = %47, %34
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %10

51:                                               ; preds = %10
  ret void
}

declare dso_local i64 @SAS_ADDR(i32*) #1

declare dso_local i32 @sas_ex_disable_phy(%struct.domain_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
