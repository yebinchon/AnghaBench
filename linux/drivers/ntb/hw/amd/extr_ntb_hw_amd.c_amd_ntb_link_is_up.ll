; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/amd/extr_ntb_hw_amd.c_amd_ntb_link_is_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/amd/extr_ntb_hw_amd.c_amd_ntb_link_is_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.amd_ntb_dev = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"link is up.\0A\00", align 1
@NTB_SPEED_NONE = common dso_local global i32 0, align 4
@NTB_WIDTH_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"link is down.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_dev*, i32*, i32*)* @amd_ntb_link_is_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_ntb_link_is_up(%struct.ntb_dev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.ntb_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.amd_ntb_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.ntb_dev* %0, %struct.ntb_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %10 = call %struct.amd_ntb_dev* @ntb_ndev(%struct.ntb_dev* %9)
  store %struct.amd_ntb_dev* %10, %struct.amd_ntb_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %7, align 8
  %12 = call i64 @amd_link_is_up(%struct.amd_ntb_dev* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %7, align 8
  %19 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @NTB_LNK_STA_SPEED(i32 %20)
  %22 = load i32*, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %17, %14
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %7, align 8
  %28 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @NTB_LNK_STA_WIDTH(i32 %29)
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %26, %23
  %33 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %34 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @dev_dbg(i32* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %56

38:                                               ; preds = %3
  %39 = load i32*, i32** %5, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @NTB_SPEED_NONE, align 4
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32*, i32** %6, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @NTB_WIDTH_NONE, align 4
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %52 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @dev_dbg(i32* %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %50, %32
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local %struct.amd_ntb_dev* @ntb_ndev(%struct.ntb_dev*) #1

declare dso_local i64 @amd_link_is_up(%struct.amd_ntb_dev*) #1

declare dso_local i32 @NTB_LNK_STA_SPEED(i32) #1

declare dso_local i32 @NTB_LNK_STA_WIDTH(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
