; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_set_performance_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_set_performance_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.samsung_laptop = type { %struct.sabi_config* }
%struct.sabi_config = type { %struct.sabi_performance_level*, %struct.sabi_commands }
%struct.sabi_performance_level = type { i64, i32 }
%struct.sabi_commands = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_performance_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_performance_level(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.samsung_laptop*, align 8
  %11 = alloca %struct.sabi_config*, align 8
  %12 = alloca %struct.sabi_commands*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sabi_performance_level*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.samsung_laptop* @dev_get_drvdata(%struct.device* %15)
  store %struct.samsung_laptop* %16, %struct.samsung_laptop** %10, align 8
  %17 = load %struct.samsung_laptop*, %struct.samsung_laptop** %10, align 8
  %18 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %17, i32 0, i32 0
  %19 = load %struct.sabi_config*, %struct.sabi_config** %18, align 8
  store %struct.sabi_config* %19, %struct.sabi_config** %11, align 8
  %20 = load %struct.sabi_config*, %struct.sabi_config** %11, align 8
  %21 = getelementptr inbounds %struct.sabi_config, %struct.sabi_config* %20, i32 0, i32 1
  store %struct.sabi_commands* %21, %struct.sabi_commands** %12, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ult i64 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* %9, align 8
  store i64 %25, i64* %5, align 8
  br label %82

26:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %64, %26
  %28 = load %struct.sabi_config*, %struct.sabi_config** %11, align 8
  %29 = getelementptr inbounds %struct.sabi_config, %struct.sabi_config* %28, i32 0, i32 0
  %30 = load %struct.sabi_performance_level*, %struct.sabi_performance_level** %29, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.sabi_performance_level, %struct.sabi_performance_level* %30, i64 %32
  %34 = getelementptr inbounds %struct.sabi_performance_level, %struct.sabi_performance_level* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %27
  %38 = load %struct.sabi_config*, %struct.sabi_config** %11, align 8
  %39 = getelementptr inbounds %struct.sabi_config, %struct.sabi_config* %38, i32 0, i32 0
  %40 = load %struct.sabi_performance_level*, %struct.sabi_performance_level** %39, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.sabi_performance_level, %struct.sabi_performance_level* %40, i64 %42
  store %struct.sabi_performance_level* %43, %struct.sabi_performance_level** %14, align 8
  %44 = load %struct.sabi_performance_level*, %struct.sabi_performance_level** %14, align 8
  %45 = getelementptr inbounds %struct.sabi_performance_level, %struct.sabi_performance_level* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.sabi_performance_level*, %struct.sabi_performance_level** %14, align 8
  %49 = getelementptr inbounds %struct.sabi_performance_level, %struct.sabi_performance_level* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @strlen(i64 %50)
  %52 = call i32 @strncasecmp(i64 %46, i8* %47, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %37
  %55 = load %struct.samsung_laptop*, %struct.samsung_laptop** %10, align 8
  %56 = load %struct.sabi_commands*, %struct.sabi_commands** %12, align 8
  %57 = getelementptr inbounds %struct.sabi_commands, %struct.sabi_commands* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sabi_performance_level*, %struct.sabi_performance_level** %14, align 8
  %60 = getelementptr inbounds %struct.sabi_performance_level, %struct.sabi_performance_level* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @sabi_set_commandb(%struct.samsung_laptop* %55, i32 %58, i32 %61)
  br label %67

63:                                               ; preds = %37
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %27

67:                                               ; preds = %54, %27
  %68 = load %struct.sabi_config*, %struct.sabi_config** %11, align 8
  %69 = getelementptr inbounds %struct.sabi_config, %struct.sabi_config* %68, i32 0, i32 0
  %70 = load %struct.sabi_performance_level*, %struct.sabi_performance_level** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.sabi_performance_level, %struct.sabi_performance_level* %70, i64 %72
  %74 = getelementptr inbounds %struct.sabi_performance_level, %struct.sabi_performance_level* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %67
  %78 = load i64, i64* @EINVAL, align 8
  %79 = sub i64 0, %78
  store i64 %79, i64* %5, align 8
  br label %82

80:                                               ; preds = %67
  %81 = load i64, i64* %9, align 8
  store i64 %81, i64* %5, align 8
  br label %82

82:                                               ; preds = %80, %77, %24
  %83 = load i64, i64* %5, align 8
  ret i64 %83
}

declare dso_local %struct.samsung_laptop* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @strncasecmp(i64, i8*, i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @sabi_set_commandb(%struct.samsung_laptop*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
