; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_ep_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_ep_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_dev = type { i32, %struct.ast_vhub_ep** }
%struct.ast_vhub_ep = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"GET_STATUS(ep%d)\0A\00", align 1
@AST_VHUB_NUM_GEN_EPs = common dso_local global i32 0, align 4
@std_req_stall = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_ENDPOINT_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ast_vhub_dev*, i32, i32)* @ast_vhub_ep_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_vhub_ep_status(%struct.ast_vhub_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ast_vhub_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ast_vhub_ep*, align 8
  %10 = alloca i32, align 4
  store %struct.ast_vhub_dev* %0, %struct.ast_vhub_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @DDBG(%struct.ast_vhub_dev* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @AST_VHUB_NUM_GEN_EPs, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @std_req_stall, align 4
  store i32 %21, i32* %4, align 4
  br label %88

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %83

25:                                               ; preds = %22
  %26 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %5, align 8
  %27 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %26, i32 0, i32 1
  %28 = load %struct.ast_vhub_ep**, %struct.ast_vhub_ep*** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %28, i64 %31
  %33 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %32, align 8
  store %struct.ast_vhub_ep* %33, %struct.ast_vhub_ep** %9, align 8
  %34 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %35 = icmp ne %struct.ast_vhub_ep* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* @std_req_stall, align 4
  store i32 %37, i32* %4, align 4
  br label %88

38:                                               ; preds = %25
  %39 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %40 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %38
  %45 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %46 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %44
  %51 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %52 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %50
  %57 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %58 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @USB_DIR_IN, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = icmp ne i32 %60, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %56, %50, %44, %38
  %70 = load i32, i32* @std_req_stall, align 4
  store i32 %70, i32* %4, align 4
  br label %88

71:                                               ; preds = %56
  %72 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %73 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load i32, i32* @USB_ENDPOINT_HALT, align 4
  %79 = shl i32 1, %78
  %80 = load i32, i32* %10, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %77, %71
  br label %83

83:                                               ; preds = %82, %22
  %84 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %5, align 8
  %85 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @ast_vhub_simple_reply(i32* %85, i32 %86, i32 0)
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %83, %69, %36, %20
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @DDBG(%struct.ast_vhub_dev*, i8*, i32) #1

declare dso_local i32 @ast_vhub_simple_reply(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
