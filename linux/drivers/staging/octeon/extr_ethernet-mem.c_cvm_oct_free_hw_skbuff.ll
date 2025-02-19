; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-mem.c_cvm_oct_free_hw_skbuff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-mem.c_cvm_oct_free_hw_skbuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type opaque

@.str = private unnamed_addr constant [46 x i8] c"Freeing of pool %u had too many skbuffs (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Freeing of pool %u is missing %d skbuffs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @cvm_oct_free_hw_skbuff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvm_oct_free_hw_skbuff(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %9

9:                                                ; preds = %26, %3
  %10 = load i32, i32* %4, align 4
  %11 = call i32 (i32, ...) bitcast (i32 (...)* @cvmx_fpa_alloc to i32 (i32, ...)*)(i32 %10)
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 -8
  %19 = bitcast i8* %18 to %struct.sk_buff**
  %20 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  store %struct.sk_buff* %20, %struct.sk_buff** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %6, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = call i32 (%struct.sk_buff*, ...) bitcast (i32 (...)* @dev_kfree_skb to i32 (%struct.sk_buff*, ...)*)(%struct.sk_buff* %23)
  br label %25

25:                                               ; preds = %16, %9
  br label %26

26:                                               ; preds = %25
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %9, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i8*, i32, i32, ...) bitcast (i32 (...)* @pr_warn to i32 (i8*, i32, i32, ...)*)(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  br label %44

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i8*, i32, i32, ...) bitcast (i32 (...)* @pr_warn to i32 (i8*, i32, i32, ...)*)(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %36
  br label %44

44:                                               ; preds = %43, %32
  ret void
}

declare dso_local i32 @cvmx_fpa_alloc(...) #1

declare dso_local i32 @dev_kfree_skb(...) #1

declare dso_local i32 @pr_warn(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
