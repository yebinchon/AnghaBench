; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_get_performance_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_get_performance_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.samsung_laptop = type { %struct.sabi_config* }
%struct.sabi_config = type { %struct.TYPE_2__*, %struct.sabi_commands }
%struct.TYPE_2__ = type { i8*, i64 }
%struct.sabi_commands = type { i32 }
%struct.sabi_data = type { i64* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @get_performance_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_performance_level(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.samsung_laptop*, align 8
  %9 = alloca %struct.sabi_config*, align 8
  %10 = alloca %struct.sabi_commands*, align 8
  %11 = alloca %struct.sabi_data, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.samsung_laptop* @dev_get_drvdata(%struct.device* %14)
  store %struct.samsung_laptop* %15, %struct.samsung_laptop** %8, align 8
  %16 = load %struct.samsung_laptop*, %struct.samsung_laptop** %8, align 8
  %17 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %16, i32 0, i32 0
  %18 = load %struct.sabi_config*, %struct.sabi_config** %17, align 8
  store %struct.sabi_config* %18, %struct.sabi_config** %9, align 8
  %19 = load %struct.sabi_config*, %struct.sabi_config** %9, align 8
  %20 = getelementptr inbounds %struct.sabi_config, %struct.sabi_config* %19, i32 0, i32 1
  store %struct.sabi_commands* %20, %struct.sabi_commands** %10, align 8
  %21 = load %struct.samsung_laptop*, %struct.samsung_laptop** %8, align 8
  %22 = load %struct.sabi_commands*, %struct.sabi_commands** %10, align 8
  %23 = getelementptr inbounds %struct.sabi_commands, %struct.sabi_commands* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sabi_command(%struct.samsung_laptop* %21, i32 %24, i32* null, %struct.sabi_data* %11)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %4, align 4
  br label %73

30:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %67, %30
  %32 = load %struct.sabi_config*, %struct.sabi_config** %9, align 8
  %33 = getelementptr inbounds %struct.sabi_config, %struct.sabi_config* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %70

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.sabi_data, %struct.sabi_data* %11, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sabi_config*, %struct.sabi_config** %9, align 8
  %47 = getelementptr inbounds %struct.sabi_config, %struct.sabi_config* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %45, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %41
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.sabi_config*, %struct.sabi_config** %9, align 8
  %58 = getelementptr inbounds %struct.sabi_config, %struct.sabi_config* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @sprintf(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %64)
  store i32 %65, i32* %4, align 4
  br label %73

66:                                               ; preds = %41
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %31

70:                                               ; preds = %31
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @sprintf(i8* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %70, %55, %28
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.samsung_laptop* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sabi_command(%struct.samsung_laptop*, i32, i32*, %struct.sabi_data*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
