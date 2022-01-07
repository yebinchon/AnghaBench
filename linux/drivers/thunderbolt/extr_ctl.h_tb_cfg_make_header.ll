; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.h_tb_cfg_make_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.h_tb_cfg_make_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_cfg_header = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @tb_cfg_make_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tb_cfg_make_header(i32 %0) #0 {
  %2 = alloca %struct.tb_cfg_header, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = getelementptr inbounds %struct.tb_cfg_header, %struct.tb_cfg_header* %2, i32 0, i32 0
  %5 = load i32, i32* %3, align 4
  %6 = ashr i32 %5, 32
  store i32 %6, i32* %4, align 4
  %7 = getelementptr inbounds %struct.tb_cfg_header, %struct.tb_cfg_header* %2, i32 0, i32 1
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* %7, align 4
  %9 = call i32 @tb_cfg_get_route(%struct.tb_cfg_header* %2)
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = bitcast %struct.tb_cfg_header* %2 to i64*
  %15 = load i64, i64* %14, align 4
  ret i64 %15
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @tb_cfg_get_route(%struct.tb_cfg_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
