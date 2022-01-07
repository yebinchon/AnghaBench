; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinmux-aspeed.c_aspeed_sig_desc_print_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinmux-aspeed.c_aspeed_sig_desc_print_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_sig_desc = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Want %s%X[0x%08X]=0x%X, got 0x%X from 0x%08X\0A\00", align 1
@aspeed_pinmux_ips = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aspeed_sig_desc*, i32, i32)* @aspeed_sig_desc_print_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_sig_desc_print_val(%struct.aspeed_sig_desc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.aspeed_sig_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aspeed_sig_desc* %0, %struct.aspeed_sig_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** @aspeed_pinmux_ips, align 8
  %8 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %4, align 8
  %9 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %4, align 8
  %14 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %4, align 8
  %17 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %4, align 8
  %23 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  br label %29

25:                                               ; preds = %3
  %26 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %4, align 8
  %27 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i32 [ %24, %21 ], [ %28, %25 ]
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %4, align 8
  %33 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %31, %34
  %36 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %4, align 8
  %37 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @__ffs(i32 %38)
  %40 = ashr i32 %35, %39
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18, i32 %30, i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
