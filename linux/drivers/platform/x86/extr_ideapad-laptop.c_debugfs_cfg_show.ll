; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_debugfs_cfg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_debugfs_cfg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.ideapad_private* }
%struct.ideapad_private = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"cfg: N/A\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"cfg: 0x%.8lX\0A\0ACapability: \00", align 1
@CFG_BT_BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Bluetooth \00", align 1
@CFG_3G_BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"3G \00", align 1
@CFG_WIFI_BIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"Wireless \00", align 1
@CFG_CAMERA_BIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"Camera \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"\0AGraphic: \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Intel\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ATI\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Nvidia\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Intel and ATI\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Intel and Nvidia\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @debugfs_cfg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debugfs_cfg_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ideapad_private*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load %struct.ideapad_private*, %struct.ideapad_private** %7, align 8
  store %struct.ideapad_private* %8, %struct.ideapad_private** %5, align 8
  %9 = load %struct.ideapad_private*, %struct.ideapad_private** %5, align 8
  %10 = icmp ne %struct.ideapad_private* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %80

14:                                               ; preds = %2
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load %struct.ideapad_private*, %struct.ideapad_private** %5, align 8
  %17 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @CFG_BT_BIT, align 4
  %21 = load %struct.ideapad_private*, %struct.ideapad_private** %5, align 8
  %22 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %21, i32 0, i32 0
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %14
  %29 = load i32, i32* @CFG_3G_BIT, align 4
  %30 = load %struct.ideapad_private*, %struct.ideapad_private** %5, align 8
  %31 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %30, i32 0, i32 0
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i32, i32* @CFG_WIFI_BIT, align 4
  %39 = load %struct.ideapad_private*, %struct.ideapad_private** %5, align 8
  %40 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %39, i32 0, i32 0
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %37
  %47 = load i32, i32* @CFG_CAMERA_BIT, align 4
  %48 = load %struct.ideapad_private*, %struct.ideapad_private** %5, align 8
  %49 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %48, i32 0, i32 0
  %50 = call i64 @test_bit(i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %46
  %56 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %57 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %58 = load %struct.ideapad_private*, %struct.ideapad_private** %5, align 8
  %59 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 1792
  switch i32 %61, label %77 [
    i32 256, label %62
    i32 512, label %65
    i32 768, label %68
    i32 1024, label %71
    i32 1280, label %74
  ]

62:                                               ; preds = %55
  %63 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %64 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %77

65:                                               ; preds = %55
  %66 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %67 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %77

68:                                               ; preds = %55
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %77

71:                                               ; preds = %55
  %72 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %73 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %77

74:                                               ; preds = %55
  %75 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %76 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %77

77:                                               ; preds = %55, %74, %71, %68, %65, %62
  %78 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %79 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %11
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
