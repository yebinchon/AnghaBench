; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/net/extr_net.c_skb_to_mamac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/net/extr_net.c_skb_to_mamac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32*, i64 }
%struct.mbo = type { i32*, i32 }

@skb_to_mamac.broadcast = internal constant [2 x i32] [i32 3, i32 255], align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@MDP_HDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"drop: too small buffer! (%d for %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"drop: too small packet! (%d)\0A\00", align 1
@PMHL = common dso_local global i32 0, align 4
@PMS_FIFONO_MDP = common dso_local global i32 0, align 4
@PMS_FIFONO_SHIFT = common dso_local global i32 0, align 4
@PMS_MSGTYPE_DATA = common dso_local global i32 0, align 4
@PMS_DEF_PRIO = common dso_local global i32 0, align 4
@PMS_TELID_UNSEGM_MAMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.mbo*)* @skb_to_mamac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skb_to_mamac(%struct.sk_buff* %0, %struct.mbo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.mbo*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.mbo* %1, %struct.mbo** %5, align 8
  %11 = load %struct.mbo*, %struct.mbo** %5, align 8
  %12 = getelementptr inbounds %struct.mbo, %struct.mbo* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  store i32* %17, i32** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 12
  store i32* %21, i32** %8, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ETH_HLEN, align 8
  %26 = sub nsw i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @MDP_HDR_LEN, align 4
  %30 = add i32 %28, %29
  store i32 %30, i32* %10, align 4
  %31 = load %struct.mbo*, %struct.mbo** %5, align 8
  %32 = getelementptr inbounds %struct.mbo, %struct.mbo* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %2
  %37 = load %struct.mbo*, %struct.mbo** %5, align 8
  %38 = getelementptr inbounds %struct.mbo, %struct.mbo* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = zext i32 %39 to i64
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %40, i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %155

45:                                               ; preds = %2
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ETH_HLEN, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %155

58:                                               ; preds = %45
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 255
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 255
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @skb_to_mamac.broadcast, i64 0, i64 0), i32** %7, align 8
  br label %69

69:                                               ; preds = %68, %63, %58
  %70 = load i32, i32* %10, align 4
  %71 = sub i32 %70, 2
  %72 = call i32 @HB(i32 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %6, align 8
  store i32 %72, i32* %73, align 4
  %75 = load i32, i32* %10, align 4
  %76 = sub i32 %75, 2
  %77 = call i8* @LB(i32 %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %6, align 8
  store i32 %78, i32* %79, align 4
  %81 = load i32, i32* @PMHL, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %6, align 8
  store i32 %81, i32* %82, align 4
  %84 = load i32, i32* @PMS_FIFONO_MDP, align 4
  %85 = load i32, i32* @PMS_FIFONO_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* @PMS_MSGTYPE_DATA, align 4
  %88 = or i32 %86, %87
  %89 = load i32*, i32** %6, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %6, align 8
  store i32 %88, i32* %89, align 4
  %91 = load i32, i32* @PMS_DEF_PRIO, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %6, align 8
  store i32 %91, i32* %92, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %6, align 8
  store i32 %96, i32* %97, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %6, align 8
  store i32 %101, i32* %102, align 4
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %6, align 8
  store i32 0, i32* %104, align 4
  %106 = load i32, i32* %9, align 4
  %107 = add i32 %106, 6
  %108 = call i32 @HB(i32 %107)
  %109 = load i32*, i32** %6, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %6, align 8
  store i32 %108, i32* %109, align 4
  %111 = load i32, i32* %9, align 4
  %112 = add i32 %111, 6
  %113 = call i8* @LB(i32 %112)
  %114 = ptrtoint i8* %113 to i32
  %115 = load i32*, i32** %6, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %6, align 8
  store i32 %114, i32* %115, align 4
  %117 = load i32*, i32** %8, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %6, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %6, align 8
  store i32 %119, i32* %120, align 4
  %122 = load i32*, i32** %8, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %6, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %6, align 8
  store i32 %124, i32* %125, align 4
  %127 = load i32*, i32** %6, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %6, align 8
  store i32 0, i32* %127, align 4
  %129 = load i32*, i32** %6, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %6, align 8
  store i32 0, i32* %129, align 4
  %131 = load i32, i32* @PMS_TELID_UNSEGM_MAMAC, align 4
  %132 = shl i32 %131, 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @HB(i32 %133)
  %135 = or i32 %132, %134
  %136 = load i32*, i32** %6, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %6, align 8
  store i32 %135, i32* %136, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i8* @LB(i32 %138)
  %140 = ptrtoint i8* %139 to i32
  %141 = load i32*, i32** %6, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %6, align 8
  store i32 %140, i32* %141, align 4
  %143 = load i32*, i32** %6, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* @ETH_HLEN, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = ptrtoint i32* %148 to i64
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @memcpy(i32* %143, i64 %149, i32 %150)
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.mbo*, %struct.mbo** %5, align 8
  %154 = getelementptr inbounds %struct.mbo, %struct.mbo* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 8
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %69, %51, %36
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @pr_err(i8*, i64, ...) #1

declare dso_local i32 @HB(i32) #1

declare dso_local i8* @LB(i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
