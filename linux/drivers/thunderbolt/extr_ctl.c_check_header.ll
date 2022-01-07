; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_check_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_check_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_pkg = type { %struct.TYPE_2__, %struct.tb_cfg_header* }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.tb_cfg_header = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"wrong framesize (expected %#x, got %#x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"wrong eof (expected %#x, got %#x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"wrong sof (expected 0x0, got %#x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"header->unknown is %#x\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"wrong route (expected %llx, got %llx)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_pkg*, i64, i32, i32)* @check_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_header(%struct.ctl_pkg* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctl_pkg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tb_cfg_header*, align 8
  store %struct.ctl_pkg* %0, %struct.ctl_pkg** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ctl_pkg*, %struct.ctl_pkg** %6, align 8
  %12 = getelementptr inbounds %struct.ctl_pkg, %struct.ctl_pkg* %11, i32 0, i32 1
  %13 = load %struct.tb_cfg_header*, %struct.tb_cfg_header** %12, align 8
  store %struct.tb_cfg_header* %13, %struct.tb_cfg_header** %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.ctl_pkg*, %struct.ctl_pkg** %6, align 8
  %16 = getelementptr inbounds %struct.ctl_pkg, %struct.ctl_pkg* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %14, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %7, align 8
  %22 = trunc i64 %21 to i32
  %23 = load %struct.ctl_pkg*, %struct.ctl_pkg** %6, align 8
  %24 = getelementptr inbounds %struct.ctl_pkg, %struct.ctl_pkg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 (i32, i8*, i32, ...) @WARN(i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %93

32:                                               ; preds = %4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.ctl_pkg*, %struct.ctl_pkg** %6, align 8
  %35 = getelementptr inbounds %struct.ctl_pkg, %struct.ctl_pkg* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %33, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.ctl_pkg*, %struct.ctl_pkg** %6, align 8
  %42 = getelementptr inbounds %struct.ctl_pkg, %struct.ctl_pkg* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 (i32, i8*, i32, ...) @WARN(i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %93

50:                                               ; preds = %32
  %51 = load %struct.ctl_pkg*, %struct.ctl_pkg** %6, align 8
  %52 = getelementptr inbounds %struct.ctl_pkg, %struct.ctl_pkg* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ctl_pkg*, %struct.ctl_pkg** %6, align 8
  %56 = getelementptr inbounds %struct.ctl_pkg, %struct.ctl_pkg* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i64 (i32, i8*, i32, ...) @WARN(i32 %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %93

64:                                               ; preds = %50
  %65 = load %struct.tb_cfg_header*, %struct.tb_cfg_header** %10, align 8
  %66 = getelementptr inbounds %struct.tb_cfg_header, %struct.tb_cfg_header* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 512
  %69 = zext i1 %68 to i32
  %70 = load %struct.tb_cfg_header*, %struct.tb_cfg_header** %10, align 8
  %71 = getelementptr inbounds %struct.tb_cfg_header, %struct.tb_cfg_header* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 (i32, i8*, i32, ...) @WARN(i32 %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %64
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %93

78:                                               ; preds = %64
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.tb_cfg_header*, %struct.tb_cfg_header** %10, align 8
  %81 = call i32 @tb_cfg_get_route(%struct.tb_cfg_header* %80)
  %82 = icmp ne i32 %79, %81
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.tb_cfg_header*, %struct.tb_cfg_header** %10, align 8
  %86 = call i32 @tb_cfg_get_route(%struct.tb_cfg_header* %85)
  %87 = call i64 (i32, i8*, i32, ...) @WARN(i32 %83, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %84, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %78
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %93

92:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %89, %75, %61, %47, %29
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i64 @WARN(i32, i8*, i32, ...) #1

declare dso_local i32 @tb_cfg_get_route(%struct.tb_cfg_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
