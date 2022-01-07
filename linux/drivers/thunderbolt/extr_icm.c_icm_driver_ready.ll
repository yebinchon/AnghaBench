; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_driver_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_driver_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i64, i32 }
%struct.icm = type { i64, i32, i64 }

@.str = private unnamed_addr constant [46 x i8] c"Thunderbolt host controller is in safe mode.\0A\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"You need to update NVM firmware of the controller before it can be used.\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"For latest updates check https://thunderbolttechnology.net/updates.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb*)* @icm_driver_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icm_driver_ready(%struct.tb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb*, align 8
  %4 = alloca %struct.icm*, align 8
  %5 = alloca i32, align 4
  store %struct.tb* %0, %struct.tb** %3, align 8
  %6 = load %struct.tb*, %struct.tb** %3, align 8
  %7 = call %struct.icm* @tb_priv(%struct.tb* %6)
  store %struct.icm* %7, %struct.icm** %4, align 8
  %8 = load %struct.tb*, %struct.tb** %3, align 8
  %9 = call i32 @icm_firmware_init(%struct.tb* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %51

14:                                               ; preds = %1
  %15 = load %struct.icm*, %struct.icm** %4, align 8
  %16 = getelementptr inbounds %struct.icm, %struct.icm* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.tb*, %struct.tb** %3, align 8
  %21 = call i32 @tb_info(%struct.tb* %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.tb*, %struct.tb** %3, align 8
  %23 = call i32 @tb_info(%struct.tb* %22, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.tb*, %struct.tb** %3, align 8
  %25 = call i32 @tb_info(%struct.tb* %24, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %51

26:                                               ; preds = %14
  %27 = load %struct.tb*, %struct.tb** %3, align 8
  %28 = load %struct.tb*, %struct.tb** %3, align 8
  %29 = getelementptr inbounds %struct.tb, %struct.tb* %28, i32 0, i32 1
  %30 = load %struct.tb*, %struct.tb** %3, align 8
  %31 = getelementptr inbounds %struct.tb, %struct.tb* %30, i32 0, i32 0
  %32 = load %struct.icm*, %struct.icm** %4, align 8
  %33 = getelementptr inbounds %struct.icm, %struct.icm* %32, i32 0, i32 1
  %34 = call i32 @__icm_driver_ready(%struct.tb* %27, i32* %29, i64* %31, i32* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %51

39:                                               ; preds = %26
  %40 = load %struct.tb*, %struct.tb** %3, align 8
  %41 = getelementptr inbounds %struct.tb, %struct.tb* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.icm*, %struct.icm** %4, align 8
  %44 = getelementptr inbounds %struct.icm, %struct.icm* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.tb*, %struct.tb** %3, align 8
  %49 = getelementptr inbounds %struct.tb, %struct.tb* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %47, %39
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %37, %19, %12
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.icm* @tb_priv(%struct.tb*) #1

declare dso_local i32 @icm_firmware_init(%struct.tb*) #1

declare dso_local i32 @tb_info(%struct.tb*, i8*) #1

declare dso_local i32 @__icm_driver_ready(%struct.tb*, i32*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
