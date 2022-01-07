; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_dmi_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_dmi_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeepc_laptop = type { i32, i32 }

@DMI_PRODUCT_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"701\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"702\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"model %s does not officially support setting cpu speed\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"cpufv disabled to avoid instability\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"1005HA\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"1201N\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"1005PE\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"wlan hotplug disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eeepc_laptop*)* @eeepc_dmi_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeepc_dmi_check(%struct.eeepc_laptop* %0) #0 {
  %2 = alloca %struct.eeepc_laptop*, align 8
  %3 = alloca i8*, align 8
  store %struct.eeepc_laptop* %0, %struct.eeepc_laptop** %2, align 8
  %4 = load i32, i32* @DMI_PRODUCT_NAME, align 4
  %5 = call i8* @dmi_get_system_info(i32 %4)
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %39

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13, %9
  %18 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %19 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %23

23:                                               ; preds = %17, %13
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %3, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31, %27, %23
  %36 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %37 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %39

39:                                               ; preds = %8, %35, %31
  ret void
}

declare dso_local i8* @dmi_get_system_info(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
