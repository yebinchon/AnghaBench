; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_testmode.c_wl1271_tm_cmd_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_testmode.c_wl1271_tm_cmd_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.nlattr = type { i32 }

@DEBUG_TESTMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"testmode cmd configure\00", align 1
@WL1271_TM_ATTR_DATA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WL1271_TM_ATTR_IE_ID = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"testmode cmd configure failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.nlattr**)* @wl1271_tm_cmd_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_tm_cmd_configure(%struct.wl1271* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %10 = load i32, i32* @DEBUG_TESTMODE, align 4
  %11 = call i32 @wl1271_debug(i32 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %13 = load i64, i64* @WL1271_TM_ATTR_DATA, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %70

20:                                               ; preds = %2
  %21 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %22 = load i64, i64* @WL1271_TM_ATTR_IE_ID, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %70

29:                                               ; preds = %20
  %30 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %31 = load i64, i64* @WL1271_TM_ATTR_IE_ID, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = call i32 @nla_get_u8(%struct.nlattr* %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %36 = load i64, i64* @WL1271_TM_ATTR_DATA, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = call i8* @nla_data(%struct.nlattr* %38)
  store i8* %39, i8** %8, align 8
  %40 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %41 = load i64, i64* @WL1271_TM_ATTR_DATA, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %40, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = call i32 @nla_len(%struct.nlattr* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ugt i64 %46, 4
  br i1 %47, label %48, label %51

48:                                               ; preds = %29
  %49 = load i32, i32* @EMSGSIZE, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %70

51:                                               ; preds = %29
  %52 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %53 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %52, i32 0, i32 0
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @wl1271_cmd_configure(%struct.wl1271* %55, i32 %56, i8* %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %61 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %51
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @wl1271_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %70

69:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %65, %48, %26, %17
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
