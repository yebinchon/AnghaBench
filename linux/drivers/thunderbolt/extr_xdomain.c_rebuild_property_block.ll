; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_rebuild_property_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_rebuild_property_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xdomain_property_dir = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xdomain_property_block = common dso_local global i32* null, align 8
@xdomain_property_block_len = common dso_local global i32 0, align 4
@xdomain_property_block_gen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rebuild_property_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebuild_property_block() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @xdomain_property_dir, align 4
  %6 = call i32 @tb_property_format_dir(i32 %5, i32* null, i32 0)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %1, align 4
  br label %39

11:                                               ; preds = %0
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32* @kcalloc(i32 %13, i32 4, i32 %14)
  store i32* %15, i32** %2, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %1, align 4
  br label %39

21:                                               ; preds = %11
  %22 = load i32, i32* @xdomain_property_dir, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @tb_property_format_dir(i32 %22, i32* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @kfree(i32* %29)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %1, align 4
  br label %39

32:                                               ; preds = %21
  %33 = load i32*, i32** @xdomain_property_block, align 8
  %34 = call i32 @kfree(i32* %33)
  %35 = load i32*, i32** %2, align 8
  store i32* %35, i32** @xdomain_property_block, align 8
  %36 = load i32, i32* %3, align 4
  store i32 %36, i32* @xdomain_property_block_len, align 4
  %37 = load i32, i32* @xdomain_property_block_gen, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @xdomain_property_block_gen, align 4
  store i32 0, i32* %1, align 4
  br label %39

39:                                               ; preds = %32, %28, %18, %9
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32 @tb_property_format_dir(i32, i32*, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
