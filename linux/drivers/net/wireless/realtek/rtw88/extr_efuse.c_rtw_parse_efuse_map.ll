; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_efuse.c_rtw_parse_efuse_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_efuse.c_rtw_parse_efuse_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_efuse, %struct.rtw_chip_info* }
%struct.rtw_efuse = type { i32, i32 }
%struct.rtw_chip_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rtw_dev*, i32*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to dump efuse physical map\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to dump efuse logical map\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to read efuse map\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_parse_efuse_map(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_chip_info*, align 8
  %4 = alloca %struct.rtw_efuse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %11 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %10, i32 0, i32 1
  %12 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %11, align 8
  store %struct.rtw_chip_info* %12, %struct.rtw_chip_info** %3, align 8
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %14 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %13, i32 0, i32 0
  store %struct.rtw_efuse* %14, %struct.rtw_efuse** %4, align 8
  %15 = load %struct.rtw_efuse*, %struct.rtw_efuse** %4, align 8
  %16 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.rtw_efuse*, %struct.rtw_efuse** %4, align 8
  %19 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32* @kmalloc(i32 %21, i32 %22)
  store i32* %23, i32** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32* @kmalloc(i32 %24, i32 %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32*, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29, %1
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %72

35:                                               ; preds = %29
  %36 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @rtw_dump_physical_efuse_map(%struct.rtw_dev* %36, i32* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %43 = call i32 @rtw_err(%struct.rtw_dev* %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %72

44:                                               ; preds = %35
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @memset(i32* %45, i32 255, i32 %46)
  %48 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @rtw_dump_logical_efuse_map(%struct.rtw_dev* %48, i32* %49, i32* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %56 = call i32 @rtw_err(%struct.rtw_dev* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %72

57:                                               ; preds = %44
  %58 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %3, align 8
  %59 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32 (%struct.rtw_dev*, i32*)*, i32 (%struct.rtw_dev*, i32*)** %61, align 8
  %63 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 %62(%struct.rtw_dev* %63, i32* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %70 = call i32 @rtw_err(%struct.rtw_dev* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %72

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71, %68, %54, %41, %32
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @kfree(i32* %73)
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @kfree(i32* %75)
  %77 = load i32, i32* %9, align 4
  ret i32 %77
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @rtw_dump_physical_efuse_map(%struct.rtw_dev*, i32*) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @rtw_dump_logical_efuse_map(%struct.rtw_dev*, i32*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
