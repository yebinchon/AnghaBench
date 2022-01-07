; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.h_wsm_set_protected_mgmt_policy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.h_wsm_set_protected_mgmt_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32 }
%struct.wsm_protected_mgmt_policy = type { i64, i64, i64 }

@WSM_MIB_ID_PROTECTED_MGMT_POLICY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, %struct.wsm_protected_mgmt_policy*)* @wsm_set_protected_mgmt_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsm_set_protected_mgmt_policy(%struct.cw1200_common* %0, %struct.wsm_protected_mgmt_policy* %1) #0 {
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca %struct.wsm_protected_mgmt_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  store %struct.wsm_protected_mgmt_policy* %1, %struct.wsm_protected_mgmt_policy** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.wsm_protected_mgmt_policy*, %struct.wsm_protected_mgmt_policy** %4, align 8
  %8 = getelementptr inbounds %struct.wsm_protected_mgmt_policy, %struct.wsm_protected_mgmt_policy* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = call i32 @BIT(i32 0)
  %13 = call i32 @__cpu_to_le32(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %11, %2
  %17 = load %struct.wsm_protected_mgmt_policy*, %struct.wsm_protected_mgmt_policy** %4, align 8
  %18 = getelementptr inbounds %struct.wsm_protected_mgmt_policy, %struct.wsm_protected_mgmt_policy* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = call i32 @BIT(i32 1)
  %23 = call i32 @__cpu_to_le32(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.wsm_protected_mgmt_policy*, %struct.wsm_protected_mgmt_policy** %4, align 8
  %28 = getelementptr inbounds %struct.wsm_protected_mgmt_policy, %struct.wsm_protected_mgmt_policy* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = call i32 @BIT(i32 2)
  %33 = call i32 @__cpu_to_le32(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %38 = load i32, i32* @WSM_MIB_ID_PROTECTED_MGMT_POLICY, align 4
  %39 = call i32 @wsm_write_mib(%struct.cw1200_common* %37, i32 %38, i32* %5, i32 4)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wsm_write_mib(%struct.cw1200_common*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
