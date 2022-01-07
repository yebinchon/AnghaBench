; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/net/extr_net.c_pms_is_mamac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/net/extr_net.c_pms_is_mamac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MDP_HDR_LEN = common dso_local global i64 0, align 8
@PMS_FIFONO = common dso_local global i32 0, align 4
@PMS_FIFONO_MDP = common dso_local global i64 0, align 8
@PMS_TELID = common dso_local global i32 0, align 4
@PMS_TELID_UNSEGM_MAMAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @pms_is_mamac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pms_is_mamac(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @MDP_HDR_LEN, align 8
  %7 = icmp sgt i64 %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = load i32, i32* @PMS_FIFONO, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 3
  %12 = load i8, i8* %11, align 1
  %13 = call i64 @EXTRACT_BIT_SET(i32 %9, i8 signext %12)
  %14 = load i64, i64* @PMS_FIFONO_MDP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %8
  %17 = load i32, i32* @PMS_TELID, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 14
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @EXTRACT_BIT_SET(i32 %17, i8 signext %20)
  %22 = load i64, i64* @PMS_TELID_UNSEGM_MAMAC, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %16, %8, %2
  %25 = phi i1 [ false, %8 ], [ false, %2 ], [ %23, %16 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local i64 @EXTRACT_BIT_SET(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
