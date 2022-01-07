; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_mac_init_single_band.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_mac_init_single_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }
%struct.qtnf_wmac = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"MAC%u: band %u: failed to get chans info: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.qtnf_wmac*, i32)* @qtnf_mac_init_single_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_mac_init_single_band(%struct.wiphy* %0, %struct.qtnf_wmac* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.qtnf_wmac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.qtnf_wmac* %1, %struct.qtnf_wmac** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.TYPE_4__* @kzalloc(i32 4, i32 %9)
  %11 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %12 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %13, i64 %15
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %16, align 8
  %17 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %18 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %19, i64 %21
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %66

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %31 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %32, i64 %34
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %29, i32* %37, align 4
  %38 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %39 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %40 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %41, i64 %43
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = call i32 @qtnf_cmd_band_info_get(%struct.qtnf_wmac* %38, %struct.TYPE_4__* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %28
  %50 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %51 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %66

57:                                               ; preds = %28
  %58 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %59 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %60, i64 %62
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = call i32 @qtnf_band_init_rates(%struct.TYPE_4__* %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %57, %49, %25
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_4__* @kzalloc(i32, i32) #1

declare dso_local i32 @qtnf_cmd_band_info_get(%struct.qtnf_wmac*, %struct.TYPE_4__*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @qtnf_band_init_rates(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
