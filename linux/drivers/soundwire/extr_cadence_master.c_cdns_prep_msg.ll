; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_cdns_prep_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_cdns_prep_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_cdns = type { i32 }
%struct.sdw_msg = type { i32, i64, i64 }

@CDNS_MCP_CMD_READ = common dso_local global i32 0, align 4
@CDNS_MCP_CMD_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid msg cmd: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_cdns*, %struct.sdw_msg*, i32*)* @cdns_prep_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_prep_msg(%struct.sdw_cdns* %0, %struct.sdw_msg* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdw_cdns*, align 8
  %6 = alloca %struct.sdw_msg*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.sdw_cdns* %0, %struct.sdw_cdns** %5, align 8
  store %struct.sdw_msg* %1, %struct.sdw_msg** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.sdw_msg*, %struct.sdw_msg** %6, align 8
  %10 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load %struct.sdw_cdns*, %struct.sdw_cdns** %5, align 8
  %15 = load %struct.sdw_msg*, %struct.sdw_msg** %6, align 8
  %16 = call i32 @cdns_program_scp_addr(%struct.sdw_cdns* %14, %struct.sdw_msg* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.sdw_msg*, %struct.sdw_msg** %6, align 8
  %21 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %45

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23, %3
  %25 = load %struct.sdw_msg*, %struct.sdw_msg** %6, align 8
  %26 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %34 [
    i32 129, label %28
    i32 128, label %31
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* @CDNS_MCP_CMD_READ, align 4
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  br label %44

31:                                               ; preds = %24
  %32 = load i32, i32* @CDNS_MCP_CMD_WRITE, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  br label %44

34:                                               ; preds = %24
  %35 = load %struct.sdw_cdns*, %struct.sdw_cdns** %5, align 8
  %36 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sdw_msg*, %struct.sdw_msg** %6, align 8
  %39 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %45

44:                                               ; preds = %31, %28
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %34, %19
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @cdns_program_scp_addr(%struct.sdw_cdns*, %struct.sdw_msg*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
