; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/net/extr_net.c_skb_to_mep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/net/extr_net.c_skb_to_mep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.mbo = type { i32, i32* }

@MEP_HDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"drop: too small buffer! (%d for %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PMHL = common dso_local global i32 0, align 4
@PMS_FIFONO_MEP = common dso_local global i32 0, align 4
@PMS_FIFONO_SHIFT = common dso_local global i32 0, align 4
@PMS_MSGTYPE_DATA = common dso_local global i32 0, align 4
@MEP_DEF_RETRY = common dso_local global i32 0, align 4
@PMS_RETRY_SHIFT = common dso_local global i32 0, align 4
@PMS_DEF_PRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.mbo*)* @skb_to_mep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skb_to_mep(%struct.sk_buff* %0, %struct.mbo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.mbo*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.mbo* %1, %struct.mbo** %5, align 8
  %8 = load %struct.mbo*, %struct.mbo** %5, align 8
  %9 = getelementptr inbounds %struct.mbo, %struct.mbo* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MEP_HDR_LEN, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.mbo*, %struct.mbo** %5, align 8
  %17 = getelementptr inbounds %struct.mbo, %struct.mbo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.mbo*, %struct.mbo** %5, align 8
  %23 = getelementptr inbounds %struct.mbo, %struct.mbo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %74

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  %31 = sub i32 %30, 2
  %32 = call i32 @HB(i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sub i32 %35, 2
  %37 = call i32 @LB(i32 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  %40 = load i32, i32* @PMHL, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  %43 = load i32, i32* @PMS_FIFONO_MEP, align 4
  %44 = load i32, i32* @PMS_FIFONO_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* @PMS_MSGTYPE_DATA, align 4
  %47 = or i32 %45, %46
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  %50 = load i32, i32* @MEP_DEF_RETRY, align 4
  %51 = load i32, i32* @PMS_RETRY_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* @PMS_DEF_PRIO, align 4
  %54 = or i32 %52, %53
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %6, align 8
  store i32 0, i32* %57, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %6, align 8
  store i32 0, i32* %59, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %6, align 8
  store i32 0, i32* %61, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memcpy(i32* %63, i32 %66, i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.mbo*, %struct.mbo** %5, align 8
  %73 = getelementptr inbounds %struct.mbo, %struct.mbo* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %29, %21
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @HB(i32) #1

declare dso_local i32 @LB(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
