; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [6 x i8] c"noi2o\00", align 1
@ips_force_i2o = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"nommap\00", align 1
@ips_force_memio = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"ioctlsize\00", align 1
@ips_ioctlsize = common dso_local global i32 0, align 4
@IPS_IOCTL_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"cdboot\00", align 1
@ips_cd_boot = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"maxcmds\00", align 1
@MaxLiteCmds = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c",.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ips_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_setup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [5 x %struct.TYPE_3__], align 16
  store i8* %0, i8** %2, align 8
  %7 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i32 ptrtoint (i32* @ips_force_i2o to i32), i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 5
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i32 ptrtoint (i32* @ips_force_memio to i32), i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 5
  store i32* null, i32** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 ptrtoint (i32* @ips_ioctlsize to i32), i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %25 = load i32, i32* @IPS_IOCTL_SIZE, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 5
  store i32* null, i32** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 ptrtoint (i32* @ips_cd_boot to i32), i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  store i32* null, i32** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  store i32* null, i32** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 ptrtoint (i32* @MaxLiteCmds to i32), i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i32 32, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  store i32 0, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %107, %50, %1
  %44 = call i8* @strsep(i8** %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i8* %44, i8** %4, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %108

46:                                               ; preds = %43
  %47 = load i8*, i8** %4, align 8
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %43

51:                                               ; preds = %46
  %52 = load i8*, i8** %4, align 8
  %53 = call i8* @strchr(i8* %52, i8 signext 58)
  store i8* %53, i8** %5, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %5, align 8
  store i8 0, i8* %57, align 1
  br label %59

59:                                               ; preds = %56, %51
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %104, %59
  %61 = load i32, i32* %3, align 4
  %62 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %63 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %62)
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %107

65:                                               ; preds = %60
  %66 = load i8*, i8** %4, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %6, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %6, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @strlen(i32 %76)
  %78 = call i64 @strncasecmp(i8* %66, i32 %71, i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %65
  %81 = load i8*, i8** %5, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @simple_strtoul(i8* %84, i32* null, i32 0)
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %6, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  store i32 %85, i32* %90, align 4
  br label %102

91:                                               ; preds = %80
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %6, i64 0, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %6, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  store i32 %96, i32* %101, align 4
  br label %102

102:                                              ; preds = %91, %83
  br label %107

103:                                              ; preds = %65
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %3, align 4
  br label %60

107:                                              ; preds = %102, %60
  br label %43

108:                                              ; preds = %43
  ret i32 1
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @strncasecmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
