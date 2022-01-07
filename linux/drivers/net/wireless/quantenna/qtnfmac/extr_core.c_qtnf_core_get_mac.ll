; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_core_get_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_core_get_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_wmac = type { i32 }
%struct.qtnf_bus = type { %struct.qtnf_wmac** }

@QTNF_MAX_MAC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"invalid MAC index %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"MAC%u: not initialized\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qtnf_wmac* @qtnf_core_get_mac(%struct.qtnf_bus* %0, i64 %1) #0 {
  %3 = alloca %struct.qtnf_wmac*, align 8
  %4 = alloca %struct.qtnf_bus*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qtnf_wmac*, align 8
  store %struct.qtnf_bus* %0, %struct.qtnf_bus** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.qtnf_wmac* null, %struct.qtnf_wmac** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @QTNF_MAX_MAC, align 8
  %9 = icmp uge i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %14)
  store %struct.qtnf_wmac* null, %struct.qtnf_wmac** %3, align 8
  br label %34

16:                                               ; preds = %2
  %17 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %18 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %17, i32 0, i32 0
  %19 = load %struct.qtnf_wmac**, %struct.qtnf_wmac*** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.qtnf_wmac*, %struct.qtnf_wmac** %19, i64 %20
  %22 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %21, align 8
  store %struct.qtnf_wmac* %22, %struct.qtnf_wmac** %6, align 8
  %23 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %24 = icmp ne %struct.qtnf_wmac* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  store %struct.qtnf_wmac* null, %struct.qtnf_wmac** %3, align 8
  br label %34

32:                                               ; preds = %16
  %33 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  store %struct.qtnf_wmac* %33, %struct.qtnf_wmac** %3, align 8
  br label %34

34:                                               ; preds = %32, %29, %13
  %35 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  ret %struct.qtnf_wmac* %35
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
