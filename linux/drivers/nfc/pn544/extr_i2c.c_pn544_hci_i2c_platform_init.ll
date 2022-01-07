; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_i2c.c_pn544_hci_i2c_platform_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_i2c.c_pn544_hci_i2c_platform_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn544_i2c_phy = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@__const.pn544_hci_i2c_platform_init.rset_cmd = private unnamed_addr constant [6 x i8] c"\05\F9\04\00\C3\E5", align 1
@.str = private unnamed_addr constant [27 x i8] c"Detecting nfc_en polarity\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Sending reset cmd\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"nfc_en polarity : active %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"Could not detect nfc_en polarity, fallback to active high\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pn544_i2c_phy*)* @pn544_hci_i2c_platform_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pn544_hci_i2c_platform_init(%struct.pn544_i2c_phy* %0) #0 {
  %2 = alloca %struct.pn544_i2c_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [6 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.pn544_i2c_phy* %0, %struct.pn544_i2c_phy** %2, align 8
  %8 = bitcast [6 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.pn544_hci_i2c_platform_init.rset_cmd, i32 0, i32 0), i64 6, i1 false)
  store i32 6, i32* %7, align 4
  %9 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %2, align 8
  %10 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 (i32*, i8*, ...) @nfc_info(i32* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %2, align 8
  %15 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @gpiod_set_value_cansleep(i32 %16, i32 0)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %75, %1
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %78

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %2, align 8
  %24 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  store i32 3, i32* %4, align 4
  br label %25

25:                                               ; preds = %73, %21
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %4, align 4
  %28 = icmp ne i32 %26, 0
  br i1 %28, label %29, label %74

29:                                               ; preds = %25
  %30 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %2, align 8
  %31 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %2, align 8
  %34 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @gpiod_set_value_cansleep(i32 %32, i32 %38)
  %40 = call i32 @usleep_range(i32 10000, i32 15000)
  %41 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %2, align 8
  %42 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %2, align 8
  %45 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @gpiod_set_value_cansleep(i32 %43, i32 %46)
  %48 = call i32 @usleep_range(i32 10000, i32 15000)
  %49 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %2, align 8
  %50 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @dev_dbg(i32* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %2, align 8
  %55 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @i2c_master_send(%struct.TYPE_2__* %56, i8* %57, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %29
  %64 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %2, align 8
  %65 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %3, align 4
  %69 = icmp eq i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %72 = call i32 (i32*, i8*, ...) @nfc_info(i32* %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  br label %84

73:                                               ; preds = %29
  br label %25

74:                                               ; preds = %25
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %18

78:                                               ; preds = %18
  %79 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %2, align 8
  %80 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i32 @nfc_err(i32* %82, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  br label %84

84:                                               ; preds = %78, %63
  %85 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %2, align 8
  %86 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %2, align 8
  %89 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @gpiod_set_value_cansleep(i32 %87, i32 %93)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @nfc_info(i32*, i8*, ...) #2

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #2

declare dso_local i32 @usleep_range(i32, i32) #2

declare dso_local i32 @dev_dbg(i32*, i8*) #2

declare dso_local i32 @i2c_master_send(%struct.TYPE_2__*, i8*, i32) #2

declare dso_local i32 @nfc_err(i32*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
