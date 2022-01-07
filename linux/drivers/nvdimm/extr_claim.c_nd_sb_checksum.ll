; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_claim.c_nd_sb_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_claim.c_nd_sb_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_gen_sb = type { i32 }

@SZ_4K = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd_sb_checksum(%struct.nd_gen_sb* %0) #0 {
  %2 = alloca %struct.nd_gen_sb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nd_gen_sb* %0, %struct.nd_gen_sb** %2, align 8
  %5 = load i32, i32* @SZ_4K, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp ne i64 4, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUILD_BUG_ON(i32 %8)
  %10 = load i32, i32* @SZ_4K, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ne i64 4, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUILD_BUG_ON(i32 %13)
  %15 = load i32, i32* @SZ_4K, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 4, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUILD_BUG_ON(i32 %18)
  %20 = load %struct.nd_gen_sb*, %struct.nd_gen_sb** %2, align 8
  %21 = getelementptr inbounds %struct.nd_gen_sb, %struct.nd_gen_sb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  %23 = load %struct.nd_gen_sb*, %struct.nd_gen_sb** %2, align 8
  %24 = getelementptr inbounds %struct.nd_gen_sb, %struct.nd_gen_sb* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.nd_gen_sb*, %struct.nd_gen_sb** %2, align 8
  %26 = call i32 @nd_fletcher64(%struct.nd_gen_sb* %25, i32 4, i32 1)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.nd_gen_sb*, %struct.nd_gen_sb** %2, align 8
  %29 = getelementptr inbounds %struct.nd_gen_sb, %struct.nd_gen_sb* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @nd_fletcher64(%struct.nd_gen_sb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
