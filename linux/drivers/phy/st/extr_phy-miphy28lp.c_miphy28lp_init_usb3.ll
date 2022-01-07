; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-miphy28lp.c_miphy28lp_init_usb3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-miphy28lp.c_miphy28lp_init_usb3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.miphy28lp_phy = type { i64, i32, %struct.miphy28lp_dev* }
%struct.miphy28lp_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"usb3-up mode, addr 0x%p\0A\00", align 1
@MIPHY_CTRL_SYNC_D_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"USB3 phy setup failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.miphy28lp_phy*)* @miphy28lp_init_usb3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @miphy28lp_init_usb3(%struct.miphy28lp_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.miphy28lp_phy*, align 8
  %4 = alloca %struct.miphy28lp_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.miphy28lp_phy* %0, %struct.miphy28lp_phy** %3, align 8
  %6 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %7 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %6, i32 0, i32 2
  %8 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %7, align 8
  store %struct.miphy28lp_dev* %8, %struct.miphy28lp_dev** %4, align 8
  %9 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %10 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %15 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %115

21:                                               ; preds = %13
  %22 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %4, align 8
  %23 = getelementptr inbounds %struct.miphy28lp_dev, %struct.miphy28lp_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %26 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_info(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %30 = load i32, i32* @MIPHY_CTRL_SYNC_D_EN, align 4
  %31 = call i32 @miphy28lp_setup(%struct.miphy28lp_phy* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %21
  %35 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %4, align 8
  %36 = getelementptr inbounds %struct.miphy28lp_dev, %struct.miphy28lp_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %115

40:                                               ; preds = %21
  %41 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %42 = call i32 @miphy28lp_configure_usb3(%struct.miphy28lp_phy* %41)
  %43 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %44 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 35
  %47 = call i32 @writeb_relaxed(i32 104, i64 %46)
  %48 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %49 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 36
  %52 = call i32 @writeb_relaxed(i32 97, i64 %51)
  %53 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %54 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 38
  %57 = call i32 @writeb_relaxed(i32 104, i64 %56)
  %58 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %59 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 39
  %62 = call i32 @writeb_relaxed(i32 97, i64 %61)
  %63 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %64 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 41
  %67 = call i32 @writeb_relaxed(i32 24, i64 %66)
  %68 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %69 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 42
  %72 = call i32 @writeb_relaxed(i32 97, i64 %71)
  %73 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %74 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 104
  %77 = call i32 @writeb_relaxed(i32 103, i64 %76)
  %78 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %79 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 105
  %82 = call i32 @writeb_relaxed(i32 13, i64 %81)
  %83 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %84 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 106
  %87 = call i32 @writeb_relaxed(i32 103, i64 %86)
  %88 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %89 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 107
  %92 = call i32 @writeb_relaxed(i32 13, i64 %91)
  %93 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %94 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 108
  %97 = call i32 @writeb_relaxed(i32 103, i64 %96)
  %98 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %99 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 109
  %102 = call i32 @writeb_relaxed(i32 13, i64 %101)
  %103 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %104 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 110
  %107 = call i32 @writeb_relaxed(i32 103, i64 %106)
  %108 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %109 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 111
  %112 = call i32 @writeb_relaxed(i32 13, i64 %111)
  %113 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %114 = call i32 @miphy_is_ready(%struct.miphy28lp_phy* %113)
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %40, %34, %18
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @miphy28lp_setup(%struct.miphy28lp_phy*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @miphy28lp_configure_usb3(%struct.miphy28lp_phy*) #1

declare dso_local i32 @writeb_relaxed(i32, i64) #1

declare dso_local i32 @miphy_is_ready(%struct.miphy28lp_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
