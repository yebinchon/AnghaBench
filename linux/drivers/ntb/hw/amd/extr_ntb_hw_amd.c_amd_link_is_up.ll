; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/amd/extr_ntb_hw_amd.c_amd_link_is_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/amd/extr_ntb_hw_amd.c_amd_link_is_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_ntb_dev = type { i32, i32 }

@AMD_LINK_UP_EVENT = common dso_local global i32 0, align 4
@AMD_PEER_RESET_EVENT = common dso_local global i32 0, align 4
@AMD_PEER_D0_EVENT = common dso_local global i32 0, align 4
@AMD_LINK_DOWN_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_ntb_dev*)* @amd_link_is_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_link_is_up(%struct.amd_ntb_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amd_ntb_dev*, align 8
  store %struct.amd_ntb_dev* %0, %struct.amd_ntb_dev** %3, align 8
  %4 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %5 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %10 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @NTB_LNK_STA_ACTIVE(i32 %11)
  store i32 %12, i32* %2, align 4
  br label %51

13:                                               ; preds = %1
  %14 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %15 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AMD_LINK_UP_EVENT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %22 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  store i32 1, i32* %2, align 4
  br label %51

23:                                               ; preds = %13
  %24 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %25 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AMD_PEER_RESET_EVENT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i32, i32* @AMD_PEER_RESET_EVENT, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %34 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %50

37:                                               ; preds = %23
  %38 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %39 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AMD_PEER_D0_EVENT, align 4
  %42 = load i32, i32* @AMD_LINK_DOWN_EVENT, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %48 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %37
  br label %50

50:                                               ; preds = %49, %30
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %20, %8
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @NTB_LNK_STA_ACTIVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
