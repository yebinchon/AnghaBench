; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_populate_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_populate_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_service = type { i32, i32, i32, i32, i32 }
%struct.tb_property = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.tb_property_dir* }
%struct.tb_property_dir = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"prtcid\00", align 1
@TB_PROPERTY_TYPE_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"prtcvers\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"prtcrevs\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"prtcstns\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_service*, %struct.tb_property*)* @populate_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @populate_service(%struct.tb_service* %0, %struct.tb_property* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_service*, align 8
  %5 = alloca %struct.tb_property*, align 8
  %6 = alloca %struct.tb_property_dir*, align 8
  %7 = alloca %struct.tb_property*, align 8
  store %struct.tb_service* %0, %struct.tb_service** %4, align 8
  store %struct.tb_property* %1, %struct.tb_property** %5, align 8
  %8 = load %struct.tb_property*, %struct.tb_property** %5, align 8
  %9 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.tb_property_dir*, %struct.tb_property_dir** %10, align 8
  store %struct.tb_property_dir* %11, %struct.tb_property_dir** %6, align 8
  %12 = load %struct.tb_property_dir*, %struct.tb_property_dir** %6, align 8
  %13 = load i32, i32* @TB_PROPERTY_TYPE_VALUE, align 4
  %14 = call %struct.tb_property* @tb_property_find(%struct.tb_property_dir* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %13)
  store %struct.tb_property* %14, %struct.tb_property** %7, align 8
  %15 = load %struct.tb_property*, %struct.tb_property** %7, align 8
  %16 = icmp ne %struct.tb_property* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.tb_property*, %struct.tb_property** %7, align 8
  %19 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.tb_service*, %struct.tb_service** %4, align 8
  %23 = getelementptr inbounds %struct.tb_service, %struct.tb_service* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %17, %2
  %25 = load %struct.tb_property_dir*, %struct.tb_property_dir** %6, align 8
  %26 = load i32, i32* @TB_PROPERTY_TYPE_VALUE, align 4
  %27 = call %struct.tb_property* @tb_property_find(%struct.tb_property_dir* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store %struct.tb_property* %27, %struct.tb_property** %7, align 8
  %28 = load %struct.tb_property*, %struct.tb_property** %7, align 8
  %29 = icmp ne %struct.tb_property* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.tb_property*, %struct.tb_property** %7, align 8
  %32 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.tb_service*, %struct.tb_service** %4, align 8
  %36 = getelementptr inbounds %struct.tb_service, %struct.tb_service* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %30, %24
  %38 = load %struct.tb_property_dir*, %struct.tb_property_dir** %6, align 8
  %39 = load i32, i32* @TB_PROPERTY_TYPE_VALUE, align 4
  %40 = call %struct.tb_property* @tb_property_find(%struct.tb_property_dir* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  store %struct.tb_property* %40, %struct.tb_property** %7, align 8
  %41 = load %struct.tb_property*, %struct.tb_property** %7, align 8
  %42 = icmp ne %struct.tb_property* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.tb_property*, %struct.tb_property** %7, align 8
  %45 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.tb_service*, %struct.tb_service** %4, align 8
  %49 = getelementptr inbounds %struct.tb_service, %struct.tb_service* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %43, %37
  %51 = load %struct.tb_property_dir*, %struct.tb_property_dir** %6, align 8
  %52 = load i32, i32* @TB_PROPERTY_TYPE_VALUE, align 4
  %53 = call %struct.tb_property* @tb_property_find(%struct.tb_property_dir* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  store %struct.tb_property* %53, %struct.tb_property** %7, align 8
  %54 = load %struct.tb_property*, %struct.tb_property** %7, align 8
  %55 = icmp ne %struct.tb_property* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load %struct.tb_property*, %struct.tb_property** %7, align 8
  %58 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.tb_service*, %struct.tb_service** %4, align 8
  %62 = getelementptr inbounds %struct.tb_service, %struct.tb_service* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %56, %50
  %64 = load %struct.tb_property*, %struct.tb_property** %5, align 8
  %65 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i32 @kstrdup(i32 %66, i32 %67)
  %69 = load %struct.tb_service*, %struct.tb_service** %4, align 8
  %70 = getelementptr inbounds %struct.tb_service, %struct.tb_service* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.tb_service*, %struct.tb_service** %4, align 8
  %72 = getelementptr inbounds %struct.tb_service, %struct.tb_service* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %63
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %79

78:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.tb_property* @tb_property_find(%struct.tb_property_dir*, i8*, i32) #1

declare dso_local i32 @kstrdup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
