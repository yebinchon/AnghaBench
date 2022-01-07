; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_cdns_update_slave_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_cdns_update_slave_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_cdns = type { i32, i32 }

@SDW_MAX_DEVICES = common dso_local global i32 0, align 4
@CDNS_MCP_SLAVE_STATUS_NUM = common dso_local global i32 0, align 4
@CDNS_MCP_SLAVE_STATUS_BITS = common dso_local global i32 0, align 4
@CDNS_MCP_SLAVE_INTSTAT_RESERVED = common dso_local global i32 0, align 4
@SDW_SLAVE_RESERVED = common dso_local global i32 0, align 4
@CDNS_MCP_SLAVE_INTSTAT_ATTACHED = common dso_local global i32 0, align 4
@SDW_SLAVE_ATTACHED = common dso_local global i32 0, align 4
@CDNS_MCP_SLAVE_INTSTAT_ALERT = common dso_local global i32 0, align 4
@SDW_SLAVE_ALERT = common dso_local global i32 0, align 4
@CDNS_MCP_SLAVE_INTSTAT_NPRESENT = common dso_local global i32 0, align 4
@SDW_SLAVE_UNATTACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Slave reported multiple Status: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_cdns*, i32, i32)* @cdns_update_slave_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_update_slave_status(%struct.sdw_cdns* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdw_cdns*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sdw_cdns* %0, %struct.sdw_cdns** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @SDW_MAX_DEVICES, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 %21, 32
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = mul nuw i64 4, %18
  %26 = trunc i64 %25 to i32
  %27 = call i32 @memset(i32* %20, i32 0, i32 %26)
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %101, %3
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @SDW_MAX_DEVICES, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %104

32:                                               ; preds = %28
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @CDNS_MCP_SLAVE_STATUS_NUM, align 4
  %36 = mul nsw i32 %34, %35
  %37 = ashr i32 %33, %36
  %38 = load i32, i32* @CDNS_MCP_SLAVE_STATUS_BITS, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %32
  br label %101

43:                                               ; preds = %32
  store i32 1, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @CDNS_MCP_SLAVE_INTSTAT_RESERVED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32, i32* @SDW_SLAVE_RESERVED, align 4
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %20, i64 %51
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %48, %43
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @CDNS_MCP_SLAVE_INTSTAT_ATTACHED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i32, i32* @SDW_SLAVE_ATTACHED, align 4
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %20, i64 %63
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %60, %55
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @CDNS_MCP_SLAVE_INTSTAT_ALERT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load i32, i32* @SDW_SLAVE_ALERT, align 4
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %20, i64 %75
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %72, %67
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @CDNS_MCP_SLAVE_INTSTAT_NPRESENT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load i32, i32* @SDW_SLAVE_UNATTACHED, align 4
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %20, i64 %87
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %84, %79
  %92 = load i32, i32* %14, align 4
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load %struct.sdw_cdns*, %struct.sdw_cdns** %5, align 8
  %96 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @dev_warn_ratelimited(i32 %97, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %94, %91
  br label %101

101:                                              ; preds = %100, %42
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %13, align 4
  br label %28

104:                                              ; preds = %28
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load %struct.sdw_cdns*, %struct.sdw_cdns** %5, align 8
  %109 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %108, i32 0, i32 0
  %110 = call i32 @sdw_handle_slave_status(i32* %109, i32* %20)
  store i32 %110, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %112

111:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %112

112:                                              ; preds = %111, %107
  %113 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @dev_warn_ratelimited(i32, i8*, i32) #2

declare dso_local i32 @sdw_handle_slave_status(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
