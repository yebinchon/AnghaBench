; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_populate_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_populate_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_xdomain = type { i32*, i32*, i32, i32 }
%struct.tb_property_dir = type { i32 }
%struct.tb_property = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"deviceid\00", align 1
@TB_PROPERTY_TYPE_VALUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"vendorid\00", align 1
@TB_PROPERTY_TYPE_TEXT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_xdomain*, %struct.tb_property_dir*)* @populate_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @populate_properties(%struct.tb_xdomain* %0, %struct.tb_property_dir* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_xdomain*, align 8
  %5 = alloca %struct.tb_property_dir*, align 8
  %6 = alloca %struct.tb_property*, align 8
  store %struct.tb_xdomain* %0, %struct.tb_xdomain** %4, align 8
  store %struct.tb_property_dir* %1, %struct.tb_property_dir** %5, align 8
  %7 = load %struct.tb_property_dir*, %struct.tb_property_dir** %5, align 8
  %8 = load i32, i32* @TB_PROPERTY_TYPE_VALUE, align 4
  %9 = call %struct.tb_property* @tb_property_find(%struct.tb_property_dir* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %8)
  store %struct.tb_property* %9, %struct.tb_property** %6, align 8
  %10 = load %struct.tb_property*, %struct.tb_property** %6, align 8
  %11 = icmp ne %struct.tb_property* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %81

15:                                               ; preds = %2
  %16 = load %struct.tb_property*, %struct.tb_property** %6, align 8
  %17 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tb_xdomain*, %struct.tb_xdomain** %4, align 8
  %21 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.tb_property_dir*, %struct.tb_property_dir** %5, align 8
  %23 = load i32, i32* @TB_PROPERTY_TYPE_VALUE, align 4
  %24 = call %struct.tb_property* @tb_property_find(%struct.tb_property_dir* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  store %struct.tb_property* %24, %struct.tb_property** %6, align 8
  %25 = load %struct.tb_property*, %struct.tb_property** %6, align 8
  %26 = icmp ne %struct.tb_property* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %15
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %81

30:                                               ; preds = %15
  %31 = load %struct.tb_property*, %struct.tb_property** %6, align 8
  %32 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.tb_xdomain*, %struct.tb_xdomain** %4, align 8
  %36 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.tb_xdomain*, %struct.tb_xdomain** %4, align 8
  %38 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @kfree(i32* %39)
  %41 = load %struct.tb_xdomain*, %struct.tb_xdomain** %4, align 8
  %42 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.tb_xdomain*, %struct.tb_xdomain** %4, align 8
  %44 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @kfree(i32* %45)
  %47 = load %struct.tb_xdomain*, %struct.tb_xdomain** %4, align 8
  %48 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  %49 = load %struct.tb_property_dir*, %struct.tb_property_dir** %5, align 8
  %50 = load i32, i32* @TB_PROPERTY_TYPE_TEXT, align 4
  %51 = call %struct.tb_property* @tb_property_find(%struct.tb_property_dir* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %50)
  store %struct.tb_property* %51, %struct.tb_property** %6, align 8
  %52 = load %struct.tb_property*, %struct.tb_property** %6, align 8
  %53 = icmp ne %struct.tb_property* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %30
  %55 = load %struct.tb_property*, %struct.tb_property** %6, align 8
  %56 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @kstrdup(i32 %58, i32 %59)
  %61 = bitcast i8* %60 to i32*
  %62 = load %struct.tb_xdomain*, %struct.tb_xdomain** %4, align 8
  %63 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %62, i32 0, i32 1
  store i32* %61, i32** %63, align 8
  br label %64

64:                                               ; preds = %54, %30
  %65 = load %struct.tb_property_dir*, %struct.tb_property_dir** %5, align 8
  %66 = load i32, i32* @TB_PROPERTY_TYPE_TEXT, align 4
  %67 = call %struct.tb_property* @tb_property_find(%struct.tb_property_dir* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  store %struct.tb_property* %67, %struct.tb_property** %6, align 8
  %68 = load %struct.tb_property*, %struct.tb_property** %6, align 8
  %69 = icmp ne %struct.tb_property* %68, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = load %struct.tb_property*, %struct.tb_property** %6, align 8
  %72 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i8* @kstrdup(i32 %74, i32 %75)
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.tb_xdomain*, %struct.tb_xdomain** %4, align 8
  %79 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %78, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  br label %80

80:                                               ; preds = %70, %64
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %27, %12
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.tb_property* @tb_property_find(%struct.tb_property_dir*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i8* @kstrdup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
