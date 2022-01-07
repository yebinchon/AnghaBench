; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_phy_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_phy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jiffies = common dso_local global i64 0, align 8
@R_MII_MGMT_ADDRESS = common dso_local global i32 0, align 4
@R_MII_MGMT_COMMAND = common dso_local global i32 0, align 4
@O_MII_MGMT_COMMAND__rstat = common dso_local global i32 0, align 4
@R_MII_MGMT_INDICATORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Phy device read err: device busy\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@R_MII_MGMT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @xlr_phy_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlr_phy_read(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = call i64 @msecs_to_jiffies(i32 100)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i64, i64* %8, align 8
  %15 = add i64 %13, %14
  store i64 %15, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @R_MII_MGMT_ADDRESS, align 4
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %18, 8
  %20 = load i32, i32* %7, align 4
  %21 = shl i32 %20, 0
  %22 = or i32 %19, %21
  %23 = call i32 @xlr_nae_wreg(i32* %16, i32 %17, i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @R_MII_MGMT_COMMAND, align 4
  %26 = load i32, i32* @O_MII_MGMT_COMMAND__rstat, align 4
  %27 = shl i32 1, %26
  %28 = call i32 @xlr_nae_wreg(i32* %24, i32 %25, i32 %27)
  br label %29

29:                                               ; preds = %40, %3
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i64, i64* @jiffies, align 8
  store i64 %34, i64* %10, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @R_MII_MGMT_INDICATORS, align 4
  %37 = call i32 @xlr_nae_rdreg(i32* %35, i32 %36)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %44

40:                                               ; preds = %33
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @time_after(i64 %41, i64 %42)
  store i32 %43, i32* %11, align 4
  br label %29

44:                                               ; preds = %39, %29
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %58

51:                                               ; preds = %44
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @R_MII_MGMT_COMMAND, align 4
  %54 = call i32 @xlr_nae_wreg(i32* %52, i32 %53, i32 0)
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @R_MII_MGMT_STATUS, align 4
  %57 = call i32 @xlr_nae_rdreg(i32* %55, i32 %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %51, %47
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @xlr_nae_wreg(i32*, i32, i32) #1

declare dso_local i32 @xlr_nae_rdreg(i32*, i32) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
