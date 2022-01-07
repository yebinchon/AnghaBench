; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_ep_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_ep_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_dev = type { %struct.ast_vhub_ep** }
%struct.ast_vhub_ep = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s_FEATURE(ep%d val=%02x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@std_req_complete = common dso_local global i32 0, align 4
@AST_VHUB_NUM_GEN_EPs = common dso_local global i32 0, align 4
@std_req_stall = common dso_local global i32 0, align 4
@USB_ENDPOINT_HALT = common dso_local global i32 0, align 4
@std_req_driver = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"%s stall on EP %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"setting\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"clearing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ast_vhub_dev*, i32, i32, i32)* @ast_vhub_ep_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_vhub_ep_feature(%struct.ast_vhub_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ast_vhub_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ast_vhub_ep*, align 8
  %11 = alloca i32, align 4
  store %struct.ast_vhub_dev* %0, %struct.ast_vhub_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %11, align 4
  %15 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 (%struct.ast_vhub_dev*, i8*, i8*, i32, ...) @DDBG(%struct.ast_vhub_dev* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %11, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @std_req_complete, align 4
  store i32 %26, i32* %5, align 4
  br label %114

27:                                               ; preds = %4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @AST_VHUB_NUM_GEN_EPs, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  %32 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %33 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %32, i32 0, i32 0
  %34 = load %struct.ast_vhub_ep**, %struct.ast_vhub_ep*** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %34, i64 %37
  %39 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %38, align 8
  %40 = icmp ne %struct.ast_vhub_ep* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %31, %27
  %42 = load i32, i32* @std_req_stall, align 4
  store i32 %42, i32* %5, align 4
  br label %114

43:                                               ; preds = %31
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @USB_ENDPOINT_HALT, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @std_req_driver, align 4
  store i32 %48, i32* %5, align 4
  br label %114

49:                                               ; preds = %43
  %50 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %51 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %50, i32 0, i32 0
  %52 = load %struct.ast_vhub_ep**, %struct.ast_vhub_ep*** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %52, i64 %55
  %57 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %56, align 8
  store %struct.ast_vhub_ep* %57, %struct.ast_vhub_ep** %10, align 8
  %58 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %10, align 8
  %59 = icmp ne %struct.ast_vhub_ep* %58, null
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @WARN_ON(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %49
  %65 = load i32, i32* @std_req_stall, align 4
  store i32 %65, i32* %5, align 4
  br label %114

66:                                               ; preds = %49
  %67 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %10, align 8
  %68 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %66
  %73 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %10, align 8
  %74 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %72
  %79 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %10, align 8
  %80 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %78
  %85 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %10, align 8
  %86 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @USB_DIR_IN, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = icmp ne i32 %88, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %84, %78, %72, %66
  %98 = load i32, i32* @std_req_stall, align 4
  store i32 %98, i32* %5, align 4
  br label %114

99:                                               ; preds = %84
  %100 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %105 = load i32, i32* %11, align 4
  %106 = call i32 (%struct.ast_vhub_dev*, i8*, i8*, i32, ...) @DDBG(%struct.ast_vhub_dev* %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %104, i32 %105)
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %10, align 8
  %109 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 4
  %111 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %10, align 8
  %112 = call i32 @ast_vhub_update_epn_stall(%struct.ast_vhub_ep* %111)
  %113 = load i32, i32* @std_req_complete, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %99, %97, %64, %47, %41, %25
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @DDBG(%struct.ast_vhub_dev*, i8*, i8*, i32, ...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ast_vhub_update_epn_stall(%struct.ast_vhub_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
