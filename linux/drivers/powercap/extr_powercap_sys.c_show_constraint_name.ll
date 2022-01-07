; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_powercap_sys.c_show_constraint_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_powercap_sys.c_show_constraint_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.powercap_zone = type { i32, %struct.powercap_zone_constraint* }
%struct.powercap_zone_constraint = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* (%struct.powercap_zone*, i32)* }

@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"constraint_%d_\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@POWERCAP_CONSTRAINT_NAME_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_constraint_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_constraint_name(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.powercap_zone*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.powercap_zone_constraint*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.powercap_zone* @to_powercap_zone(%struct.device* %13)
  store %struct.powercap_zone* %14, %struct.powercap_zone** %9, align 8
  %15 = load i32, i32* @ENODATA, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %11, align 4
  %17 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %18 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sscanf(i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %10)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %80

26:                                               ; preds = %3
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.powercap_zone*, %struct.powercap_zone** %9, align 8
  %29 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %80

35:                                               ; preds = %26
  %36 = load %struct.powercap_zone*, %struct.powercap_zone** %9, align 8
  %37 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %36, i32 0, i32 1
  %38 = load %struct.powercap_zone_constraint*, %struct.powercap_zone_constraint** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.powercap_zone_constraint, %struct.powercap_zone_constraint* %38, i64 %40
  store %struct.powercap_zone_constraint* %41, %struct.powercap_zone_constraint** %12, align 8
  %42 = load %struct.powercap_zone_constraint*, %struct.powercap_zone_constraint** %12, align 8
  %43 = icmp ne %struct.powercap_zone_constraint* %42, null
  br i1 %43, label %44, label %78

44:                                               ; preds = %35
  %45 = load %struct.powercap_zone_constraint*, %struct.powercap_zone_constraint** %12, align 8
  %46 = getelementptr inbounds %struct.powercap_zone_constraint, %struct.powercap_zone_constraint* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %78

49:                                               ; preds = %44
  %50 = load %struct.powercap_zone_constraint*, %struct.powercap_zone_constraint** %12, align 8
  %51 = getelementptr inbounds %struct.powercap_zone_constraint, %struct.powercap_zone_constraint* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i8* (%struct.powercap_zone*, i32)*, i8* (%struct.powercap_zone*, i32)** %53, align 8
  %55 = icmp ne i8* (%struct.powercap_zone*, i32)* %54, null
  br i1 %55, label %56, label %78

56:                                               ; preds = %49
  %57 = load %struct.powercap_zone_constraint*, %struct.powercap_zone_constraint** %12, align 8
  %58 = getelementptr inbounds %struct.powercap_zone_constraint, %struct.powercap_zone_constraint* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i8* (%struct.powercap_zone*, i32)*, i8* (%struct.powercap_zone*, i32)** %60, align 8
  %62 = load %struct.powercap_zone*, %struct.powercap_zone** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i8* %61(%struct.powercap_zone* %62, i32 %63)
  store i8* %64, i8** %8, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %77

67:                                               ; preds = %56
  %68 = load i8*, i8** %7, align 8
  %69 = load i64, i64* @POWERCAP_CONSTRAINT_NAME_LEN, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @snprintf(i8* %68, i64 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  %72 = load i8*, i8** %7, align 8
  %73 = load i64, i64* @POWERCAP_CONSTRAINT_NAME_LEN, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 0, i8* %74, align 1
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @strlen(i8* %75)
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %67, %56
  br label %78

78:                                               ; preds = %77, %49, %44, %35
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %32, %23
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.powercap_zone* @to_powercap_zone(%struct.device*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
