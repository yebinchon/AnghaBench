; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_phy_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jiffies = common dso_local global i64 0, align 8
@R_MII_MGMT_ADDRESS = common dso_local global i32 0, align 4
@R_MII_MGMT_WRITE_DATA = common dso_local global i32 0, align 4
@R_MII_MGMT_INDICATORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Phy device write err: device busy\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i64)* @xlr_phy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlr_phy_write(i32* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = call i64 @msecs_to_jiffies(i32 100)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i64, i64* %10, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @R_MII_MGMT_ADDRESS, align 4
  %20 = load i32, i32* %7, align 4
  %21 = shl i32 %20, 8
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @xlr_nae_wreg(i32* %18, i32 %19, i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @R_MII_MGMT_WRITE_DATA, align 4
  %27 = load i64, i64* %9, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @xlr_nae_wreg(i32* %25, i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %41, %4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i64, i64* @jiffies, align 8
  store i64 %35, i64* %12, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* @R_MII_MGMT_INDICATORS, align 4
  %38 = call i64 @xlr_nae_rdreg(i32* %36, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %45

41:                                               ; preds = %34
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @time_after(i64 %42, i64 %43)
  store i32 %44, i32* %13, align 4
  br label %30

45:                                               ; preds = %40, %30
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %53

52:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %48
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @xlr_nae_wreg(i32*, i32, i32) #1

declare dso_local i64 @xlr_nae_rdreg(i32*, i32) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
