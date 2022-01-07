; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_tb_xdomain_find_by_link_depth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_tb_xdomain_find_by_link_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_xdomain = type { i32 }
%struct.tb = type { i32 }
%struct.tb_xdomain_lookup = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tb_xdomain* @tb_xdomain_find_by_link_depth(%struct.tb* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.tb*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tb_xdomain_lookup, align 8
  %8 = alloca %struct.tb_xdomain*, align 8
  store %struct.tb* %0, %struct.tb** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = call i32 @memset(%struct.tb_xdomain_lookup* %7, i32 0, i32 16)
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds %struct.tb_xdomain_lookup, %struct.tb_xdomain_lookup* %7, i32 0, i32 1
  store i8* %10, i8** %11, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds %struct.tb_xdomain_lookup, %struct.tb_xdomain_lookup* %7, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load %struct.tb*, %struct.tb** %4, align 8
  %15 = getelementptr inbounds %struct.tb, %struct.tb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.tb_xdomain* @switch_find_xdomain(i32 %16, %struct.tb_xdomain_lookup* %7)
  store %struct.tb_xdomain* %17, %struct.tb_xdomain** %8, align 8
  %18 = load %struct.tb_xdomain*, %struct.tb_xdomain** %8, align 8
  %19 = call %struct.tb_xdomain* @tb_xdomain_get(%struct.tb_xdomain* %18)
  ret %struct.tb_xdomain* %19
}

declare dso_local i32 @memset(%struct.tb_xdomain_lookup*, i32, i32) #1

declare dso_local %struct.tb_xdomain* @switch_find_xdomain(i32, %struct.tb_xdomain_lookup*) #1

declare dso_local %struct.tb_xdomain* @tb_xdomain_get(%struct.tb_xdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
