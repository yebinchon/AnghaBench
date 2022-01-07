; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/renesas/extr_phy-rcar-gen3-usb2.c_role_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/renesas/extr_phy-rcar-gen3-usb2.c_role_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.rcar_gen3_chan = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"peripheral\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @role_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @role_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rcar_gen3_chan*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.rcar_gen3_chan* @dev_get_drvdata(%struct.device* %9)
  store %struct.rcar_gen3_chan* %10, %struct.rcar_gen3_chan** %8, align 8
  %11 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %8, align 8
  %12 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %8, align 8
  %17 = call i32 @rcar_gen3_is_any_rphy_initialized(%struct.rcar_gen3_chan* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15, %3
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %30

22:                                               ; preds = %15
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %8, align 8
  %25 = call i64 @rcar_gen3_is_host(%struct.rcar_gen3_chan* %24)
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %29 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %22, %19
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.rcar_gen3_chan* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rcar_gen3_is_any_rphy_initialized(%struct.rcar_gen3_chan*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i64 @rcar_gen3_is_host(%struct.rcar_gen3_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
