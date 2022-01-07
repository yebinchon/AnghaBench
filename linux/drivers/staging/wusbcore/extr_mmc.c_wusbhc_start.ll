; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_mmc.c_wusbhc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_mmc.c_wusbhc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32 (%struct.wusbhc*, i32, i32)*, i32, i32, i32*, i32*, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"cannot establish cluster reservation: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"error enabling device connections: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"error starting security in the HC: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Cannot set DNTS parameters: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"error starting wusbch: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wusbhc_start(%struct.wusbhc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  %6 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %7 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %6, i32 0, i32 5
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %10 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %16 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %22 = call i32 @wusbhc_rsv_establish(%struct.wusbhc* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %85

29:                                               ; preds = %1
  %30 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %31 = call i32 @wusbhc_devconnect_start(%struct.wusbhc* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %82

38:                                               ; preds = %29
  %39 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %40 = call i32 @wusbhc_sec_start(%struct.wusbhc* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %79

47:                                               ; preds = %38
  %48 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %49 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %48, i32 0, i32 0
  %50 = load i32 (%struct.wusbhc*, i32, i32)*, i32 (%struct.wusbhc*, i32, i32)** %49, align 8
  %51 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %52 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %53 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %56 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 %50(%struct.wusbhc* %51, i32 %54, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %47
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  br label %78

65:                                               ; preds = %47
  %66 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %67 = call i32 @wusbhc_mmc_start(%struct.wusbhc* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  br label %75

74:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %87

75:                                               ; preds = %70
  %76 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %77 = call i32 @wusbhc_sec_stop(%struct.wusbhc* %76)
  br label %78

78:                                               ; preds = %75, %61
  br label %79

79:                                               ; preds = %78, %43
  %80 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %81 = call i32 @wusbhc_devconnect_stop(%struct.wusbhc* %80)
  br label %82

82:                                               ; preds = %79, %34
  %83 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %84 = call i32 @wusbhc_rsv_terminate(%struct.wusbhc* %83)
  br label %85

85:                                               ; preds = %82, %25
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %74
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wusbhc_rsv_establish(%struct.wusbhc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @wusbhc_devconnect_start(%struct.wusbhc*) #1

declare dso_local i32 @wusbhc_sec_start(%struct.wusbhc*) #1

declare dso_local i32 @wusbhc_mmc_start(%struct.wusbhc*) #1

declare dso_local i32 @wusbhc_sec_stop(%struct.wusbhc*) #1

declare dso_local i32 @wusbhc_devconnect_stop(%struct.wusbhc*) #1

declare dso_local i32 @wusbhc_rsv_terminate(%struct.wusbhc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
