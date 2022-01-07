; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-miphy28lp.c_miphy28lp_get_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-miphy28lp.c_miphy28lp_get_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.miphy28lp_phy = type { i64, i32, i32, %struct.TYPE_4__*, %struct.miphy28lp_dev* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.miphy28lp_dev = type { i32 }

@PHY_TYPE_SATA = common dso_local global i64 0, align 8
@PHY_TYPE_PCIE = common dso_local global i64 0, align 8
@PHY_TYPE_USB3 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PHY_TYPE_name = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [6 x i8] c"pipew\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.miphy28lp_phy*)* @miphy28lp_get_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @miphy28lp_get_addr(%struct.miphy28lp_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.miphy28lp_phy*, align 8
  %4 = alloca %struct.miphy28lp_dev*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.miphy28lp_phy* %0, %struct.miphy28lp_phy** %3, align 8
  %7 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %8 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %7, i32 0, i32 4
  %9 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %8, align 8
  store %struct.miphy28lp_dev* %9, %struct.miphy28lp_dev** %4, align 8
  %10 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %11 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %17 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PHY_TYPE_SATA, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %1
  %22 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %23 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PHY_TYPE_PCIE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %29 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PHY_TYPE_USB3, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %82

36:                                               ; preds = %27, %21, %1
  %37 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %4, align 8
  %38 = getelementptr inbounds %struct.miphy28lp_dev, %struct.miphy28lp_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.device_node*, %struct.device_node** %5, align 8
  %41 = load i8**, i8*** @PHY_TYPE_name, align 8
  %42 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %43 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PHY_TYPE_SATA, align 8
  %46 = sub nsw i64 %44, %45
  %47 = getelementptr inbounds i8*, i8** %41, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %50 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %49, i32 0, i32 2
  %51 = call i32 @miphy28lp_get_one_addr(i32 %39, %struct.device_node* %40, i8* %48, i32* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %36
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %82

56:                                               ; preds = %36
  %57 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %58 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PHY_TYPE_PCIE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %64 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PHY_TYPE_USB3, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %62, %56
  %69 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %4, align 8
  %70 = getelementptr inbounds %struct.miphy28lp_dev, %struct.miphy28lp_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.device_node*, %struct.device_node** %5, align 8
  %73 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %74 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %73, i32 0, i32 1
  %75 = call i32 @miphy28lp_get_one_addr(i32 %71, %struct.device_node* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %82

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80, %62
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %78, %54, %33
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @miphy28lp_get_one_addr(i32, %struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
