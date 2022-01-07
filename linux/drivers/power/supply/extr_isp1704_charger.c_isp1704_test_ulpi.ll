; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_isp1704_charger.c_isp1704_test_ulpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_isp1704_charger.c_isp1704_test_ulpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1704_charger = type { i32, i32 }

@ULPI_SCRATCH = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ULPI_VENDOR_ID_LOW = common dso_local global i32 0, align 4
@ULPI_VENDOR_ID_HIGH = common dso_local global i32 0, align 4
@NXP_VENDOR_ID = common dso_local global i32 0, align 4
@ULPI_PRODUCT_ID_LOW = common dso_local global i32 0, align 4
@ULPI_PRODUCT_ID_HIGH = common dso_local global i32 0, align 4
@isp170x_id = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"isp%x\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"product id %x not matching known ids\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp1704_charger*)* @isp1704_test_ulpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp1704_test_ulpi(%struct.isp1704_charger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isp1704_charger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.isp1704_charger* %0, %struct.isp1704_charger** %3, align 8
  %8 = load %struct.isp1704_charger*, %struct.isp1704_charger** %3, align 8
  %9 = load i32, i32* @ULPI_SCRATCH, align 4
  %10 = call i32 @isp1704_write(%struct.isp1704_charger* %8, i32 %9, i32 170)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %2, align 4
  br label %87

15:                                               ; preds = %1
  %16 = load %struct.isp1704_charger*, %struct.isp1704_charger** %3, align 8
  %17 = load i32, i32* @ULPI_SCRATCH, align 4
  %18 = call i32 @isp1704_read(%struct.isp1704_charger* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %87

23:                                               ; preds = %15
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 170
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %87

29:                                               ; preds = %23
  %30 = load %struct.isp1704_charger*, %struct.isp1704_charger** %3, align 8
  %31 = load i32, i32* @ULPI_VENDOR_ID_LOW, align 4
  %32 = call i32 @isp1704_read(%struct.isp1704_charger* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load %struct.isp1704_charger*, %struct.isp1704_charger** %3, align 8
  %34 = load i32, i32* @ULPI_VENDOR_ID_HIGH, align 4
  %35 = call i32 @isp1704_read(%struct.isp1704_charger* %33, i32 %34)
  %36 = shl i32 %35, 8
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @NXP_VENDOR_ID, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %87

45:                                               ; preds = %29
  %46 = load %struct.isp1704_charger*, %struct.isp1704_charger** %3, align 8
  %47 = load i32, i32* @ULPI_PRODUCT_ID_LOW, align 4
  %48 = call i32 @isp1704_read(%struct.isp1704_charger* %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load %struct.isp1704_charger*, %struct.isp1704_charger** %3, align 8
  %50 = load i32, i32* @ULPI_PRODUCT_ID_HIGH, align 4
  %51 = call i32 @isp1704_read(%struct.isp1704_charger* %49, i32 %50)
  %52 = shl i32 %51, 8
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %76, %45
  %56 = load i32, i32* %6, align 4
  %57 = load i32*, i32** @isp170x_id, align 8
  %58 = call i32 @ARRAY_SIZE(i32* %57)
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %55
  %61 = load i32, i32* %5, align 4
  %62 = load i32*, i32** @isp170x_id, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %61, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %60
  %69 = load %struct.isp1704_charger*, %struct.isp1704_charger** %3, align 8
  %70 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @sprintf(i32 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %87

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %55

79:                                               ; preds = %55
  %80 = load %struct.isp1704_charger*, %struct.isp1704_charger** %3, align 8
  %81 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %79, %68, %42, %26, %21, %13
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @isp1704_write(%struct.isp1704_charger*, i32, i32) #1

declare dso_local i32 @isp1704_read(%struct.isp1704_charger*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
