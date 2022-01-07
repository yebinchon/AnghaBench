; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ulpi.c_ulpi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ulpi.c_ulpi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.usb_phy = type { i32 }

@ULPI_PRODUCT_ID_HIGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"ULPI transceiver vendor/product ID 0x%04x/0x%04x\0A\00", align 1
@ulpi_ids = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Found %s ULPI transceiver.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_phy*)* @ulpi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ulpi_init(%struct.usb_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_phy* %0, %struct.usb_phy** %3, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %28, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %14 = load i64, i64* @ULPI_PRODUCT_ID_HIGH, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = sub nsw i64 %14, %16
  %18 = call i32 @usb_phy_io_read(%struct.usb_phy* %13, i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %77

23:                                               ; preds = %12
  %24 = load i32, i32* %8, align 4
  %25 = shl i32 %24, 8
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %9

31:                                               ; preds = %9
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 65535
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %8, align 4
  %35 = ashr i32 %34, 16
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %64, %31
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ulpi_ids, align 8
  %42 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %41)
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %39
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ulpi_ids, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @ULPI_ID(i32 %51, i32 %52)
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %44
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ulpi_ids, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %67

63:                                               ; preds = %44
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %39

67:                                               ; preds = %55, %39
  %68 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %69 = call i32 @ulpi_check_integrity(%struct.usb_phy* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %77

74:                                               ; preds = %67
  %75 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %76 = call i32 @ulpi_set_flags(%struct.usb_phy* %75)
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %74, %72, %21
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @usb_phy_io_read(%struct.usb_phy*, i64) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @ULPI_ID(i32, i32) #1

declare dso_local i32 @ulpi_check_integrity(%struct.usb_phy*) #1

declare dso_local i32 @ulpi_set_flags(%struct.usb_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
