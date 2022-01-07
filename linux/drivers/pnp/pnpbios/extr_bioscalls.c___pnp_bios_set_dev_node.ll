; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/pnpbios/extr_bioscalls.c___pnp_bios_set_dev_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/pnpbios/extr_bioscalls.c___pnp_bios_set_dev_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_bios_node = type { i32 }

@PNP_FUNCTION_NOT_SUPPORTED = common dso_local global i32 0, align 4
@pnpbios_dont_use_current_config = common dso_local global i64 0, align 8
@PNP_SET_SYS_DEV_NODE = common dso_local global i32 0, align 4
@PNP_TS1 = common dso_local global i32 0, align 4
@PNP_DS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8, %struct.pnp_bios_node*)* @__pnp_bios_set_dev_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pnp_bios_set_dev_node(i32 %0, i8 signext %1, %struct.pnp_bios_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.pnp_bios_node*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8 %1, i8* %6, align 1
  store %struct.pnp_bios_node* %2, %struct.pnp_bios_node** %7, align 8
  %9 = call i32 (...) @pnp_bios_present()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @PNP_FUNCTION_NOT_SUPPORTED, align 4
  store i32 %12, i32* %4, align 4
  br label %34

13:                                               ; preds = %3
  %14 = load i8, i8* %6, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* @pnpbios_dont_use_current_config, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @PNP_FUNCTION_NOT_SUPPORTED, align 4
  store i32 %20, i32* %4, align 4
  br label %34

21:                                               ; preds = %16, %13
  %22 = load i32, i32* @PNP_SET_SYS_DEV_NODE, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @PNP_TS1, align 4
  %25 = load i8, i8* %6, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 2, i32 1
  %30 = load i32, i32* @PNP_DS, align 4
  %31 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %7, align 8
  %32 = call i32 @call_pnp_bios(i32 %22, i32 %23, i32 0, i32 %24, i32 %29, i32 %30, i32 0, i32 0, %struct.pnp_bios_node* %31, i32 65536, i32* null, i32 0)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %21, %19, %11
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @pnp_bios_present(...) #1

declare dso_local i32 @call_pnp_bios(i32, i32, i32, i32, i32, i32, i32, i32, %struct.pnp_bios_node*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
